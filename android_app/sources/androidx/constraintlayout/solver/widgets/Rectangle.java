package androidx.constraintlayout.solver.widgets;

/* loaded from: classes.dex */
public class Rectangle {
    public int height;
    public int width;

    /* renamed from: x */
    public int f41x;

    /* renamed from: y */
    public int f42y;

    public void setBounds(int i, int i2, int i3, int i4) {
        this.f41x = i;
        this.f42y = i2;
        this.width = i3;
        this.height = i4;
    }

    void grow(int i, int i2) {
        this.f41x -= i;
        this.f42y -= i2;
        this.width += i * 2;
        this.height += i2 * 2;
    }

    boolean intersects(Rectangle rectangle) {
        int i;
        int i2;
        int i3 = this.f41x;
        int i4 = rectangle.f41x;
        return i3 >= i4 && i3 < i4 + rectangle.width && (i = this.f42y) >= (i2 = rectangle.f42y) && i < i2 + rectangle.height;
    }

    public boolean contains(int i, int i2) {
        int i3;
        int i4 = this.f41x;
        return i >= i4 && i < i4 + this.width && i2 >= (i3 = this.f42y) && i2 < i3 + this.height;
    }

    public int getCenterX() {
        return (this.f41x + this.width) / 2;
    }

    public int getCenterY() {
        return (this.f42y + this.height) / 2;
    }
}
