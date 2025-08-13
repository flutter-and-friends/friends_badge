package com.google.zxing.pdf417.decoder.p015ec;

/* loaded from: classes.dex */
final class ModulusPoly {
    private final int[] coefficients;
    private final ModulusGF field;

    ModulusPoly(ModulusGF modulusGF, int[] iArr) {
        if (iArr.length == 0) {
            throw new IllegalArgumentException();
        }
        this.field = modulusGF;
        int length = iArr.length;
        if (length > 1 && iArr[0] == 0) {
            int i = 1;
            while (i < length && iArr[i] == 0) {
                i++;
            }
            if (i == length) {
                this.coefficients = new int[1];
                return;
            }
            this.coefficients = new int[length - i];
            int[] iArr2 = this.coefficients;
            System.arraycopy(iArr, i, iArr2, 0, iArr2.length);
            return;
        }
        this.coefficients = iArr;
    }

    int[] getCoefficients() {
        return this.coefficients;
    }

    int getDegree() {
        return this.coefficients.length - 1;
    }

    boolean isZero() {
        return this.coefficients[0] == 0;
    }

    int getCoefficient(int i) {
        return this.coefficients[(r0.length - 1) - i];
    }

    int evaluateAt(int i) {
        if (i == 0) {
            return getCoefficient(0);
        }
        int[] iArr = this.coefficients;
        int length = iArr.length;
        if (i == 1) {
            int iAdd = 0;
            for (int i2 : iArr) {
                iAdd = this.field.add(iAdd, i2);
            }
            return iAdd;
        }
        int iAdd2 = iArr[0];
        for (int i3 = 1; i3 < length; i3++) {
            ModulusGF modulusGF = this.field;
            iAdd2 = modulusGF.add(modulusGF.multiply(i, iAdd2), this.coefficients[i3]);
        }
        return iAdd2;
    }

    ModulusPoly add(ModulusPoly modulusPoly) {
        if (!this.field.equals(modulusPoly.field)) {
            throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
        }
        if (isZero()) {
            return modulusPoly;
        }
        if (modulusPoly.isZero()) {
            return this;
        }
        int[] iArr = this.coefficients;
        int[] iArr2 = modulusPoly.coefficients;
        if (iArr.length > iArr2.length) {
            iArr = iArr2;
            iArr2 = iArr;
        }
        int[] iArr3 = new int[iArr2.length];
        int length = iArr2.length - iArr.length;
        System.arraycopy(iArr2, 0, iArr3, 0, length);
        for (int i = length; i < iArr2.length; i++) {
            iArr3[i] = this.field.add(iArr[i - length], iArr2[i]);
        }
        return new ModulusPoly(this.field, iArr3);
    }

    ModulusPoly subtract(ModulusPoly modulusPoly) {
        if (this.field.equals(modulusPoly.field)) {
            return modulusPoly.isZero() ? this : add(modulusPoly.negative());
        }
        throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
    }

    ModulusPoly multiply(ModulusPoly modulusPoly) {
        if (!this.field.equals(modulusPoly.field)) {
            throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
        }
        if (isZero() || modulusPoly.isZero()) {
            return this.field.getZero();
        }
        int[] iArr = this.coefficients;
        int length = iArr.length;
        int[] iArr2 = modulusPoly.coefficients;
        int length2 = iArr2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            for (int i3 = 0; i3 < length2; i3++) {
                int i4 = i + i3;
                ModulusGF modulusGF = this.field;
                iArr3[i4] = modulusGF.add(iArr3[i4], modulusGF.multiply(i2, iArr2[i3]));
            }
        }
        return new ModulusPoly(this.field, iArr3);
    }

    ModulusPoly negative() {
        int length = this.coefficients.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = this.field.subtract(0, this.coefficients[i]);
        }
        return new ModulusPoly(this.field, iArr);
    }

    ModulusPoly multiply(int i) {
        if (i == 0) {
            return this.field.getZero();
        }
        if (i == 1) {
            return this;
        }
        int length = this.coefficients.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = this.field.multiply(this.coefficients[i2], i);
        }
        return new ModulusPoly(this.field, iArr);
    }

    ModulusPoly multiplyByMonomial(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        if (i2 == 0) {
            return this.field.getZero();
        }
        int length = this.coefficients.length;
        int[] iArr = new int[i + length];
        for (int i3 = 0; i3 < length; i3++) {
            iArr[i3] = this.field.multiply(this.coefficients[i3], i2);
        }
        return new ModulusPoly(this.field, iArr);
    }

    ModulusPoly[] divide(ModulusPoly modulusPoly) {
        if (!this.field.equals(modulusPoly.field)) {
            throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
        }
        if (modulusPoly.isZero()) {
            throw new IllegalArgumentException("Divide by 0");
        }
        ModulusPoly zero = this.field.getZero();
        int iInverse = this.field.inverse(modulusPoly.getCoefficient(modulusPoly.getDegree()));
        ModulusPoly modulusPolyAdd = zero;
        ModulusPoly modulusPolySubtract = this;
        while (modulusPolySubtract.getDegree() >= modulusPoly.getDegree() && !modulusPolySubtract.isZero()) {
            int degree = modulusPolySubtract.getDegree() - modulusPoly.getDegree();
            int iMultiply = this.field.multiply(modulusPolySubtract.getCoefficient(modulusPolySubtract.getDegree()), iInverse);
            ModulusPoly modulusPolyMultiplyByMonomial = modulusPoly.multiplyByMonomial(degree, iMultiply);
            modulusPolyAdd = modulusPolyAdd.add(this.field.buildMonomial(degree, iMultiply));
            modulusPolySubtract = modulusPolySubtract.subtract(modulusPolyMultiplyByMonomial);
        }
        return new ModulusPoly[]{modulusPolyAdd, modulusPolySubtract};
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(getDegree() * 8);
        for (int degree = getDegree(); degree >= 0; degree--) {
            int coefficient = getCoefficient(degree);
            if (coefficient != 0) {
                if (coefficient < 0) {
                    sb.append(" - ");
                    coefficient = -coefficient;
                } else if (sb.length() > 0) {
                    sb.append(" + ");
                }
                if (degree == 0 || coefficient != 1) {
                    sb.append(coefficient);
                }
                if (degree != 0) {
                    if (degree == 1) {
                        sb.append('x');
                    } else {
                        sb.append("x^");
                        sb.append(degree);
                    }
                }
            }
        }
        return sb.toString();
    }
}
