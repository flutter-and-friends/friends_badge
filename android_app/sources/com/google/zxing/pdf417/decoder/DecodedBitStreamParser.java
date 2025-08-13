package com.google.zxing.pdf417.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.pdf417.PDF417ResultMetadata;
import java.io.ByteArrayOutputStream;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.util.Arrays;
import kotlin.text.Typography;

/* loaded from: classes.dex */
final class DecodedBitStreamParser {

    /* renamed from: $SWITCH_TABLE$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode */
    private static /* synthetic */ int[] f386xca07ee0 = null;

    /* renamed from: AL */
    private static final int f387AL = 28;

    /* renamed from: AS */
    private static final int f388AS = 27;
    private static final int BEGIN_MACRO_PDF417_CONTROL_BLOCK = 928;
    private static final int BEGIN_MACRO_PDF417_OPTIONAL_FIELD = 923;
    private static final int BYTE_COMPACTION_MODE_LATCH = 901;
    private static final int BYTE_COMPACTION_MODE_LATCH_6 = 924;
    private static final int ECI_CHARSET = 927;
    private static final int ECI_GENERAL_PURPOSE = 926;
    private static final int ECI_USER_DEFINED = 925;

    /* renamed from: LL */
    private static final int f389LL = 27;
    private static final int MACRO_PDF417_TERMINATOR = 922;
    private static final int MAX_NUMERIC_CODEWORDS = 15;

    /* renamed from: ML */
    private static final int f390ML = 28;
    private static final int MODE_SHIFT_TO_BYTE_COMPACTION_MODE = 913;
    private static final int NUMBER_OF_SEQUENCE_CODEWORDS = 2;
    private static final int NUMERIC_COMPACTION_MODE_LATCH = 902;
    private static final int PAL = 29;

    /* renamed from: PL */
    private static final int f391PL = 25;

    /* renamed from: PS */
    private static final int f392PS = 29;
    private static final int TEXT_COMPACTION_MODE_LATCH = 900;
    private static final char[] PUNCT_CHARS = {';', Typography.less, Typography.greater, '@', '[', '\\', ']', '_', '`', '~', '!', '\r', '\t', ',', ':', '\n', '-', '.', Typography.dollar, '/', Typography.quote, '|', '*', '(', ')', '?', '{', '}', '\''};
    private static final char[] MIXED_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', Typography.amp, '\r', '\t', ',', ':', '#', '-', '.', Typography.dollar, '/', '+', '%', '*', '=', '^'};
    private static final Charset DEFAULT_ENCODING = Charset.forName("ISO-8859-1");
    private static final BigInteger[] EXP900 = new BigInteger[16];

    private enum Mode {
        ALPHA,
        LOWER,
        MIXED,
        PUNCT,
        ALPHA_SHIFT,
        PUNCT_SHIFT;

        /* renamed from: values, reason: to resolve conflict with enum method */
        public static Mode[] valuesCustom() {
            Mode[] modeArrValuesCustom = values();
            int length = modeArrValuesCustom.length;
            Mode[] modeArr = new Mode[length];
            System.arraycopy(modeArrValuesCustom, 0, modeArr, 0, length);
            return modeArr;
        }
    }

