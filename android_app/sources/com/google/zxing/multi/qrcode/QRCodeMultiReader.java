package com.google.zxing.multi.qrcode;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.multi.MultipleBarcodeReader;
import com.google.zxing.multi.qrcode.detector.MultiDetector;
import com.google.zxing.qrcode.QRCodeReader;
import com.google.zxing.qrcode.decoder.QRCodeDecoderMetaData;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class QRCodeMultiReader extends QRCodeReader implements MultipleBarcodeReader {
    private static final Result[] EMPTY_RESULT_ARRAY = new Result[0];
    private static final ResultPoint[] NO_POINTS = new ResultPoint[0];

    @Override // com.google.zxing.multi.MultipleBarcodeReader
    public Result[] decodeMultiple(BinaryBitmap binaryBitmap) throws NotFoundException {
        return decodeMultiple(binaryBitmap, null);
    }

    @Override // com.google.zxing.multi.MultipleBarcodeReader
    public Result[] decodeMultiple(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) throws NotFoundException {
        ArrayList arrayList = new ArrayList();
        for (DetectorResult detectorResult : new MultiDetector(binaryBitmap.getBlackMatrix()).detectMulti(map)) {
            try {
                DecoderResult decoderResultDecode = getDecoder().decode(detectorResult.getBits(), map);
                ResultPoint[] points = detectorResult.getPoints();
                if (decoderResultDecode.getOther() instanceof QRCodeDecoderMetaData) {
                    ((QRCodeDecoderMetaData) decoderResultDecode.getOther()).applyMirroredCorrection(points);
                }
                Result result = new Result(decoderResultDecode.getText(), decoderResultDecode.getRawBytes(), points, BarcodeFormat.QR_CODE);
                List<byte[]> byteSegments = decoderResultDecode.getByteSegments();
                if (byteSegments != null) {
                    result.putMetadata(ResultMetadataType.BYTE_SEGMENTS, byteSegments);
                }
                String eCLevel = decoderResultDecode.getECLevel();
                if (eCLevel != null) {
                    result.putMetadata(ResultMetadataType.ERROR_CORRECTION_LEVEL, eCLevel);
                }
                if (decoderResultDecode.hasStructuredAppend()) {
                    result.putMetadata(ResultMetadataType.STRUCTURED_APPEND_SEQUENCE, Integer.valueOf(decoderResultDecode.getStructuredAppendSequenceNumber()));
                    result.putMetadata(ResultMetadataType.STRUCTURED_APPEND_PARITY, Integer.valueOf(decoderResultDecode.getStructuredAppendParity()));
                }
                arrayList.add(result);
            } catch (ReaderException unused) {
            }
        }
        if (arrayList.isEmpty()) {
            return EMPTY_RESULT_ARRAY;
        }
        List<Result> listProcessStructuredAppend = processStructuredAppend(arrayList);
        return (Result[]) listProcessStructuredAppend.toArray(new Result[listProcessStructuredAppend.size()]);
    }

    private static List<Result> processStructuredAppend(List<Result> list) {
        boolean z;
        Iterator<Result> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            if (it.next().getResultMetadata().containsKey(ResultMetadataType.STRUCTURED_APPEND_SEQUENCE)) {
                z = true;
                break;
            }
        }
        if (!z) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList<Result> arrayList2 = new ArrayList();
        for (Result result : list) {
            arrayList.add(result);
            if (result.getResultMetadata().containsKey(ResultMetadataType.STRUCTURED_APPEND_SEQUENCE)) {
                arrayList2.add(result);
            }
        }
        Collections.sort(arrayList2, new SAComparator(null));
        StringBuilder sb = new StringBuilder();
        int length = 0;
        int length2 = 0;
        for (Result result2 : arrayList2) {
            sb.append(result2.getText());
            length += result2.getRawBytes().length;
            if (result2.getResultMetadata().containsKey(ResultMetadataType.BYTE_SEGMENTS)) {
                Iterator it2 = ((Iterable) result2.getResultMetadata().get(ResultMetadataType.BYTE_SEGMENTS)).iterator();
                while (it2.hasNext()) {
                    length2 += ((byte[]) it2.next()).length;
                }
            }
        }
        byte[] bArr = new byte[length];
        byte[] bArr2 = new byte[length2];
        int length3 = 0;
        int length4 = 0;
        for (Result result3 : arrayList2) {
            System.arraycopy(result3.getRawBytes(), 0, bArr, length3, result3.getRawBytes().length);
            length3 += result3.getRawBytes().length;
            if (result3.getResultMetadata().containsKey(ResultMetadataType.BYTE_SEGMENTS)) {
                for (byte[] bArr3 : (Iterable) result3.getResultMetadata().get(ResultMetadataType.BYTE_SEGMENTS)) {
                    System.arraycopy(bArr3, 0, bArr2, length4, bArr3.length);
                    length4 += bArr3.length;
                }
            }
        }
        Result result4 = new Result(sb.toString(), bArr, NO_POINTS, BarcodeFormat.QR_CODE);
        if (length2 > 0) {
            ArrayList arrayList3 = new ArrayList();
            arrayList3.add(bArr2);
            result4.putMetadata(ResultMetadataType.BYTE_SEGMENTS, arrayList3);
        }
        arrayList.add(result4);
        return arrayList;
    }

    private static final class SAComparator implements Comparator<Result>, Serializable {
        private SAComparator() {
        }

        /* synthetic */ SAComparator(SAComparator sAComparator) {
            this();
        }

        @Override // java.util.Comparator
        public int compare(Result result, Result result2) {
            int iIntValue = ((Integer) result.getResultMetadata().get(ResultMetadataType.STRUCTURED_APPEND_SEQUENCE)).intValue();
            int iIntValue2 = ((Integer) result2.getResultMetadata().get(ResultMetadataType.STRUCTURED_APPEND_SEQUENCE)).intValue();
            if (iIntValue < iIntValue2) {
                return -1;
            }
            return iIntValue > iIntValue2 ? 1 : 0;
        }
    }
}
