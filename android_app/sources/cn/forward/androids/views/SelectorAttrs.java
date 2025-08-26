package cn.forward.androids.views;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.view.View;
import cn.forward.androids.C0428R;

/* loaded from: classes.dex */
public class SelectorAttrs {
    public static final int LINE = 2;
    public static final int OVAL = 1;
    public static final int RECTANGLE = 0;
    public static final int RING = 3;

    /* JADX WARN: Removed duplicated region for block: B:100:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x022d  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0257  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x02f0  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x02fa  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x030c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:198:0x030e  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0311  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0314  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0324 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0329  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x032c  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x033f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:216:0x0346  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0348  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x0352  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x035d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x015e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0168  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void obtainsAttrs(android.content.Context r25, android.view.View r26, android.util.AttributeSet r27) {
        /*
            Method dump skipped, instructions count: 894
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.forward.androids.views.SelectorAttrs.obtainsAttrs(android.content.Context, android.view.View, android.util.AttributeSet):void");
    }

    private static boolean parseRipple(View view, TypedArray typedArray, Drawable drawable) {
        Drawable drawable2;
        if (Build.VERSION.SDK_INT < 21 || !typedArray.hasValue(C0428R.styleable.SelectorAttrs_sel_background_ripple)) {
            return false;
        }
        GradientDrawable gradientDrawable = null;
        if (typedArray.hasValue(C0428R.styleable.SelectorAttrs_sel_background_ripple_mask)) {
            drawable2 = typedArray.getDrawable(C0428R.styleable.SelectorAttrs_sel_background_ripple_mask);
            if (drawable2 instanceof ColorDrawable) {
                drawable2 = null;
            }
            if (drawable2 == null) {
                gradientDrawable = new GradientDrawable();
                parseRippleMaskShape(gradientDrawable, typedArray);
            }
        } else {
            drawable2 = null;
        }
        ColorStateList colorStateList = typedArray.getColorStateList(C0428R.styleable.SelectorAttrs_sel_background_ripple);
        if (drawable2 == null) {
            drawable2 = gradientDrawable;
        }
        view.setBackgroundDrawable(new RippleDrawable(colorStateList, drawable, drawable2));
        return true;
    }

    private static void parseRippleMaskShape(GradientDrawable gradientDrawable, TypedArray typedArray) {
        gradientDrawable.setColor(typedArray.getColor(C0428R.styleable.SelectorAttrs_sel_background_ripple_mask, 0));
        if (typedArray.hasValue(C0428R.styleable.SelectorAttrs_sel_background_ripple_mask_shape)) {
            int i = typedArray.getInt(C0428R.styleable.SelectorAttrs_sel_background_ripple_mask_shape, 0);
            if (i == 2) {
                gradientDrawable.setShape(2);
            } else if (i == 1) {
                gradientDrawable.setShape(1);
            } else if (i == 3) {
                gradientDrawable.setShape(3);
            } else {
                gradientDrawable.setShape(0);
            }
        }
        int dimensionPixelOffset = typedArray.getDimensionPixelOffset(C0428R.styleable.SelectorAttrs_sel_background_ripple_mask_corners, 0);
        gradientDrawable.setCornerRadius(dimensionPixelOffset);
        int dimensionPixelSize = typedArray.getDimensionPixelSize(C0428R.styleable.SelectorAttrs_sel_background_ripple_mask_corner_topLeft, dimensionPixelOffset);
        int dimensionPixelSize2 = typedArray.getDimensionPixelSize(C0428R.styleable.SelectorAttrs_sel_background_ripple_mask_corner_topRight, dimensionPixelOffset);
        int dimensionPixelSize3 = typedArray.getDimensionPixelSize(C0428R.styleable.SelectorAttrs_sel_background_ripple_mask_corner_bottomLeft, dimensionPixelOffset);
        int dimensionPixelSize4 = typedArray.getDimensionPixelSize(C0428R.styleable.SelectorAttrs_sel_background_ripple_mask_corner_bottomRight, dimensionPixelOffset);
        if (dimensionPixelSize == dimensionPixelOffset && dimensionPixelSize2 == dimensionPixelOffset && dimensionPixelSize3 == dimensionPixelOffset && dimensionPixelSize4 == dimensionPixelOffset) {
            return;
        }
        float f = dimensionPixelSize;
        float f2 = dimensionPixelSize2;
        float f3 = dimensionPixelSize4;
        float f4 = dimensionPixelSize3;
        gradientDrawable.setCornerRadii(new float[]{f, f, f2, f2, f3, f3, f4, f4});
    }
}