    /* renamed from: $SWITCH_TABLE$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode */
    static /* synthetic */ int[] m307xca07ee0() {
        int[] iArr = f386xca07ee0;
        if (iArr != null) {
            return iArr;
        }
        int[] iArr2 = new int[Mode.valuesCustom().length];
        try {
            iArr2[Mode.ALPHA.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr2[Mode.ALPHA_SHIFT.ordinal()] = 5;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr2[Mode.LOWER.ordinal()] = 2;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr2[Mode.MIXED.ordinal()] = 3;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr2[Mode.PUNCT.ordinal()] = 4;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr2[Mode.PUNCT_SHIFT.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        f386xca07ee0 = iArr2;
        return iArr2;
    }

    static {
        EXP900[0] = BigInteger.ONE;
        BigInteger bigIntegerValueOf = BigInteger.valueOf(900L);
        EXP900[1] = bigIntegerValueOf;
        int i = 2;
        while (true) {
            BigInteger[] bigIntegerArr = EXP900;
            if (i >= bigIntegerArr.length) {
                return;
            }
            bigIntegerArr[i] = bigIntegerArr[i - 1].multiply(bigIntegerValueOf);
            i++;
        }
    }

    private DecodedBitStreamParser() {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static com.google.zxing.common.DecoderResult decode(int[] r7, java.lang.String r8) throws com.google.zxing.FormatException {
        /*
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            int r1 = r7.length
            r2 = 2
            int r1 = r1 * 2
            r0.<init>(r1)
            java.nio.charset.Charset r1 = com.google.zxing.pdf417.decoder.DecodedBitStreamParser.DEFAULT_ENCODING
            r3 = 1
            r3 = r7[r3]
            com.google.zxing.pdf417.PDF417ResultMetadata r4 = new com.google.zxing.pdf417.PDF417ResultMetadata
            r4.<init>()
        L13:
            r5 = 0
            r5 = r7[r5]
            if (r2 < r5) goto L31
            int r7 = r0.length()
            if (r7 == 0) goto L2c
            com.google.zxing.common.DecoderResult r7 = new com.google.zxing.common.DecoderResult
            java.lang.String r0 = r0.toString()
            r1 = 0
            r7.<init>(r1, r0, r1, r8)
            r7.setOther(r4)
            return r7
        L2c:
            com.google.zxing.FormatException r7 = com.google.zxing.FormatException.getFormatInstance()
            throw r7
        L31:
            r5 = 913(0x391, float:1.28E-42)
            if (r3 == r5) goto L75
            switch(r3) {
                case 900: goto L70;
                case 901: goto L6b;
                case 902: goto L66;
                default: goto L38;
            }
        L38:
            switch(r3) {
                case 922: goto L61;
                case 923: goto L61;
                case 924: goto L6b;
                case 925: goto L5e;
                case 926: goto L5b;
                case 927: goto L47;
                case 928: goto L42;
                default: goto L3b;
            }
        L3b:
            int r2 = r2 + (-1)
            int r2 = textCompaction(r7, r2, r0)
            goto L7e
        L42:
            int r2 = decodeMacroBlock(r7, r2, r4)
            goto L7e
        L47:
            int r1 = r2 + 1
            r2 = r7[r2]
            com.google.zxing.common.CharacterSetECI r2 = com.google.zxing.common.CharacterSetECI.getCharacterSetECIByValue(r2)
            java.lang.String r2 = r2.name()
            java.nio.charset.Charset r2 = java.nio.charset.Charset.forName(r2)
            r6 = r2
            r2 = r1
            r1 = r6
            goto L7e
        L5b:
            int r2 = r2 + 2
            goto L7e
        L5e:
            int r2 = r2 + 1
            goto L7e
        L61:
            com.google.zxing.FormatException r7 = com.google.zxing.FormatException.getFormatInstance()
            throw r7
        L66:
            int r2 = numericCompaction(r7, r2, r0)
            goto L7e
        L6b:
            int r2 = byteCompaction(r3, r7, r1, r2, r0)
            goto L7e
        L70:
            int r2 = textCompaction(r7, r2, r0)
            goto L7e
        L75:
            int r3 = r2 + 1
            r2 = r7[r2]
            char r2 = (char) r2
            r0.append(r2)
            r2 = r3
        L7e:
            int r3 = r7.length
            if (r2 >= r3) goto L89
            int r3 = r2 + 1
            r2 = r7[r2]
            r6 = r3
            r3 = r2
            r2 = r6
            goto L13
        L89:
            com.google.zxing.FormatException r7 = com.google.zxing.FormatException.getFormatInstance()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.decoder.DecodedBitStreamParser.decode(int[], java.lang.String):com.google.zxing.common.DecoderResult");
    }

    private static int decodeMacroBlock(int[] iArr, int i, PDF417ResultMetadata pDF417ResultMetadata) throws FormatException {
        if (i + 2 > iArr[0]) {
            throw FormatException.getFormatInstance();
        }
        int[] iArr2 = new int[2];
        int i2 = i;
        int i3 = 0;
        while (i3 < 2) {
            iArr2[i3] = iArr[i2];
            i3++;
            i2++;
        }
        pDF417ResultMetadata.setSegmentIndex(Integer.parseInt(decodeBase900toBase10(iArr2, 2)));
        StringBuilder sb = new StringBuilder();
        int iTextCompaction = textCompaction(iArr, i2, sb);
        pDF417ResultMetadata.setFileId(sb.toString());
        if (iArr[iTextCompaction] == BEGIN_MACRO_PDF417_OPTIONAL_FIELD) {
            int i4 = iTextCompaction + 1;
            int[] iArr3 = new int[iArr[0] - i4];
            boolean z = false;
            int i5 = 0;
            while (i4 < iArr[0] && !z) {
                int i6 = i4 + 1;
                int i7 = iArr[i4];
                if (i7 < TEXT_COMPACTION_MODE_LATCH) {
                    iArr3[i5] = i7;
                    i4 = i6;
                    i5++;
                } else if (i7 == MACRO_PDF417_TERMINATOR) {
                    pDF417ResultMetadata.setLastSegment(true);
                    i4 = i6 + 1;
                    z = true;
                } else {
                    throw FormatException.getFormatInstance();
                }
            }
            pDF417ResultMetadata.setOptionalData(Arrays.copyOf(iArr3, i5));
            return i4;
        }
        if (iArr[iTextCompaction] != MACRO_PDF417_TERMINATOR) {
            return iTextCompaction;
        }
        pDF417ResultMetadata.setLastSegment(true);
        return iTextCompaction + 1;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:14:0x0035. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:15:0x0038. Please report as an issue. */
    private static int textCompaction(int[] iArr, int i, StringBuilder sb) {
        int[] iArr2 = new int[(iArr[0] - i) * 2];
        int[] iArr3 = new int[(iArr[0] - i) * 2];
        boolean z = false;
        int i2 = 0;
        while (i < iArr[0] && !z) {
            int i3 = i + 1;
            int i4 = iArr[i];
            if (i4 < TEXT_COMPACTION_MODE_LATCH) {
                iArr2[i2] = i4 / 30;
                iArr2[i2 + 1] = i4 % 30;
                i2 += 2;
            } else if (i4 != MODE_SHIFT_TO_BYTE_COMPACTION_MODE) {
                if (i4 != 928) {
                    switch (i4) {
                        case TEXT_COMPACTION_MODE_LATCH /* 900 */:
                            iArr2[i2] = TEXT_COMPACTION_MODE_LATCH;
                            i2++;
                            break;
                        case BYTE_COMPACTION_MODE_LATCH /* 901 */:
                        case NUMERIC_COMPACTION_MODE_LATCH /* 902 */:
                            break;
                        default:
                            switch (i4) {
                            }
                    }
                }
                i = i3 - 1;
                z = true;
            } else {
                iArr2[i2] = MODE_SHIFT_TO_BYTE_COMPACTION_MODE;
                i = i3 + 1;
                iArr3[i2] = iArr[i3];
                i2++;
            }
            i = i3;
        }
        decodeTextCompaction(iArr2, iArr3, i2, sb);
        return i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static void decodeTextCompaction(int[] iArr, int[] iArr2, int i, StringBuilder sb) {
        char c;
        Mode mode;
        int i2;
        char c2;
        Mode mode2 = Mode.ALPHA;
        Mode mode3 = Mode.ALPHA;
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = iArr[i3];
            switch (m307xca07ee0()[mode2.ordinal()]) {
                case 1:
                    if (i4 < 26) {
                        i2 = i4 + 65;
                        c = (char) i2;
                        break;
                    } else {
                        if (i4 != 26) {
                            if (i4 == 27) {
                                mode2 = Mode.LOWER;
                            } else if (i4 == 28) {
                                mode2 = Mode.MIXED;
                            } else if (i4 == 29) {
                                mode = Mode.PUNCT_SHIFT;
                                c = 0;
                                Mode mode4 = mode;
                                mode3 = mode2;
                                mode2 = mode4;
                                break;
                            } else if (i4 == MODE_SHIFT_TO_BYTE_COMPACTION_MODE) {
                                sb.append((char) iArr2[i3]);
                            } else if (i4 == TEXT_COMPACTION_MODE_LATCH) {
                                mode2 = Mode.ALPHA;
                            }
                            c = 0;
                            break;
                        }
                        c = ' ';
                        break;
                    }
                case 2:
                    if (i4 < 26) {
                        i2 = i4 + 97;
                        c = (char) i2;
                        break;
                    } else {
                        if (i4 != 26) {
                            if (i4 != 27) {
                                if (i4 == 28) {
                                    mode2 = Mode.MIXED;
                                } else if (i4 == 29) {
                                    mode = Mode.PUNCT_SHIFT;
                                } else if (i4 == MODE_SHIFT_TO_BYTE_COMPACTION_MODE) {
                                    sb.append((char) iArr2[i3]);
                                } else if (i4 == TEXT_COMPACTION_MODE_LATCH) {
                                    mode2 = Mode.ALPHA;
                                }
                                c = 0;
                                break;
                            } else {
                                mode = Mode.ALPHA_SHIFT;
                            }
                            c = 0;
                            Mode mode42 = mode;
                            mode3 = mode2;
                            mode2 = mode42;
                            break;
                        }
                        c = ' ';
                        break;
                    }
                case 3:
                    if (i4 < 25) {
                        c = MIXED_CHARS[i4];
                        break;
                    } else {
                        if (i4 != 25) {
                            if (i4 != 26) {
                                if (i4 == 27) {
                                    mode2 = Mode.LOWER;
                                } else if (i4 == 28) {
                                    mode2 = Mode.ALPHA;
                                } else if (i4 == 29) {
                                    mode = Mode.PUNCT_SHIFT;
                                    c = 0;
                                    Mode mode422 = mode;
                                    mode3 = mode2;
                                    mode2 = mode422;
                                    break;
                                } else if (i4 == MODE_SHIFT_TO_BYTE_COMPACTION_MODE) {
                                    sb.append((char) iArr2[i3]);
                                } else if (i4 == TEXT_COMPACTION_MODE_LATCH) {
                                    mode2 = Mode.ALPHA;
                                }
                            }
                            c = ' ';
                            break;
                        } else {
                            mode2 = Mode.PUNCT;
                        }
                        c = 0;
                        break;
                    }
                case 4:
                    if (i4 < 29) {
                        c = PUNCT_CHARS[i4];
                        break;
                    } else {
                        if (i4 == 29) {
                            mode2 = Mode.ALPHA;
                        } else if (i4 == MODE_SHIFT_TO_BYTE_COMPACTION_MODE) {
                            sb.append((char) iArr2[i3]);
                        } else if (i4 == TEXT_COMPACTION_MODE_LATCH) {
                            mode2 = Mode.ALPHA;
                        }
                        c = 0;
                        break;
                    }
                case 5:
                    if (i4 < 26) {
                        c2 = (char) (i4 + 65);
                        c = c2;
                        mode2 = mode3;
                        break;
                    } else if (i4 == 26) {
                        mode2 = mode3;
                        c = ' ';
                        break;
                    } else {
                        mode2 = i4 == TEXT_COMPACTION_MODE_LATCH ? Mode.ALPHA : mode3;
                        c = 0;
                        break;
                    }
                case 6:
                    if (i4 < 29) {
                        c2 = PUNCT_CHARS[i4];
                        c = c2;
                        mode2 = mode3;
                        break;
                    } else {
                        if (i4 == 29) {
                            mode2 = Mode.ALPHA;
                        } else if (i4 == MODE_SHIFT_TO_BYTE_COMPACTION_MODE) {
                            sb.append((char) iArr2[i3]);
                        } else if (i4 == TEXT_COMPACTION_MODE_LATCH) {
                            mode2 = Mode.ALPHA;
                        }
                        c = 0;
                        break;
                    }
                default:
                    c = 0;
                    break;
            }
            if (c != 0) {
                sb.append(c);
            }
        }
    }

    private static int byteCompaction(int i, int[] iArr, Charset charset, int i2, StringBuilder sb) {
        int i3;
        int i4;
        int i5;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i6 = MACRO_PDF417_TERMINATOR;
        int i7 = BEGIN_MACRO_PDF417_OPTIONAL_FIELD;
        int i8 = 928;
        long j = 900;
        if (i == BYTE_COMPACTION_MODE_LATCH) {
            int[] iArr2 = new int[6];
            i3 = i2 + 1;
            int i9 = iArr[i2];
            boolean z = false;
            loop0: while (true) {
                i4 = 0;
                long j2 = 0;
                while (i3 < iArr[0] && !z) {
                    int i10 = i4 + 1;
                    iArr2[i4] = i9;
                    j2 = (j2 * j) + i9;
                    int i11 = i3 + 1;
                    i9 = iArr[i3];
                    if (i9 == TEXT_COMPACTION_MODE_LATCH || i9 == BYTE_COMPACTION_MODE_LATCH || i9 == NUMERIC_COMPACTION_MODE_LATCH || i9 == BYTE_COMPACTION_MODE_LATCH_6 || i9 == 928 || i9 == i7 || i9 == i6) {
                        i3 = i11 - 1;
                        i4 = i10;
                        i6 = MACRO_PDF417_TERMINATOR;
                        i7 = BEGIN_MACRO_PDF417_OPTIONAL_FIELD;
                        j = 900;
                        z = true;
                    } else if (i10 % 5 != 0 || i10 <= 0) {
                        i3 = i11;
                        i4 = i10;
                        i6 = MACRO_PDF417_TERMINATOR;
                        i7 = BEGIN_MACRO_PDF417_OPTIONAL_FIELD;
                        j = 900;
                    } else {
                        int i12 = 0;
                        while (i12 < 6) {
                            byteArrayOutputStream.write((byte) (j2 >> ((5 - i12) * 8)));
                            i12++;
                            i6 = MACRO_PDF417_TERMINATOR;
                            i7 = BEGIN_MACRO_PDF417_OPTIONAL_FIELD;
                        }
                        i3 = i11;
                        j = 900;
                    }
                }
                break loop0;
            }
            if (i3 != iArr[0] || i9 >= TEXT_COMPACTION_MODE_LATCH) {
                i5 = i4;
            } else {
                i5 = i4 + 1;
                iArr2[i4] = i9;
            }
            for (int i13 = 0; i13 < i5; i13++) {
                byteArrayOutputStream.write((byte) iArr2[i13]);
            }
        } else if (i == BYTE_COMPACTION_MODE_LATCH_6) {
            int i14 = i2;
            int i15 = 0;
            long j3 = 0;
            boolean z2 = false;
            while (i14 < iArr[0] && !z2) {
                int i16 = i14 + 1;
                int i17 = iArr[i14];
                if (i17 < TEXT_COMPACTION_MODE_LATCH) {
                    i15++;
                    j3 = (j3 * 900) + i17;
                    i14 = i16;
                } else {
                    if (i17 != TEXT_COMPACTION_MODE_LATCH && i17 != BYTE_COMPACTION_MODE_LATCH && i17 != NUMERIC_COMPACTION_MODE_LATCH && i17 != BYTE_COMPACTION_MODE_LATCH_6 && i17 != i8) {
                        if (i17 != BEGIN_MACRO_PDF417_OPTIONAL_FIELD && i17 != MACRO_PDF417_TERMINATOR) {
                            i14 = i16;
                        }
                    }
                    i14 = i16 - 1;
                    z2 = true;
                }
                if (i15 % 5 != 0 || i15 <= 0) {
                    i8 = 928;
                } else {
                    int i18 = 0;
                    int i19 = 6;
                    while (i18 < i19) {
                        byteArrayOutputStream.write((byte) (j3 >> ((5 - i18) * 8)));
                        i18++;
                        i19 = 6;
                        i8 = 928;
                    }
                    i15 = 0;
                    j3 = 0;
                }
            }
            i3 = i14;
        } else {
            i3 = i2;
        }
        sb.append(new String(byteArrayOutputStream.toByteArray(), charset));
        return i3;
    }

    private static int numericCompaction(int[] iArr, int i, StringBuilder sb) throws FormatException {
        int i2;
        int[] iArr2 = new int[15];
        boolean z = false;
        loop0: while (true) {
            int i3 = 0;
            while (i < iArr[0] && !z) {
                i2 = i + 1;
                int i4 = iArr[i];
                if (i2 == iArr[0]) {
                    z = true;
                }
                if (i4 < TEXT_COMPACTION_MODE_LATCH) {
                    iArr2[i3] = i4;
                    i3++;
                } else if (i4 == TEXT_COMPACTION_MODE_LATCH || i4 == BYTE_COMPACTION_MODE_LATCH || i4 == BYTE_COMPACTION_MODE_LATCH_6 || i4 == 928 || i4 == BEGIN_MACRO_PDF417_OPTIONAL_FIELD || i4 == MACRO_PDF417_TERMINATOR) {
                    i2--;
                    z = true;
                }
                if ((i3 % 15 == 0 || i4 == NUMERIC_COMPACTION_MODE_LATCH || z) && i3 > 0) {
                    break;
                }
                i = i2;
            }
            sb.append(decodeBase900toBase10(iArr2, i3));
            i = i2;
        }
        return i;
    }

    private static String decodeBase900toBase10(int[] iArr, int i) throws FormatException {
        BigInteger bigIntegerAdd = BigInteger.ZERO;
        for (int i2 = 0; i2 < i; i2++) {
            bigIntegerAdd = bigIntegerAdd.add(EXP900[(i - i2) - 1].multiply(BigInteger.valueOf(iArr[i2])));
        }
        String string = bigIntegerAdd.toString();
        if (string.charAt(0) != '1') {
            throw FormatException.getFormatInstance();
        }
        return string.substring(1);
    }
}
