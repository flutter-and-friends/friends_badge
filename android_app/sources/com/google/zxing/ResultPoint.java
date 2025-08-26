package com.google.zxing;

import com.google.zxing.common.detector.MathUtils;

/* loaded from: classes.dex */
public class ResultPoint {

    /* renamed from: x */
    private final float f374x;

    /* renamed from: y */
    private final float f375y;

    public ResultPoint(float f, float f2) {
        this.f374x = f;
        this.f375y = f2;
    }

    public final float getX() {
        return this.f374x;
    }

    public final float getY() {
        return this.f375y;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ResultPoint) {
            ResultPoint resultPoint = (ResultPoint) obj;
            if (this.f374x == resultPoint.f374x && this.f375y == resultPoint.f375y) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (Float.floatToIntBits(this.f374x) * 31) + Float.floatToIntBits(this.f375y);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(25);
        sb.append('(');
        sb.append(this.f374x);
        sb.append(',');
        sb.append(this.f375y);
        sb.append(')');
        return sb.toString();
    }

    public static void orderBestPatterns(ResultPoint[] resultPointArr) {
        ResultPoint resultPoint;
        ResultPoint resultPoint2;
        ResultPoint resultPoint3;
        float fDistance = distance(resultPointArr[0], resultPointArr[1]);
        float fDistance2 = distance(resultPointArr[1], resultPointArr[2]);
        float fDistance3 = distance(resultPointArr[0], resultPointArr[2]);
        if (fDistance2 >= fDistance && fDistance2 >= fDistance3) {
            resultPoint = resultPointArr[0];
            resultPoint2 = resultPointArr[1];
            resultPoint3 = resultPointArr[2];
        } else if (fDistance3 >= fDistance2 && fDistance3 >= fDistance) {
            resultPoint = resultPointArr[1];
            resultPoint2 = resultPointArr[0];
            resultPoint3 = resultPointArr[2];
        } else {
            resultPoint = resultPointArr[2];
            resultPoint2 = resultPointArr[0];
            resultPoint3 = resultPointArr[1];
        }
        if (crossProductZ(resultPoint2, resultPoint, resultPoint3) < 0.0f) {
            ResultPoint resultPoint4 = resultPoint3;
            resultPoint3 = resultPoint2;
            resultPoint2 = resultPoint4;
        }
        resultPointArr[0] = resultPoint2;
        resultPointArr[1] = resultPoint;
        resultPointArr[2] = resultPoint3;
    }

    public static float distance(ResultPoint resultPoint, ResultPoint resultPoint2) {
        return MathUtils.distance(resultPoint.f374x, resultPoint.f375y, resultPoint2.f374x, resultPoint2.f375y);
    }

    private static float crossProductZ(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3) {
        float f = resultPoint2.f374x;
        float f2 = resultPoint2.f375y;
        return ((resultPoint3.f374x - f) * (resultPoint.f375y - f2)) - ((resultPoint3.f375y - f2) * (resultPoint.f374x - f));
    }
}
