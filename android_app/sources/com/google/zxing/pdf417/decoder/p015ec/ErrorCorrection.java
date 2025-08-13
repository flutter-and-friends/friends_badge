package com.google.zxing.pdf417.decoder.p015ec;

import com.google.zxing.ChecksumException;

/* loaded from: classes.dex */
public final class ErrorCorrection {
    private final ModulusGF field = ModulusGF.PDF417_GF;

    public int decode(int[] iArr, int i, int[] iArr2) throws ChecksumException {
        ModulusPoly modulusPoly = new ModulusPoly(this.field, iArr);
        int[] iArr3 = new int[i];
        boolean z = false;
        for (int i2 = i; i2 > 0; i2--) {
            int iEvaluateAt = modulusPoly.evaluateAt(this.field.exp(i2));
            iArr3[i - i2] = iEvaluateAt;
            if (iEvaluateAt != 0) {
                z = true;
            }
        }
        if (!z) {
            return 0;
        }
        ModulusPoly one = this.field.getOne();
        if (iArr2 != null) {
            ModulusPoly modulusPolyMultiply = one;
            for (int i3 : iArr2) {
                int iExp = this.field.exp((iArr.length - 1) - i3);
                ModulusGF modulusGF = this.field;
                modulusPolyMultiply = modulusPolyMultiply.multiply(new ModulusPoly(modulusGF, new int[]{modulusGF.subtract(0, iExp), 1}));
            }
        }
        ModulusPoly[] modulusPolyArrRunEuclideanAlgorithm = runEuclideanAlgorithm(this.field.buildMonomial(i, 1), new ModulusPoly(this.field, iArr3), i);
        ModulusPoly modulusPoly2 = modulusPolyArrRunEuclideanAlgorithm[0];
        ModulusPoly modulusPoly3 = modulusPolyArrRunEuclideanAlgorithm[1];
        int[] iArrFindErrorLocations = findErrorLocations(modulusPoly2);
        int[] iArrFindErrorMagnitudes = findErrorMagnitudes(modulusPoly3, modulusPoly2, iArrFindErrorLocations);
        for (int i4 = 0; i4 < iArrFindErrorLocations.length; i4++) {
            int length = (iArr.length - 1) - this.field.log(iArrFindErrorLocations[i4]);
            if (length < 0) {
                throw ChecksumException.getChecksumInstance();
            }
            iArr[length] = this.field.subtract(iArr[length], iArrFindErrorMagnitudes[i4]);
        }
        return iArrFindErrorLocations.length;
    }

    private ModulusPoly[] runEuclideanAlgorithm(ModulusPoly modulusPoly, ModulusPoly modulusPoly2, int i) throws ChecksumException {
        if (modulusPoly.getDegree() < modulusPoly2.getDegree()) {
            modulusPoly2 = modulusPoly;
            modulusPoly = modulusPoly2;
        }
        ModulusPoly zero = this.field.getZero();
        ModulusPoly one = this.field.getOne();
        ModulusPoly modulusPoly3 = modulusPoly2;
        ModulusPoly modulusPolySubtract = modulusPoly;
        ModulusPoly modulusPoly4 = modulusPoly3;
        while (modulusPoly4.getDegree() >= i / 2) {
            if (modulusPoly4.isZero()) {
                throw ChecksumException.getChecksumInstance();
            }
            ModulusPoly zero2 = this.field.getZero();
            int iInverse = this.field.inverse(modulusPoly4.getCoefficient(modulusPoly4.getDegree()));
            while (modulusPolySubtract.getDegree() >= modulusPoly4.getDegree() && !modulusPolySubtract.isZero()) {
                int degree = modulusPolySubtract.getDegree() - modulusPoly4.getDegree();
                int iMultiply = this.field.multiply(modulusPolySubtract.getCoefficient(modulusPolySubtract.getDegree()), iInverse);
                zero2 = zero2.add(this.field.buildMonomial(degree, iMultiply));
                modulusPolySubtract = modulusPolySubtract.subtract(modulusPoly4.multiplyByMonomial(degree, iMultiply));
            }
            ModulusPoly modulusPoly5 = modulusPolySubtract;
            modulusPolySubtract = modulusPoly4;
            modulusPoly4 = modulusPoly5;
            ModulusPoly modulusPoly6 = one;
            one = zero2.multiply(one).subtract(zero).negative();
            zero = modulusPoly6;
        }
        int coefficient = one.getCoefficient(0);
        if (coefficient == 0) {
            throw ChecksumException.getChecksumInstance();
        }
        int iInverse2 = this.field.inverse(coefficient);
        return new ModulusPoly[]{one.multiply(iInverse2), modulusPoly4.multiply(iInverse2)};
    }

    private int[] findErrorLocations(ModulusPoly modulusPoly) throws ChecksumException {
        int degree = modulusPoly.getDegree();
        int[] iArr = new int[degree];
        int i = 0;
        for (int i2 = 1; i2 < this.field.getSize() && i < degree; i2++) {
            if (modulusPoly.evaluateAt(i2) == 0) {
                iArr[i] = this.field.inverse(i2);
                i++;
            }
        }
        if (i == degree) {
            return iArr;
        }
        throw ChecksumException.getChecksumInstance();
    }

    private int[] findErrorMagnitudes(ModulusPoly modulusPoly, ModulusPoly modulusPoly2, int[] iArr) {
        int degree = modulusPoly2.getDegree();
        int[] iArr2 = new int[degree];
        for (int i = 1; i <= degree; i++) {
            iArr2[degree - i] = this.field.multiply(i, modulusPoly2.getCoefficient(i));
        }
        ModulusPoly modulusPoly3 = new ModulusPoly(this.field, iArr2);
        int length = iArr.length;
        int[] iArr3 = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            int iInverse = this.field.inverse(iArr[i2]);
            iArr3[i2] = this.field.multiply(this.field.subtract(0, modulusPoly.evaluateAt(iInverse)), this.field.inverse(modulusPoly3.evaluateAt(iInverse)));
        }
        return iArr3;
    }
}
