package com.google.zxing.aztec;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.Result;

/* loaded from: classes.dex */
public final class AztecReader implements Reader {
    @Override // com.google.zxing.Reader
    public void reset() {
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap) throws NotFoundException, FormatException {
        return decode(binaryBitmap, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x005e A[LOOP:0: B:32:0x005b->B:34:0x005e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0086  */
    @Override // com.google.zxing.Reader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.google.zxing.Result decode(com.google.zxing.BinaryBitmap r6, java.util.Map<com.google.zxing.DecodeHintType, ?> r7) throws com.google.zxing.NotFoundException, com.google.zxing.FormatException {
        /*
            r5 = this;
            com.google.zxing.aztec.detector.Detector r0 = new com.google.zxing.aztec.detector.Detector
            com.google.zxing.common.BitMatrix r6 = r6.getBlackMatrix()
            r0.<init>(r6)
            r6 = 0
            r1 = 0
            com.google.zxing.aztec.AztecDetectorResult r2 = r0.detect(r6)     // Catch: com.google.zxing.FormatException -> L25 com.google.zxing.NotFoundException -> L2b
            com.google.zxing.ResultPoint[] r3 = r2.getPoints()     // Catch: com.google.zxing.FormatException -> L25 com.google.zxing.NotFoundException -> L2b
            com.google.zxing.aztec.decoder.Decoder r4 = new com.google.zxing.aztec.decoder.Decoder     // Catch: com.google.zxing.FormatException -> L21 com.google.zxing.NotFoundException -> L23
            r4.<init>()     // Catch: com.google.zxing.FormatException -> L21 com.google.zxing.NotFoundException -> L23
            com.google.zxing.common.DecoderResult r2 = r4.decode(r2)     // Catch: com.google.zxing.FormatException -> L21 com.google.zxing.NotFoundException -> L23
            r4 = r3
            r3 = r1
            r1 = r2
            r2 = r3
            goto L2f
        L21:
            r2 = move-exception
            goto L27
        L23:
            r2 = move-exception
            goto L2d
        L25:
            r2 = move-exception
            r3 = r1
        L27:
            r4 = r3
            r3 = r2
            r2 = r1
            goto L2f
        L2b:
            r2 = move-exception
            r3 = r1
        L2d:
            r4 = r3
            r3 = r1
        L2f:
            if (r1 != 0) goto L4e
            r1 = 1
            com.google.zxing.aztec.AztecDetectorResult r0 = r0.detect(r1)     // Catch: com.google.zxing.FormatException -> L44 com.google.zxing.NotFoundException -> L46
            com.google.zxing.ResultPoint[] r4 = r0.getPoints()     // Catch: com.google.zxing.FormatException -> L44 com.google.zxing.NotFoundException -> L46
            com.google.zxing.aztec.decoder.Decoder r1 = new com.google.zxing.aztec.decoder.Decoder     // Catch: com.google.zxing.FormatException -> L44 com.google.zxing.NotFoundException -> L46
            r1.<init>()     // Catch: com.google.zxing.FormatException -> L44 com.google.zxing.NotFoundException -> L46
            com.google.zxing.common.DecoderResult r1 = r1.decode(r0)     // Catch: com.google.zxing.FormatException -> L44 com.google.zxing.NotFoundException -> L46
            goto L4e
        L44:
            r6 = move-exception
            goto L47
        L46:
            r6 = move-exception
        L47:
            if (r2 != 0) goto L4d
            if (r3 == 0) goto L4c
            throw r3
        L4c:
            throw r6
        L4d:
            throw r2
        L4e:
            if (r7 == 0) goto L66
            com.google.zxing.DecodeHintType r0 = com.google.zxing.DecodeHintType.NEED_RESULT_POINT_CALLBACK
            java.lang.Object r7 = r7.get(r0)
            com.google.zxing.ResultPointCallback r7 = (com.google.zxing.ResultPointCallback) r7
            if (r7 == 0) goto L66
            int r0 = r4.length
        L5b:
            if (r6 < r0) goto L5e
            goto L66
        L5e:
            r2 = r4[r6]
            r7.foundPossibleResultPoint(r2)
            int r6 = r6 + 1
            goto L5b
        L66:
            com.google.zxing.Result r6 = new com.google.zxing.Result
            java.lang.String r7 = r1.getText()
            byte[] r0 = r1.getRawBytes()
            com.google.zxing.BarcodeFormat r2 = com.google.zxing.BarcodeFormat.AZTEC
            r6.<init>(r7, r0, r4, r2)
            java.util.List r7 = r1.getByteSegments()
            if (r7 == 0) goto L80
            com.google.zxing.ResultMetadataType r0 = com.google.zxing.ResultMetadataType.BYTE_SEGMENTS
            r6.putMetadata(r0, r7)
        L80:
            java.lang.String r7 = r1.getECLevel()
            if (r7 == 0) goto L8b
            com.google.zxing.ResultMetadataType r0 = com.google.zxing.ResultMetadataType.ERROR_CORRECTION_LEVEL
            r6.putMetadata(r0, r7)
        L8b:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.aztec.AztecReader.decode(com.google.zxing.BinaryBitmap, java.util.Map):com.google.zxing.Result");
    }
}
