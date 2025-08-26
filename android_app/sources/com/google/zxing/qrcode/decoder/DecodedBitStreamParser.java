package com.google.zxing.qrcode.decoder;

import cn.highlight.p004tx.usb.FtdiSerialDriver;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.common.BitSource;
import com.google.zxing.common.CharacterSetECI;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.StringUtils;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
import kotlin.text.Typography;

/* loaded from: classes.dex */
final class DecodedBitStreamParser {
    private static final char[] ALPHANUMERIC_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', ' ', Typography.dollar, '%', '*', '+', '-', '.', '/', ':'};
    private static final int GB2312_SUBSET = 1;

    private DecodedBitStreamParser() {
    }

    static DecoderResult decode(byte[] bArr, Version version, ErrorCorrectionLevel errorCorrectionLevel, Map<DecodeHintType, ?> map) throws FormatException {
        Mode modeForBits;
        Mode mode;
        BitSource bitSource = new BitSource(bArr);
        StringBuilder sb = new StringBuilder(50);
        int i = 1;
        ArrayList arrayList = new ArrayList(1);
        CharacterSetECI characterSetECIByValue = null;
        boolean z = false;
        int i2 = -1;
        int bits = -1;
        while (true) {
            try {
                if (bitSource.available() < 4) {
                    modeForBits = Mode.TERMINATOR;
                } else {
                    modeForBits = Mode.forBits(bitSource.readBits(4));
                }
                Mode mode2 = modeForBits;
                if (mode2 == Mode.TERMINATOR) {
                    mode = mode2;
                } else if (mode2 == Mode.FNC1_FIRST_POSITION || mode2 == Mode.FNC1_SECOND_POSITION) {
                    mode = mode2;
                    z = true;
                } else {
                    if (mode2 == Mode.STRUCTURED_APPEND) {
                        if (bitSource.available() < 16) {
                            throw FormatException.getFormatInstance();
                        }
                        int bits2 = bitSource.readBits(8);
                        bits = bitSource.readBits(8);
                        i2 = bits2;
                    } else if (mode2 == Mode.ECI) {
                        characterSetECIByValue = CharacterSetECI.getCharacterSetECIByValue(parseECIValue(bitSource));
                        if (characterSetECIByValue == null) {
                            throw FormatException.getFormatInstance();
                        }
                    } else if (mode2 == Mode.HANZI) {
                        int bits3 = bitSource.readBits(4);
                        int bits4 = bitSource.readBits(mode2.getCharacterCountBits(version));
                        if (bits3 == i) {
                            decodeHanziSegment(bitSource, sb, bits4);
                        }
                    } else {
                        int bits5 = bitSource.readBits(mode2.getCharacterCountBits(version));
                        if (mode2 == Mode.NUMERIC) {
                            decodeNumericSegment(bitSource, sb, bits5);
                        } else if (mode2 == Mode.ALPHANUMERIC) {
                            decodeAlphanumericSegment(bitSource, sb, bits5, z);
                        } else if (mode2 == Mode.BYTE) {
                            mode = mode2;
                            decodeByteSegment(bitSource, sb, bits5, characterSetECIByValue, arrayList, map);
                        } else {
                            mode = mode2;
                            if (mode == Mode.KANJI) {
                                decodeKanjiSegment(bitSource, sb, bits5);
                            } else {
                                throw FormatException.getFormatInstance();
                            }
                        }
                    }
                    mode = mode2;
                }
                if (mode == Mode.TERMINATOR) {
                    return new DecoderResult(bArr, sb.toString(), arrayList.isEmpty() ? null : arrayList, errorCorrectionLevel == null ? null : errorCorrectionLevel.toString(), i2, bits);
                }
                i = 1;
            } catch (IllegalArgumentException unused) {
                throw FormatException.getFormatInstance();
            }
        }
    }

    private static void decodeHanziSegment(BitSource bitSource, StringBuilder sb, int i) throws FormatException {
        if (i * 13 > bitSource.available()) {
            throw FormatException.getFormatInstance();
        }
        byte[] bArr = new byte[i * 2];
        int i2 = 0;
        while (i > 0) {
            int bits = bitSource.readBits(13);
            int i3 = (bits % 96) | ((bits / 96) << 8);
            int i4 = i3 + (i3 < 959 ? 41377 : 42657);
            bArr[i2] = (byte) ((i4 >> 8) & 255);
            bArr[i2 + 1] = (byte) (i4 & 255);
            i2 += 2;
            i--;
        }
        try {
            sb.append(new String(bArr, StringUtils.GB2312));
        } catch (UnsupportedEncodingException unused) {
            throw FormatException.getFormatInstance();
        }
    }

    private static void decodeKanjiSegment(BitSource bitSource, StringBuilder sb, int i) throws FormatException {
        if (i * 13 > bitSource.available()) {
            throw FormatException.getFormatInstance();
        }
        byte[] bArr = new byte[i * 2];
        int i2 = 0;
        while (i > 0) {
            int bits = bitSource.readBits(13);
            int i3 = (bits % FtdiSerialDriver.FtdiSerialPort.FTDI_DEVICE_IN_REQTYPE) | ((bits / FtdiSerialDriver.FtdiSerialPort.FTDI_DEVICE_IN_REQTYPE) << 8);
            int i4 = i3 + (i3 < 7936 ? 33088 : 49472);
            bArr[i2] = (byte) (i4 >> 8);
            bArr[i2 + 1] = (byte) i4;
            i2 += 2;
            i--;
        }
        try {
            sb.append(new String(bArr, StringUtils.SHIFT_JIS));
        } catch (UnsupportedEncodingException unused) {
            throw FormatException.getFormatInstance();
        }
    }

