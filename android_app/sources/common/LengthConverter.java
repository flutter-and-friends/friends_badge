package common;

import java.lang.reflect.Array;

/* loaded from: classes2.dex */
public class LengthConverter {
    private static double[][] factors = (double[][]) Array.newInstance((Class<?>) double.class, LengthUnit.getCount(), LengthUnit.getCount());

    static {
        factors[LengthUnit.POINTS.getIndex()][LengthUnit.POINTS.getIndex()] = 1.0d;
        factors[LengthUnit.METRES.getIndex()][LengthUnit.METRES.getIndex()] = 1.0d;
        factors[LengthUnit.CENTIMETRES.getIndex()][LengthUnit.CENTIMETRES.getIndex()] = 1.0d;
        factors[LengthUnit.INCHES.getIndex()][LengthUnit.INCHES.getIndex()] = 1.0d;
        factors[LengthUnit.POINTS.getIndex()][LengthUnit.METRES.getIndex()] = 3.5277777778E-4d;
        factors[LengthUnit.POINTS.getIndex()][LengthUnit.CENTIMETRES.getIndex()] = 0.035277777778d;
        factors[LengthUnit.POINTS.getIndex()][LengthUnit.INCHES.getIndex()] = 0.013888888889d;
        factors[LengthUnit.METRES.getIndex()][LengthUnit.POINTS.getIndex()] = 2877.84d;
        factors[LengthUnit.METRES.getIndex()][LengthUnit.CENTIMETRES.getIndex()] = 100.0d;
        factors[LengthUnit.METRES.getIndex()][LengthUnit.INCHES.getIndex()] = 39.37d;
        factors[LengthUnit.CENTIMETRES.getIndex()][LengthUnit.POINTS.getIndex()] = 28.34643d;
        factors[LengthUnit.CENTIMETRES.getIndex()][LengthUnit.METRES.getIndex()] = 0.01d;
        factors[LengthUnit.CENTIMETRES.getIndex()][LengthUnit.INCHES.getIndex()] = 0.3937d;
        factors[LengthUnit.INCHES.getIndex()][LengthUnit.POINTS.getIndex()] = 72.0d;
        factors[LengthUnit.INCHES.getIndex()][LengthUnit.METRES.getIndex()] = 0.0254d;
        factors[LengthUnit.INCHES.getIndex()][LengthUnit.CENTIMETRES.getIndex()] = 2.54d;
    }

    public static double getConversionFactor(LengthUnit lengthUnit, LengthUnit lengthUnit2) {
        return factors[lengthUnit.getIndex()][lengthUnit2.getIndex()];
    }
}
