package com.google.android.material.shape;

/* loaded from: classes.dex */
public class CutCornerTreatment extends CornerTreatment {
    private final float size;

    public CutCornerTreatment(float f) {
        this.size = f;
    }

    @Override // com.google.android.material.shape.CornerTreatment
    public void getCornerPath(float f, float f2, ShapePath shapePath) {
        shapePath.reset(0.0f, this.size * f2);
        double d = f;
        double d2 = f2;
        shapePath.lineTo((float) (Math.sin(d) * this.size * d2), (float) (Math.cos(d) * this.size * d2));
    }
}
