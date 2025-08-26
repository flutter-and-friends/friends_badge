package androidx.constraintlayout.motion.utils;

import java.lang.reflect.Array;

/* loaded from: classes.dex */
public class HyperSpline {
    double[][] mCtl;
    Cubic[][] mCurve;
    double[] mCurveLength;
    int mDimensionality;
    int mPoints;
    double mTotalLength;

    public HyperSpline(double[][] dArr) {
        setup(dArr);
    }

    public HyperSpline() {
    }

    public void setup(double[][] dArr) {
        int i;
        this.mDimensionality = dArr[0].length;
        this.mPoints = dArr.length;
        this.mCtl = (double[][]) Array.newInstance((Class<?>) double.class, this.mDimensionality, this.mPoints);
        this.mCurve = new Cubic[this.mDimensionality][];
        for (int i2 = 0; i2 < this.mDimensionality; i2++) {
            for (int i3 = 0; i3 < this.mPoints; i3++) {
                this.mCtl[i2][i3] = dArr[i3][i2];
            }
        }
        int i4 = 0;
        while (true) {
            i = this.mDimensionality;
            if (i4 >= i) {
                break;
            }
            Cubic[][] cubicArr = this.mCurve;
            double[][] dArr2 = this.mCtl;
            cubicArr[i4] = calcNaturalCubic(dArr2[i4].length, dArr2[i4]);
            i4++;
        }
        this.mCurveLength = new double[this.mPoints - 1];
        this.mTotalLength = 0.0d;
        Cubic[] cubicArr2 = new Cubic[i];
        for (int i5 = 0; i5 < this.mCurveLength.length; i5++) {
            for (int i6 = 0; i6 < this.mDimensionality; i6++) {
                cubicArr2[i6] = this.mCurve[i6][i5];
            }
            double d = this.mTotalLength;
            double[] dArr3 = this.mCurveLength;
            double dApproxLength = approxLength(cubicArr2);
            dArr3[i5] = dApproxLength;
            this.mTotalLength = d + dApproxLength;
        }
    }

    public void getVelocity(double d, double[] dArr) {
        double d2 = d * this.mTotalLength;
        int i = 0;
        while (true) {
            double[] dArr2 = this.mCurveLength;
            if (i >= dArr2.length - 1 || dArr2[i] >= d2) {
                break;
            }
            d2 -= dArr2[i];
            i++;
        }
        for (int i2 = 0; i2 < dArr.length; i2++) {
            dArr[i2] = this.mCurve[i2][i].vel(d2 / this.mCurveLength[i]);
        }
    }

    public void getPos(double d, double[] dArr) {
        double d2 = d * this.mTotalLength;
        int i = 0;
        while (true) {
            double[] dArr2 = this.mCurveLength;
            if (i >= dArr2.length - 1 || dArr2[i] >= d2) {
                break;
            }
            d2 -= dArr2[i];
            i++;
        }
        for (int i2 = 0; i2 < dArr.length; i2++) {
            dArr[i2] = this.mCurve[i2][i].eval(d2 / this.mCurveLength[i]);
        }
    }

    public void getPos(double d, float[] fArr) {
        double d2 = d * this.mTotalLength;
        int i = 0;
        while (true) {
            double[] dArr = this.mCurveLength;
            if (i >= dArr.length - 1 || dArr[i] >= d2) {
                break;
            }
            d2 -= dArr[i];
            i++;
        }
        for (int i2 = 0; i2 < fArr.length; i2++) {
            fArr[i2] = (float) this.mCurve[i2][i].eval(d2 / this.mCurveLength[i]);
        }
    }

    public double getPos(double d, int i) {
        double d2 = d * this.mTotalLength;
        int i2 = 0;
        while (true) {
            double[] dArr = this.mCurveLength;
            if (i2 >= dArr.length - 1 || dArr[i2] >= d2) {
                break;
            }
            d2 -= dArr[i2];
            i2++;
        }
        return this.mCurve[i][i2].eval(d2 / this.mCurveLength[i2]);
    }

