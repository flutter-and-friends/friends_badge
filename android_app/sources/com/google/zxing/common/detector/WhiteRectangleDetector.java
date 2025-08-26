package com.google.zxing.common.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;

/* loaded from: classes.dex */
public final class WhiteRectangleDetector {
    private static final int CORR = 1;
    private static final int INIT_SIZE = 10;
    private final int downInit;
    private final int height;
    private final BitMatrix image;
    private final int leftInit;
    private final int rightInit;
    private final int upInit;
    private final int width;

    public WhiteRectangleDetector(BitMatrix bitMatrix) throws NotFoundException {
        this(bitMatrix, 10, bitMatrix.getWidth() / 2, bitMatrix.getHeight() / 2);
    }

    public WhiteRectangleDetector(BitMatrix bitMatrix, int i, int i2, int i3) throws NotFoundException {
        this.image = bitMatrix;
        this.height = bitMatrix.getHeight();
        this.width = bitMatrix.getWidth();
        int i4 = i / 2;
        this.leftInit = i2 - i4;
        this.rightInit = i2 + i4;
        this.upInit = i3 - i4;
        this.downInit = i3 + i4;
        if (this.upInit < 0 || this.leftInit < 0 || this.downInit >= this.height || this.rightInit >= this.width) {
            throw NotFoundException.getNotFoundInstance();
        }
    }

    public ResultPoint[] detect() throws NotFoundException {
        int i = this.leftInit;
        int i2 = this.rightInit;
        int i3 = this.upInit;
        int i4 = this.downInit;
        boolean z = false;
        int i5 = i;
        boolean z2 = true;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        while (z2) {
            boolean zContainsBlackPoint = true;
            boolean z8 = false;
            while (true) {
                if ((!zContainsBlackPoint && z3) || i2 >= this.width) {
                    break;
                }
                zContainsBlackPoint = containsBlackPoint(i3, i4, i2, false);
                if (zContainsBlackPoint) {
                    i2++;
                    z3 = true;
                    z8 = true;
                } else if (!z3) {
                    i2++;
                }
            }
            if (i2 < this.width) {
                boolean zContainsBlackPoint2 = true;
                while (true) {
                    if ((!zContainsBlackPoint2 && z4) || i4 >= this.height) {
                        break;
                    }
                    zContainsBlackPoint2 = containsBlackPoint(i5, i2, i4, true);
                    if (zContainsBlackPoint2) {
                        i4++;
                        z4 = true;
                        z8 = true;
                    } else if (!z4) {
                        i4++;
                    }
                }
                if (i4 < this.height) {
                    boolean zContainsBlackPoint3 = true;
                    while (true) {
                        if ((!zContainsBlackPoint3 && z5) || i5 < 0) {
                            break;
                        }
                        zContainsBlackPoint3 = containsBlackPoint(i3, i4, i5, false);
                        if (zContainsBlackPoint3) {
                            i5--;
                            z5 = true;
                            z8 = true;
                        } else if (!z5) {
                            i5--;
                        }
                    }
                    if (i5 >= 0) {
                        boolean zContainsBlackPoint4 = true;
                        while (true) {
                            if ((!zContainsBlackPoint4 && z7) || i3 < 0) {
                                break;
                            }
                            zContainsBlackPoint4 = containsBlackPoint(i5, i2, i3, true);
                            if (zContainsBlackPoint4) {
                                i3--;
                                z7 = true;
                                z8 = true;
                            } else if (!z7) {
                                i3--;
                            }
                        }
                        if (i3 >= 0) {
                            z2 = z8;
                            if (z8) {
                                z6 = true;
                            }
                        }
                    }
                }
            }
            z = true;
            break;
        }
        if (z || !z6) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i6 = i2 - i5;
        ResultPoint blackPointOnSegment = null;
        ResultPoint blackPointOnSegment2 = null;
        for (int i7 = 1; i7 < i6; i7++) {
            blackPointOnSegment2 = getBlackPointOnSegment(i5, i4 - i7, i5 + i7, i4);
            if (blackPointOnSegment2 != null) {
                break;
            }
        }
        if (blackPointOnSegment2 == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        ResultPoint blackPointOnSegment3 = null;
        for (int i8 = 1; i8 < i6; i8++) {
            blackPointOnSegment3 = getBlackPointOnSegment(i5, i3 + i8, i5 + i8, i3);
            if (blackPointOnSegment3 != null) {
                break;
            }
        }
        if (blackPointOnSegment3 == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        ResultPoint blackPointOnSegment4 = null;
        for (int i9 = 1; i9 < i6; i9++) {
            blackPointOnSegment4 = getBlackPointOnSegment(i2, i3 + i9, i2 - i9, i3);
            if (blackPointOnSegment4 != null) {
                break;
            }
        }
        if (blackPointOnSegment4 == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        for (int i10 = 1; i10 < i6; i10++) {
            blackPointOnSegment = getBlackPointOnSegment(i2, i4 - i10, i2 - i10, i4);
            if (blackPointOnSegment != null) {
                break;
            }
        }
        if (blackPointOnSegment == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        return centerEdges(blackPointOnSegment, blackPointOnSegment2, blackPointOnSegment4, blackPointOnSegment3);
    }

    private ResultPoint getBlackPointOnSegment(float f, float f2, float f3, float f4) {
        int iRound = MathUtils.round(MathUtils.distance(f, f2, f3, f4));
        float f5 = iRound;
        float f6 = (f3 - f) / f5;
        float f7 = (f4 - f2) / f5;
        for (int i = 0; i < iRound; i++) {
            float f8 = i;
            int iRound2 = MathUtils.round((f8 * f6) + f);
            int iRound3 = MathUtils.round((f8 * f7) + f2);
            if (this.image.get(iRound2, iRound3)) {
                return new ResultPoint(iRound2, iRound3);
            }
        }
        return null;
    }

    private ResultPoint[] centerEdges(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4) {
        float x = resultPoint.getX();
        float y = resultPoint.getY();
        float x2 = resultPoint2.getX();
        float y2 = resultPoint2.getY();
        float x3 = resultPoint3.getX();
        float y3 = resultPoint3.getY();
        float x4 = resultPoint4.getX();
        float y4 = resultPoint4.getY();
        return x < ((float) this.width) / 2.0f ? new ResultPoint[]{new ResultPoint(x4 - 1.0f, y4 + 1.0f), new ResultPoint(x2 + 1.0f, y2 + 1.0f), new ResultPoint(x3 - 1.0f, y3 - 1.0f), new ResultPoint(x + 1.0f, y - 1.0f)} : new ResultPoint[]{new ResultPoint(x4 + 1.0f, y4 + 1.0f), new ResultPoint(x2 + 1.0f, y2 - 1.0f), new ResultPoint(x3 - 1.0f, y3 + 1.0f), new ResultPoint(x - 1.0f, y - 1.0f)};
    }

    private boolean containsBlackPoint(int i, int i2, int i3, boolean z) {
        if (z) {
            while (i <= i2) {
                if (this.image.get(i, i3)) {
                    return true;
                }
                i++;
            }
            return false;
        }
        while (i <= i2) {
            if (this.image.get(i3, i)) {
                return true;
            }
            i++;
        }
        return false;
    }
}
