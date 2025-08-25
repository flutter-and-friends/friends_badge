package cn.forward.androids.views;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import cn.forward.androids.R;

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
    */
    public static void obtainsAttrs(Context context, View view, AttributeSet attributeSet) {
        Drawable drawable;
        GradientDrawable gradientDrawable;
        Drawable drawable2;
        GradientDrawable gradientDrawable2;
        Drawable drawable3;
        GradientDrawable gradientDrawable3;
        int color;
        GradientDrawable gradientDrawable4;
        int i;
        float[] fArr;
        int dimensionPixelOffset;
        int dimensionPixelSize;
        int dimensionPixelSize2;
        int dimensionPixelSize3;
        int dimensionPixelSize4;
        float[] fArr2;
        int dimensionPixelOffset2;
        StateListDrawable stateListDrawable;
        StateListDrawable stateListDrawable2;
        Drawable drawable4;
        int i2;
        Drawable layerDrawable;
        Drawable background = view.getBackground();
        if (background instanceof StateListDrawable) {
            return;
        }
        if (Build.VERSION.SDK_INT < 21 || !(background instanceof RippleDrawable)) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SelectorAttrs);
            if (background instanceof ColorDrawable) {
                background = null;
            }
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.SelectorAttrs_sel_background_pressed) || typedArrayObtainStyledAttributes.hasValue(R.styleable.SelectorAttrs_sel_background_border_pressed)) {
                drawable = typedArrayObtainStyledAttributes.getDrawable(R.styleable.SelectorAttrs_sel_background_pressed);
                if (drawable instanceof ColorDrawable) {
                    drawable = null;
                }
                gradientDrawable = drawable == null ? new GradientDrawable() : null;
                if (!typedArrayObtainStyledAttributes.hasValue(R.styleable.SelectorAttrs_sel_background_selected) || typedArrayObtainStyledAttributes.hasValue(R.styleable.SelectorAttrs_sel_background_border_selected)) {
                    drawable2 = typedArrayObtainStyledAttributes.getDrawable(R.styleable.SelectorAttrs_sel_background_selected);
                    if (drawable2 instanceof ColorDrawable) {
                        drawable2 = null;
                    }
                    gradientDrawable2 = drawable2 != null ? new GradientDrawable() : null;
                    if (typedArrayObtainStyledAttributes.hasValue(R.styleable.SelectorAttrs_sel_background_disable) || typedArrayObtainStyledAttributes.hasValue(R.styleable.SelectorAttrs_sel_background_border_disable)) {
                        drawable3 = typedArrayObtainStyledAttributes.getDrawable(R.styleable.SelectorAttrs_sel_background_disable);
                        if (drawable3 instanceof ColorDrawable) {
                            drawable3 = null;
                        }
                        gradientDrawable3 = drawable3 != null ? new GradientDrawable() : null;
                        if (background != null) {
                            color = 0;
                            gradientDrawable4 = null;
                        } else {
                            Drawable background2 = view.getBackground();
                            if (background2 == null && typedArrayObtainStyledAttributes.hasValue(R.styleable.SelectorAttrs_sel_background)) {
                                background2 = typedArrayObtainStyledAttributes.getDrawable(R.styleable.SelectorAttrs_sel_background);
                            }
                            if (background2 instanceof ColorDrawable) {
                                GradientDrawable gradientDrawable5 = new GradientDrawable();
                                color = ((ColorDrawable) background2).getColor();
                                gradientDrawable5.setColor(color);
                                gradientDrawable4 = gradientDrawable5;
                            }
                        }
                        if (gradientDrawable != null) {
                            gradientDrawable.setColor(color);
                        }
                        if (gradientDrawable2 != null) {
                            gradientDrawable2.setColor(color);
                        }
                        if (gradientDrawable3 != null) {
                            gradientDrawable3.setColor(color);
                        }
                        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.SelectorAttrs_sel_background_shape)) {
                            i = 0;
                        } else {
                            i = typedArrayObtainStyledAttributes.getInt(R.styleable.SelectorAttrs_sel_background_shape, 0);
                            if (gradientDrawable4 != null) {
                                gradientDrawable4.setShape(i);
                            }
                            if (gradientDrawable != null) {
                                gradientDrawable.setShape(i);
                            }
                            if (gradientDrawable2 != null) {
                                gradientDrawable2.setShape(i);
                            }
                            if (gradientDrawable3 != null) {
                                gradientDrawable3.setShape(i);
                            }
                        }
                        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.SelectorAttrs_sel_background_corners)) {
                            fArr = null;
                            dimensionPixelOffset = 0;
                        } else {
                            dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.SelectorAttrs_sel_background_corners, 0);
                            if (gradientDrawable4 != null) {
                                gradientDrawable4.setCornerRadius(dimensionPixelOffset);
                            }
                            if (gradientDrawable != null) {
                                gradientDrawable.setCornerRadius(dimensionPixelOffset);
                            }
                            if (gradientDrawable2 != null) {
                                gradientDrawable2.setCornerRadius(dimensionPixelOffset);
                            }
                            if (gradientDrawable3 != null) {
                                gradientDrawable3.setCornerRadius(dimensionPixelOffset);
                            }
                            float f = dimensionPixelOffset;
                            fArr = new float[]{f, f, f, f, f, f, f, f};
                        }
                        dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SelectorAttrs_sel_background_corner_topLeft, dimensionPixelOffset);
                        dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SelectorAttrs_sel_background_corner_topRight, dimensionPixelOffset);
                        float[] fArr3 = fArr;
                        dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SelectorAttrs_sel_background_corner_bottomLeft, dimensionPixelOffset);
                        dimensionPixelSize4 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SelectorAttrs_sel_background_corner_bottomRight, dimensionPixelOffset);
                        if (dimensionPixelSize != dimensionPixelOffset && dimensionPixelSize2 == dimensionPixelOffset && dimensionPixelSize3 == dimensionPixelOffset && dimensionPixelSize4 == dimensionPixelOffset) {
                            fArr2 = fArr3;
                        } else {
                            float f2 = dimensionPixelSize;
                            float f3 = dimensionPixelSize2;
                            float f4 = dimensionPixelSize4;
                            float f5 = dimensionPixelSize3;
                            fArr2 = new float[]{f2, f2, f3, f3, f4, f4, f5, f5};
                            if (gradientDrawable4 != null) {
                                gradientDrawable4.setCornerRadii(fArr2);
                            }
                            if (gradientDrawable != null) {
                                gradientDrawable.setCornerRadii(fArr2);
                            }
                            if (gradientDrawable2 != null) {
                                gradientDrawable2.setCornerRadii(fArr2);
                            }
                            if (gradientDrawable3 != null) {
                                gradientDrawable3.setCornerRadii(fArr2);
                            }
                        }
                        dimensionPixelOffset2 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.SelectorAttrs_sel_background_border_width, -1);
                        if (dimensionPixelOffset2 != -1) {
                            if (gradientDrawable4 != null) {
                                gradientDrawable4.setStroke(dimensionPixelOffset2, 0);
                            }
                            if (gradientDrawable != null) {
                                gradientDrawable.setStroke(dimensionPixelOffset2, 0);
                            }
                            if (gradientDrawable2 != null) {
                                gradientDrawable2.setStroke(dimensionPixelOffset2, 0);
                            }
                            if (gradientDrawable3 != null) {
                                gradientDrawable3.setStroke(dimensionPixelOffset2, 0);
                            }
                        }
                        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.SelectorAttrs_sel_background_border_color)) {
                            int color2 = typedArrayObtainStyledAttributes.getColor(R.styleable.SelectorAttrs_sel_background_border_color, -1);
                            if (gradientDrawable4 != null) {
                                gradientDrawable4.setStroke(dimensionPixelOffset2, color2);
                            }
                            if (gradientDrawable != null) {
                                gradientDrawable.setStroke(dimensionPixelOffset2, color2);
                            }
                            if (gradientDrawable2 != null) {
                                gradientDrawable2.setStroke(dimensionPixelOffset2, color2);
                            }
                            if (gradientDrawable3 != null) {
                                gradientDrawable3.setStroke(dimensionPixelOffset2, color2);
                            }
                        }
                        if (gradientDrawable4 != null) {
                            gradientDrawable4.setColor(color);
                        }
                        if (gradientDrawable != null && typedArrayObtainStyledAttributes.hasValue(R.styleable.SelectorAttrs_sel_background_pressed)) {
                            gradientDrawable.setColor(typedArrayObtainStyledAttributes.getColor(R.styleable.SelectorAttrs_sel_background_pressed, 0));
                        }
                        if (gradientDrawable != null && typedArrayObtainStyledAttributes.hasValue(R.styleable.SelectorAttrs_sel_background_border_pressed)) {
                            gradientDrawable.setStroke(dimensionPixelOffset2, typedArrayObtainStyledAttributes.getColor(R.styleable.SelectorAttrs_sel_background_border_pressed, -1));
                        }
                        if (gradientDrawable2 != null && typedArrayObtainStyledAttributes.hasValue(R.styleable.SelectorAttrs_sel_background_selected)) {
                            gradientDrawable2.setColor(typedArrayObtainStyledAttributes.getColor(R.styleable.SelectorAttrs_sel_background_selected, -1));
                        }
                        if (gradientDrawable2 != null && typedArrayObtainStyledAttributes.hasValue(R.styleable.SelectorAttrs_sel_background_border_selected)) {
                            gradientDrawable2.setStroke(dimensionPixelOffset2, typedArrayObtainStyledAttributes.getColor(R.styleable.SelectorAttrs_sel_background_border_selected, -1));
                        }
                        if (gradientDrawable3 != null && typedArrayObtainStyledAttributes.hasValue(R.styleable.SelectorAttrs_sel_background_disable)) {
                            gradientDrawable3.setColor(typedArrayObtainStyledAttributes.getColor(R.styleable.SelectorAttrs_sel_background_disable, -1));
                        }
                        if (gradientDrawable3 != null && typedArrayObtainStyledAttributes.hasValue(R.styleable.SelectorAttrs_sel_background_border_disable)) {
                            gradientDrawable3.setStroke(dimensionPixelOffset2, typedArrayObtainStyledAttributes.getColor(R.styleable.SelectorAttrs_sel_background_border_disable, -1));
                        }
                        if (Build.VERSION.SDK_INT >= 21 && typedArrayObtainStyledAttributes.hasValue(R.styleable.SelectorAttrs_sel_background_ripple)) {
                            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.SelectorAttrs_sel_background_ripple_mask)) {
                                if (typedArrayObtainStyledAttributes.getDrawable(R.styleable.SelectorAttrs_sel_background_ripple_mask) instanceof ColorDrawable) {
                                    GradientDrawable gradientDrawable6 = new GradientDrawable();
                                    GradientDrawable gradientDrawable7 = gradientDrawable6;
                                    parseRippleMaskShape(gradientDrawable7, typedArrayObtainStyledAttributes);
                                    gradientDrawable7.setColor(typedArrayObtainStyledAttributes.getColor(R.styleable.SelectorAttrs_sel_background_ripple, 0));
                                    drawable4 = gradientDrawable6;
                                } else {
                                    drawable4 = typedArrayObtainStyledAttributes.getDrawable(R.styleable.SelectorAttrs_sel_background_ripple);
                                }
                            } else if (gradientDrawable4 != null || gradientDrawable != null) {
                                GradientDrawable gradientDrawable8 = new GradientDrawable();
                                gradientDrawable8.setShape(i);
                                gradientDrawable8.setCornerRadii(fArr2);
                                gradientDrawable8.setColor(typedArrayObtainStyledAttributes.getColor(R.styleable.SelectorAttrs_sel_background_ripple, 0));
                                drawable4 = gradientDrawable8;
                            } else {
                                drawable4 = typedArrayObtainStyledAttributes.getDrawable(R.styleable.SelectorAttrs_sel_background_ripple);
                            }
                            if (gradientDrawable != null || drawable != null) {
                                i2 = 2;
                                Drawable[] drawableArr = new Drawable[2];
                                if (drawable == null) {
                                    drawable = gradientDrawable;
                                }
                                drawableArr[0] = drawable;
                                drawableArr[1] = drawable4;
                                layerDrawable = new LayerDrawable(drawableArr);
                            } else if (background == null && gradientDrawable4 == null) {
                                layerDrawable = drawable4;
                                i2 = 2;
                            } else {
                                i2 = 2;
                                Drawable[] drawableArr2 = new Drawable[2];
                                drawableArr2[0] = background != null ? background : gradientDrawable4;
                                drawableArr2[1] = drawable4;
                                layerDrawable = new LayerDrawable(drawableArr2);
                            }
                            StateListDrawable stateListDrawable3 = new StateListDrawable();
                            int[] iArr = new int[i2];
                            // fill-array-data instruction
                            iArr[0] = 16842910;
                            iArr[1] = 16842919;
                            stateListDrawable3.addState(iArr, layerDrawable);
                            stateListDrawable = stateListDrawable3;
                        } else if (gradientDrawable == null || drawable != null) {
                            if (drawable == null) {
                                drawable = gradientDrawable;
                            }
                            StateListDrawable stateListDrawable4 = new StateListDrawable();
                            stateListDrawable4.addState(new int[]{android.R.attr.state_enabled, android.R.attr.state_pressed}, drawable);
                            stateListDrawable = stateListDrawable4;
                        } else {
                            stateListDrawable = null;
                        }
                        if (gradientDrawable2 == null || drawable2 != null) {
                            if (drawable2 == null) {
                                drawable2 = gradientDrawable2;
                            }
                            if (stateListDrawable == null) {
                                stateListDrawable = new StateListDrawable();
                            }
                            stateListDrawable.addState(new int[]{android.R.attr.state_enabled, android.R.attr.state_selected}, drawable2);
                        }
                        if (gradientDrawable3 == null || drawable3 != null) {
                            if (drawable3 == null) {
                                drawable3 = gradientDrawable3;
                            }
                            if (stateListDrawable == null) {
                                stateListDrawable = new StateListDrawable();
                            }
                            stateListDrawable.addState(new int[]{-16842910}, drawable3);
                        }
                        if (background == null || gradientDrawable4 != null) {
                            if (stateListDrawable == null) {
                                stateListDrawable = new StateListDrawable();
                            }
                            int[] iArr2 = new int[0];
                            Drawable drawable5 = gradientDrawable4;
                            if (background != null) {
                                drawable5 = background;
                            }
                            stateListDrawable.addState(iArr2, drawable5);
                        }
                        stateListDrawable2 = stateListDrawable;
                        if (!parseRipple(view, typedArrayObtainStyledAttributes, stateListDrawable2) && stateListDrawable2 != null) {
                            view.setBackgroundDrawable(stateListDrawable2);
                        }
                        typedArrayObtainStyledAttributes.recycle();
                    }
                    drawable3 = null;
                    if (background != null) {
                    }
                    if (gradientDrawable != null) {
                    }
                    if (gradientDrawable2 != null) {
                    }
                    if (gradientDrawable3 != null) {
                    }
                    if (typedArrayObtainStyledAttributes.hasValue(R.styleable.SelectorAttrs_sel_background_shape)) {
                    }
                    if (typedArrayObtainStyledAttributes.hasValue(R.styleable.SelectorAttrs_sel_background_corners)) {
                    }
                    dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SelectorAttrs_sel_background_corner_topLeft, dimensionPixelOffset);
                    dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SelectorAttrs_sel_background_corner_topRight, dimensionPixelOffset);
                    float[] fArr32 = fArr;
                    dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SelectorAttrs_sel_background_corner_bottomLeft, dimensionPixelOffset);
                    dimensionPixelSize4 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SelectorAttrs_sel_background_corner_bottomRight, dimensionPixelOffset);
                    if (dimensionPixelSize != dimensionPixelOffset) {
                        float f22 = dimensionPixelSize;
                        float f32 = dimensionPixelSize2;
                        float f42 = dimensionPixelSize4;
                        float f52 = dimensionPixelSize3;
                        fArr2 = new float[]{f22, f22, f32, f32, f42, f42, f52, f52};
                        if (gradientDrawable4 != null) {
                        }
                        if (gradientDrawable != null) {
                        }
                        if (gradientDrawable2 != null) {
                        }
                        if (gradientDrawable3 != null) {
                        }
                    }
                    dimensionPixelOffset2 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.SelectorAttrs_sel_background_border_width, -1);
                    if (dimensionPixelOffset2 != -1) {
                    }
                    if (typedArrayObtainStyledAttributes.hasValue(R.styleable.SelectorAttrs_sel_background_border_color)) {
                    }
                    if (gradientDrawable4 != null) {
                    }
                    if (gradientDrawable != null) {
                        gradientDrawable.setColor(typedArrayObtainStyledAttributes.getColor(R.styleable.SelectorAttrs_sel_background_pressed, 0));
                    }
                    if (gradientDrawable != null) {
                        gradientDrawable.setStroke(dimensionPixelOffset2, typedArrayObtainStyledAttributes.getColor(R.styleable.SelectorAttrs_sel_background_border_pressed, -1));
                    }
                    if (gradientDrawable2 != null) {
                        gradientDrawable2.setColor(typedArrayObtainStyledAttributes.getColor(R.styleable.SelectorAttrs_sel_background_selected, -1));
                    }
                    if (gradientDrawable2 != null) {
                        gradientDrawable2.setStroke(dimensionPixelOffset2, typedArrayObtainStyledAttributes.getColor(R.styleable.SelectorAttrs_sel_background_border_selected, -1));
                    }
                    if (gradientDrawable3 != null) {
                        gradientDrawable3.setColor(typedArrayObtainStyledAttributes.getColor(R.styleable.SelectorAttrs_sel_background_disable, -1));
                    }
                    if (gradientDrawable3 != null) {
                        gradientDrawable3.setStroke(dimensionPixelOffset2, typedArrayObtainStyledAttributes.getColor(R.styleable.SelectorAttrs_sel_background_border_disable, -1));
                    }
                    if (Build.VERSION.SDK_INT >= 21) {
                        if (gradientDrawable == null) {
                            if (drawable == null) {
                            }
                            StateListDrawable stateListDrawable42 = new StateListDrawable();
                            stateListDrawable42.addState(new int[]{android.R.attr.state_enabled, android.R.attr.state_pressed}, drawable);
                            stateListDrawable = stateListDrawable42;
                        }
                    }
                    if (gradientDrawable2 == null) {
                        if (drawable2 == null) {
                        }
                        if (stateListDrawable == null) {
                        }
                        stateListDrawable.addState(new int[]{android.R.attr.state_enabled, android.R.attr.state_selected}, drawable2);
                    }
                    if (gradientDrawable3 == null) {
                        if (drawable3 == null) {
                        }
                        if (stateListDrawable == null) {
                        }
                        stateListDrawable.addState(new int[]{-16842910}, drawable3);
                    }
                    if (background == null) {
                        if (stateListDrawable == null) {
                        }
                        int[] iArr22 = new int[0];
                        Drawable drawable52 = gradientDrawable4;
                        if (background != null) {
                        }
                        stateListDrawable.addState(iArr22, drawable52);
                    }
                    stateListDrawable2 = stateListDrawable;
                    if (!parseRipple(view, typedArrayObtainStyledAttributes, stateListDrawable2)) {
                        view.setBackgroundDrawable(stateListDrawable2);
                    }
                    typedArrayObtainStyledAttributes.recycle();
                }
                drawable2 = null;
                if (typedArrayObtainStyledAttributes.hasValue(R.styleable.SelectorAttrs_sel_background_disable)) {
                    drawable3 = typedArrayObtainStyledAttributes.getDrawable(R.styleable.SelectorAttrs_sel_background_disable);
                    if (drawable3 instanceof ColorDrawable) {
                    }
                    if (drawable3 != null) {
                    }
                }
                if (background != null) {
                }
                if (gradientDrawable != null) {
                }
                if (gradientDrawable2 != null) {
                }
                if (gradientDrawable3 != null) {
                }
                if (typedArrayObtainStyledAttributes.hasValue(R.styleable.SelectorAttrs_sel_background_shape)) {
                }
                if (typedArrayObtainStyledAttributes.hasValue(R.styleable.SelectorAttrs_sel_background_corners)) {
                }
                dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SelectorAttrs_sel_background_corner_topLeft, dimensionPixelOffset);
                dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SelectorAttrs_sel_background_corner_topRight, dimensionPixelOffset);
                float[] fArr322 = fArr;
                dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SelectorAttrs_sel_background_corner_bottomLeft, dimensionPixelOffset);
                dimensionPixelSize4 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SelectorAttrs_sel_background_corner_bottomRight, dimensionPixelOffset);
                if (dimensionPixelSize != dimensionPixelOffset) {
                }
                dimensionPixelOffset2 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.SelectorAttrs_sel_background_border_width, -1);
                if (dimensionPixelOffset2 != -1) {
                }
                if (typedArrayObtainStyledAttributes.hasValue(R.styleable.SelectorAttrs_sel_background_border_color)) {
                }
                if (gradientDrawable4 != null) {
                }
                if (gradientDrawable != null) {
                }
                if (gradientDrawable != null) {
                }
                if (gradientDrawable2 != null) {
                }
                if (gradientDrawable2 != null) {
                }
                if (gradientDrawable3 != null) {
                }
                if (gradientDrawable3 != null) {
                }
                if (Build.VERSION.SDK_INT >= 21) {
                }
                if (gradientDrawable2 == null) {
                }
                if (gradientDrawable3 == null) {
                }
                if (background == null) {
                }
                stateListDrawable2 = stateListDrawable;
                if (!parseRipple(view, typedArrayObtainStyledAttributes, stateListDrawable2)) {
                }
                typedArrayObtainStyledAttributes.recycle();
            }
            drawable = null;
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.SelectorAttrs_sel_background_selected)) {
                drawable2 = typedArrayObtainStyledAttributes.getDrawable(R.styleable.SelectorAttrs_sel_background_selected);
                if (drawable2 instanceof ColorDrawable) {
                }
                if (drawable2 != null) {
                }
            }
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.SelectorAttrs_sel_background_disable)) {
            }
            if (background != null) {
            }
            if (gradientDrawable != null) {
            }
            if (gradientDrawable2 != null) {
            }
            if (gradientDrawable3 != null) {
            }
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.SelectorAttrs_sel_background_shape)) {
            }
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.SelectorAttrs_sel_background_corners)) {
            }
            dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SelectorAttrs_sel_background_corner_topLeft, dimensionPixelOffset);
            dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SelectorAttrs_sel_background_corner_topRight, dimensionPixelOffset);
            float[] fArr3222 = fArr;
            dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SelectorAttrs_sel_background_corner_bottomLeft, dimensionPixelOffset);
            dimensionPixelSize4 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SelectorAttrs_sel_background_corner_bottomRight, dimensionPixelOffset);
            if (dimensionPixelSize != dimensionPixelOffset) {
            }
            dimensionPixelOffset2 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.SelectorAttrs_sel_background_border_width, -1);
            if (dimensionPixelOffset2 != -1) {
            }
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.SelectorAttrs_sel_background_border_color)) {
            }
            if (gradientDrawable4 != null) {
            }
            if (gradientDrawable != null) {
            }
            if (gradientDrawable != null) {
            }
            if (gradientDrawable2 != null) {
            }
            if (gradientDrawable2 != null) {
            }
            if (gradientDrawable3 != null) {
            }
            if (gradientDrawable3 != null) {
            }
            if (Build.VERSION.SDK_INT >= 21) {
            }
            if (gradientDrawable2 == null) {
            }
            if (gradientDrawable3 == null) {
            }
            if (background == null) {
            }
            stateListDrawable2 = stateListDrawable;
            if (!parseRipple(view, typedArrayObtainStyledAttributes, stateListDrawable2)) {
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private static boolean parseRipple(View view, TypedArray typedArray, Drawable drawable) {
        Drawable drawable2;
        if (Build.VERSION.SDK_INT < 21 || !typedArray.hasValue(R.styleable.SelectorAttrs_sel_background_ripple)) {
            return false;
        }
        GradientDrawable gradientDrawable = null;
        if (typedArray.hasValue(R.styleable.SelectorAttrs_sel_background_ripple_mask)) {
            drawable2 = typedArray.getDrawable(R.styleable.SelectorAttrs_sel_background_ripple_mask);
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
        ColorStateList colorStateList = typedArray.getColorStateList(R.styleable.SelectorAttrs_sel_background_ripple);
        if (drawable2 == null) {
            drawable2 = gradientDrawable;
        }
        view.setBackgroundDrawable(new RippleDrawable(colorStateList, drawable, drawable2));
        return true;
    }

    private static void parseRippleMaskShape(GradientDrawable gradientDrawable, TypedArray typedArray) {
        gradientDrawable.setColor(typedArray.getColor(R.styleable.SelectorAttrs_sel_background_ripple_mask, 0));
        if (typedArray.hasValue(R.styleable.SelectorAttrs_sel_background_ripple_mask_shape)) {
            int i = typedArray.getInt(R.styleable.SelectorAttrs_sel_background_ripple_mask_shape, 0);
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
        int dimensionPixelOffset = typedArray.getDimensionPixelOffset(R.styleable.SelectorAttrs_sel_background_ripple_mask_corners, 0);
        gradientDrawable.setCornerRadius(dimensionPixelOffset);
        int dimensionPixelSize = typedArray.getDimensionPixelSize(R.styleable.SelectorAttrs_sel_background_ripple_mask_corner_topLeft, dimensionPixelOffset);
        int dimensionPixelSize2 = typedArray.getDimensionPixelSize(R.styleable.SelectorAttrs_sel_background_ripple_mask_corner_topRight, dimensionPixelOffset);
        int dimensionPixelSize3 = typedArray.getDimensionPixelSize(R.styleable.SelectorAttrs_sel_background_ripple_mask_corner_bottomLeft, dimensionPixelOffset);
        int dimensionPixelSize4 = typedArray.getDimensionPixelSize(R.styleable.SelectorAttrs_sel_background_ripple_mask_corner_bottomRight, dimensionPixelOffset);
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