    public double approxLength(Cubic[] cubicArr) {
        int i;
        int length = cubicArr.length;
        double[] dArr = new double[cubicArr.length];
        double d = 0.0d;
        double d2 = 0.0d;
        double dSqrt = 0.0d;
        while (true) {
            i = 0;
            if (d2 >= 1.0d) {
                break;
            }
            double d3 = 0.0d;
            while (i < cubicArr.length) {
                double d4 = dArr[i];
                double dEval = cubicArr[i].eval(d2);
                dArr[i] = dEval;
                double d5 = d4 - dEval;
                d3 += d5 * d5;
                i++;
            }
            if (d2 > 0.0d) {
                dSqrt += Math.sqrt(d3);
            }
            d2 += 0.1d;
        }
        while (i < cubicArr.length) {
            double d6 = dArr[i];
            double dEval2 = cubicArr[i].eval(1.0d);
            dArr[i] = dEval2;
            double d7 = d6 - dEval2;
            d += d7 * d7;
            i++;
        }
        return dSqrt + Math.sqrt(d);
    }

    static Cubic[] calcNaturalCubic(int i, double[] dArr) {
        double[] dArr2 = new double[i];
        double[] dArr3 = new double[i];
        double[] dArr4 = new double[i];
        int i2 = i - 1;
        int i3 = 0;
        dArr2[0] = 0.5d;
        int i4 = 1;
        for (int i5 = 1; i5 < i2; i5++) {
            dArr2[i5] = 1.0d / (4.0d - dArr2[i5 - 1]);
        }
        int i6 = i2 - 1;
        dArr2[i2] = 1.0d / (2.0d - dArr2[i6]);
        dArr3[0] = (dArr[1] - dArr[0]) * 3.0d * dArr2[0];
        while (i4 < i2) {
            int i7 = i4 + 1;
            int i8 = i4 - 1;
            dArr3[i4] = (((dArr[i7] - dArr[i8]) * 3.0d) - dArr3[i8]) * dArr2[i4];
            i4 = i7;
        }
        dArr3[i2] = (((dArr[i2] - dArr[i6]) * 3.0d) - dArr3[i6]) * dArr2[i2];
        dArr4[i2] = dArr3[i2];
        while (i6 >= 0) {
            dArr4[i6] = dArr3[i6] - (dArr2[i6] * dArr4[i6 + 1]);
            i6--;
        }
        Cubic[] cubicArr = new Cubic[i2];
        while (i3 < i2) {
            int i9 = i3 + 1;
            cubicArr[i3] = new Cubic((float) dArr[i3], dArr4[i3], (((dArr[i9] - dArr[i3]) * 3.0d) - (dArr4[i3] * 2.0d)) - dArr4[i9], ((dArr[i3] - dArr[i9]) * 2.0d) + dArr4[i3] + dArr4[i9]);
            i3 = i9;
        }
        return cubicArr;
    }

    public static class Cubic {
        public static final double HALF = 0.5d;
        public static final double THIRD = 0.3333333333333333d;

        /* renamed from: mA */
        double f18mA;

        /* renamed from: mB */
        double f19mB;

        /* renamed from: mC */
        double f20mC;

        /* renamed from: mD */
        double f21mD;

        public Cubic(double d, double d2, double d3, double d4) {
            this.f18mA = d;
            this.f19mB = d2;
            this.f20mC = d3;
            this.f21mD = d4;
        }

        public double eval(double d) {
            return (((((this.f21mD * d) + this.f20mC) * d) + this.f19mB) * d) + this.f18mA;
        }

        public double vel(double d) {
            return (((this.f21mD * 0.3333333333333333d * d) + (this.f20mC * 0.5d)) * d) + this.f19mB;
        }
    }
}
