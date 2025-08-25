package cn.highlight.core.zxing;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import java.util.EnumMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class Result {
    private final BarcodeFormat format;
    private final byte[] rawBytes;
    private Map<ResultMetadataType, Object> resultMetadata;
    private ResultPoint[] resultPoints;
    private final String text;
    private final long timestamp;

    public Result(String str, byte[] bArr, ResultPoint[] resultPointArr, BarcodeFormat barcodeFormat) {
        this(str, bArr, resultPointArr, barcodeFormat, System.currentTimeMillis());
    }

    public Result(String str, byte[] bArr, ResultPoint[] resultPointArr, BarcodeFormat barcodeFormat, long j) {
        this.text = str;
        this.rawBytes = bArr;
        this.resultPoints = resultPointArr;
        this.format = barcodeFormat;
        this.resultMetadata = null;
        this.timestamp = j;
    }

    public String getText() {
        return this.text;
    }

    public byte[] getRawBytes() {
        return this.rawBytes;
    }

    public ResultPoint[] getResultPoints() {
        return this.resultPoints;
    }

    public BarcodeFormat getBarcodeFormat() {
        return this.format;
    }

    public Map<ResultMetadataType, Object> getResultMetadata() {
        return this.resultMetadata;
    }

    public void putMetadata(ResultMetadataType resultMetadataType, Object obj) {
        if (this.resultMetadata == null) {
            this.resultMetadata = new EnumMap(ResultMetadataType.class);
        }
        this.resultMetadata.put(resultMetadataType, obj);
    }

    public void putAllMetadata(Map<ResultMetadataType, Object> map) {
        if (map != null) {
            Map<ResultMetadataType, Object> map2 = this.resultMetadata;
            if (map2 == null) {
                this.resultMetadata = map;
            } else {
                map2.putAll(map);
            }
        }
    }

    public void addResultPoints(ResultPoint[] resultPointArr) {
        ResultPoint[] resultPointArr2 = this.resultPoints;
        if (resultPointArr2 == null) {
            this.resultPoints = resultPointArr;
            return;
        }
        if (resultPointArr == null || resultPointArr.length <= 0) {
            return;
        }
        ResultPoint[] resultPointArr3 = new ResultPoint[resultPointArr2.length + resultPointArr.length];
        System.arraycopy(resultPointArr2, 0, resultPointArr3, 0, resultPointArr2.length);
        System.arraycopy(resultPointArr, 0, resultPointArr3, resultPointArr2.length, resultPointArr.length);
        this.resultPoints = resultPointArr3;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public String toString() {
        return this.text;
    }
}