    private static void decodeByteSegment(BitSource bitSource, StringBuilder sb, int i, CharacterSetECI characterSetECI, Collection<byte[]> collection, Map<DecodeHintType, ?> map) throws FormatException {
        String strName;
        if (i * 8 > bitSource.available()) {
            throw FormatException.getFormatInstance();
        }
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = (byte) bitSource.readBits(8);
        }
        if (characterSetECI == null) {
            strName = StringUtils.guessEncoding(bArr, map);
        } else {
            strName = characterSetECI.name();
        }
        try {
            sb.append(new String(bArr, strName));
            collection.add(bArr);
        } catch (UnsupportedEncodingException unused) {
            throw FormatException.getFormatInstance();
        }
    }

    private static char toAlphaNumericChar(int i) throws FormatException {
        char[] cArr = ALPHANUMERIC_CHARS;
        if (i >= cArr.length) {
            throw FormatException.getFormatInstance();
        }
        return cArr[i];
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0045  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void decodeAlphanumericSegment(com.google.zxing.common.BitSource r3, java.lang.StringBuilder r4, int r5, boolean r6) throws com.google.zxing.FormatException {
        /*
            int r0 = r4.length()
        L4:
            r1 = 1
            if (r5 > r1) goto L4e
            if (r5 != r1) goto L21
            int r5 = r3.available()
            r2 = 6
            if (r5 < r2) goto L1c
            int r3 = r3.readBits(r2)
            char r3 = toAlphaNumericChar(r3)
            r4.append(r3)
            goto L21
        L1c:
            com.google.zxing.FormatException r3 = com.google.zxing.FormatException.getFormatInstance()
            throw r3
        L21:
            if (r6 == 0) goto L4d
        L23:
            int r3 = r4.length()
            if (r0 < r3) goto L2a
            goto L4d
        L2a:
            char r3 = r4.charAt(r0)
            r5 = 37
            if (r3 != r5) goto L4a
            int r3 = r4.length()
            int r3 = r3 - r1
            if (r0 >= r3) goto L45
            int r3 = r0 + 1
            char r6 = r4.charAt(r3)
            if (r6 != r5) goto L45
            r4.deleteCharAt(r3)
            goto L4a
        L45:
            r3 = 29
            r4.setCharAt(r0, r3)
        L4a:
            int r0 = r0 + 1
            goto L23
        L4d:
            return
        L4e:
            int r1 = r3.available()
            r2 = 11
            if (r1 < r2) goto L6f
            int r1 = r3.readBits(r2)
            int r2 = r1 / 45
            char r2 = toAlphaNumericChar(r2)
            r4.append(r2)
            int r1 = r1 % 45
            char r1 = toAlphaNumericChar(r1)
            r4.append(r1)
            int r5 = r5 + (-2)
            goto L4
        L6f:
            com.google.zxing.FormatException r3 = com.google.zxing.FormatException.getFormatInstance()
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.qrcode.decoder.DecodedBitStreamParser.decodeAlphanumericSegment(com.google.zxing.common.BitSource, java.lang.StringBuilder, int, boolean):void");
    }

    private static void decodeNumericSegment(BitSource bitSource, StringBuilder sb, int i) throws FormatException {
        while (i >= 3) {
            if (bitSource.available() < 10) {
                throw FormatException.getFormatInstance();
            }
            int bits = bitSource.readBits(10);
            if (bits >= 1000) {
                throw FormatException.getFormatInstance();
            }
            sb.append(toAlphaNumericChar(bits / 100));
            sb.append(toAlphaNumericChar((bits / 10) % 10));
            sb.append(toAlphaNumericChar(bits % 10));
            i -= 3;
        }
        if (i == 2) {
            if (bitSource.available() < 7) {
                throw FormatException.getFormatInstance();
            }
            int bits2 = bitSource.readBits(7);
            if (bits2 >= 100) {
                throw FormatException.getFormatInstance();
            }
            sb.append(toAlphaNumericChar(bits2 / 10));
            sb.append(toAlphaNumericChar(bits2 % 10));
            return;
        }
        if (i == 1) {
            if (bitSource.available() < 4) {
                throw FormatException.getFormatInstance();
            }
            int bits3 = bitSource.readBits(4);
            if (bits3 >= 10) {
                throw FormatException.getFormatInstance();
            }
            sb.append(toAlphaNumericChar(bits3));
        }
    }

    private static int parseECIValue(BitSource bitSource) throws FormatException {
        int bits = bitSource.readBits(8);
        if ((bits & 128) == 0) {
            return bits & 127;
        }
        if ((bits & FtdiSerialDriver.FtdiSerialPort.FTDI_DEVICE_IN_REQTYPE) == 128) {
            return bitSource.readBits(8) | ((bits & 63) << 8);
        }
        if ((bits & 224) == 192) {
            return bitSource.readBits(16) | ((bits & 31) << 16);
        }
        throw FormatException.getFormatInstance();
    }
}
