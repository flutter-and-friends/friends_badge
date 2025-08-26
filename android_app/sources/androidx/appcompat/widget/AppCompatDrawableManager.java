package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import androidx.appcompat.C0036R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.ResourceManagerInternal;
import androidx.core.graphics.ColorUtils;

/* loaded from: classes.dex */
public final class AppCompatDrawableManager {
    private static final boolean DEBUG = false;
    private static final PorterDuff.Mode DEFAULT_MODE = PorterDuff.Mode.SRC_IN;
    private static AppCompatDrawableManager INSTANCE = null;
    private static final String TAG = "AppCompatDrawableManag";
    private ResourceManagerInternal mResourceManager;

    public static synchronized void preload() {
        if (INSTANCE == null) {
            INSTANCE = new AppCompatDrawableManager();
            INSTANCE.mResourceManager = ResourceManagerInternal.get();
            INSTANCE.mResourceManager.setHooks(new ResourceManagerInternal.ResourceManagerHooks() { // from class: androidx.appcompat.widget.AppCompatDrawableManager.1
                private final int[] COLORFILTER_TINT_COLOR_CONTROL_NORMAL = {C0036R.drawable.abc_textfield_search_default_mtrl_alpha, C0036R.drawable.abc_textfield_default_mtrl_alpha, C0036R.drawable.abc_ab_share_pack_mtrl_alpha};
                private final int[] TINT_COLOR_CONTROL_NORMAL = {C0036R.drawable.abc_ic_commit_search_api_mtrl_alpha, C0036R.drawable.abc_seekbar_tick_mark_material, C0036R.drawable.abc_ic_menu_share_mtrl_alpha, C0036R.drawable.abc_ic_menu_copy_mtrl_am_alpha, C0036R.drawable.abc_ic_menu_cut_mtrl_alpha, C0036R.drawable.abc_ic_menu_selectall_mtrl_alpha, C0036R.drawable.abc_ic_menu_paste_mtrl_am_alpha};
                private final int[] COLORFILTER_COLOR_CONTROL_ACTIVATED = {C0036R.drawable.abc_textfield_activated_mtrl_alpha, C0036R.drawable.abc_textfield_search_activated_mtrl_alpha, C0036R.drawable.abc_cab_background_top_mtrl_alpha, C0036R.drawable.abc_text_cursor_material, C0036R.drawable.abc_text_select_handle_left_mtrl_dark, C0036R.drawable.abc_text_select_handle_middle_mtrl_dark, C0036R.drawable.abc_text_select_handle_right_mtrl_dark, C0036R.drawable.abc_text_select_handle_left_mtrl_light, C0036R.drawable.abc_text_select_handle_middle_mtrl_light, C0036R.drawable.abc_text_select_handle_right_mtrl_light};
                private final int[] COLORFILTER_COLOR_BACKGROUND_MULTIPLY = {C0036R.drawable.abc_popup_background_mtrl_mult, C0036R.drawable.abc_cab_background_internal_bg, C0036R.drawable.abc_menu_hardkey_panel_mtrl_mult};
                private final int[] TINT_COLOR_CONTROL_STATE_LIST = {C0036R.drawable.abc_tab_indicator_material, C0036R.drawable.abc_textfield_search_material};
                private final int[] TINT_CHECKABLE_BUTTON_LIST = {C0036R.drawable.abc_btn_check_material, C0036R.drawable.abc_btn_radio_material, C0036R.drawable.abc_btn_check_material_anim, C0036R.drawable.abc_btn_radio_material_anim};

                private ColorStateList createDefaultButtonColorStateList(Context context) {
                    return createButtonColorStateList(context, ThemeUtils.getThemeAttrColor(context, C0036R.attr.colorButtonNormal));
                }

                private ColorStateList createBorderlessButtonColorStateList(Context context) {
                    return createButtonColorStateList(context, 0);
                }

                private ColorStateList createColoredButtonColorStateList(Context context) {
                    return createButtonColorStateList(context, ThemeUtils.getThemeAttrColor(context, C0036R.attr.colorAccent));
                }

                private ColorStateList createButtonColorStateList(Context context, int i) {
                    int themeAttrColor = ThemeUtils.getThemeAttrColor(context, C0036R.attr.colorControlHighlight);
                    return new ColorStateList(new int[][]{ThemeUtils.DISABLED_STATE_SET, ThemeUtils.PRESSED_STATE_SET, ThemeUtils.FOCUSED_STATE_SET, ThemeUtils.EMPTY_STATE_SET}, new int[]{ThemeUtils.getDisabledThemeAttrColor(context, C0036R.attr.colorButtonNormal), ColorUtils.compositeColors(themeAttrColor, i), ColorUtils.compositeColors(themeAttrColor, i), i});
                }

                private ColorStateList createSwitchThumbColorStateList(Context context) {
                    int[][] iArr = new int[3][];
                    int[] iArr2 = new int[3];
                    ColorStateList themeAttrColorStateList = ThemeUtils.getThemeAttrColorStateList(context, C0036R.attr.colorSwitchThumbNormal);
                    if (themeAttrColorStateList != null && themeAttrColorStateList.isStateful()) {
                        iArr[0] = ThemeUtils.DISABLED_STATE_SET;
                        iArr2[0] = themeAttrColorStateList.getColorForState(iArr[0], 0);
                        iArr[1] = ThemeUtils.CHECKED_STATE_SET;
                        iArr2[1] = ThemeUtils.getThemeAttrColor(context, C0036R.attr.colorControlActivated);
                        iArr[2] = ThemeUtils.EMPTY_STATE_SET;
                        iArr2[2] = themeAttrColorStateList.getDefaultColor();
                    } else {
                        iArr[0] = ThemeUtils.DISABLED_STATE_SET;
                        iArr2[0] = ThemeUtils.getDisabledThemeAttrColor(context, C0036R.attr.colorSwitchThumbNormal);
                        iArr[1] = ThemeUtils.CHECKED_STATE_SET;
                        iArr2[1] = ThemeUtils.getThemeAttrColor(context, C0036R.attr.colorControlActivated);
                        iArr[2] = ThemeUtils.EMPTY_STATE_SET;
                        iArr2[2] = ThemeUtils.getThemeAttrColor(context, C0036R.attr.colorSwitchThumbNormal);
                    }
                    return new ColorStateList(iArr, iArr2);
                }

                @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
                public Drawable createDrawableFor(ResourceManagerInternal resourceManagerInternal, Context context, int i) {
                    if (i == C0036R.drawable.abc_cab_background_top_material) {
                        return new LayerDrawable(new Drawable[]{resourceManagerInternal.getDrawable(context, C0036R.drawable.abc_cab_background_internal_bg), resourceManagerInternal.getDrawable(context, C0036R.drawable.abc_cab_background_top_mtrl_alpha)});
                    }
                    return null;
                }

                private void setPorterDuffColorFilter(Drawable drawable, int i, PorterDuff.Mode mode) {
                    if (DrawableUtils.canSafelyMutateDrawable(drawable)) {
                        drawable = drawable.mutate();
                    }
                    if (mode == null) {
                        mode = AppCompatDrawableManager.DEFAULT_MODE;
                    }
                    drawable.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(i, mode));
                }

                @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
                public boolean tintDrawable(Context context, int i, Drawable drawable) {
                    if (i == C0036R.drawable.abc_seekbar_track_material) {
                        LayerDrawable layerDrawable = (LayerDrawable) drawable;
                        setPorterDuffColorFilter(layerDrawable.findDrawableByLayerId(R.id.background), ThemeUtils.getThemeAttrColor(context, C0036R.attr.colorControlNormal), AppCompatDrawableManager.DEFAULT_MODE);
                        setPorterDuffColorFilter(layerDrawable.findDrawableByLayerId(R.id.secondaryProgress), ThemeUtils.getThemeAttrColor(context, C0036R.attr.colorControlNormal), AppCompatDrawableManager.DEFAULT_MODE);
                        setPorterDuffColorFilter(layerDrawable.findDrawableByLayerId(R.id.progress), ThemeUtils.getThemeAttrColor(context, C0036R.attr.colorControlActivated), AppCompatDrawableManager.DEFAULT_MODE);
                        return true;
                    }
                    if (i != C0036R.drawable.abc_ratingbar_material && i != C0036R.drawable.abc_ratingbar_indicator_material && i != C0036R.drawable.abc_ratingbar_small_material) {
                        return false;
                    }
                    LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
                    setPorterDuffColorFilter(layerDrawable2.findDrawableByLayerId(R.id.background), ThemeUtils.getDisabledThemeAttrColor(context, C0036R.attr.colorControlNormal), AppCompatDrawableManager.DEFAULT_MODE);
                    setPorterDuffColorFilter(layerDrawable2.findDrawableByLayerId(R.id.secondaryProgress), ThemeUtils.getThemeAttrColor(context, C0036R.attr.colorControlActivated), AppCompatDrawableManager.DEFAULT_MODE);
                    setPorterDuffColorFilter(layerDrawable2.findDrawableByLayerId(R.id.progress), ThemeUtils.getThemeAttrColor(context, C0036R.attr.colorControlActivated), AppCompatDrawableManager.DEFAULT_MODE);
                    return true;
                }

                private boolean arrayContains(int[] iArr, int i) {
                    for (int i2 : iArr) {
                        if (i2 == i) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
                public ColorStateList getTintListForDrawableRes(Context context, int i) {
                    if (i == C0036R.drawable.abc_edit_text_material) {
                        return AppCompatResources.getColorStateList(context, C0036R.color.abc_tint_edittext);
                    }
                    if (i == C0036R.drawable.abc_switch_track_mtrl_alpha) {
                        return AppCompatResources.getColorStateList(context, C0036R.color.abc_tint_switch_track);
                    }
                    if (i == C0036R.drawable.abc_switch_thumb_material) {
                        return createSwitchThumbColorStateList(context);
                    }
                    if (i == C0036R.drawable.abc_btn_default_mtrl_shape) {
                        return createDefaultButtonColorStateList(context);
                    }
                    if (i == C0036R.drawable.abc_btn_borderless_material) {
                        return createBorderlessButtonColorStateList(context);
                    }
                    if (i == C0036R.drawable.abc_btn_colored_material) {
                        return createColoredButtonColorStateList(context);
                    }
                    if (i == C0036R.drawable.abc_spinner_mtrl_am_alpha || i == C0036R.drawable.abc_spinner_textfield_background_material) {
                        return AppCompatResources.getColorStateList(context, C0036R.color.abc_tint_spinner);
                    }
                    if (arrayContains(this.TINT_COLOR_CONTROL_NORMAL, i)) {
                        return ThemeUtils.getThemeAttrColorStateList(context, C0036R.attr.colorControlNormal);
                    }
                    if (arrayContains(this.TINT_COLOR_CONTROL_STATE_LIST, i)) {
                        return AppCompatResources.getColorStateList(context, C0036R.color.abc_tint_default);
                    }
                    if (arrayContains(this.TINT_CHECKABLE_BUTTON_LIST, i)) {
                        return AppCompatResources.getColorStateList(context, C0036R.color.abc_tint_btn_checkable);
                    }
                    if (i == C0036R.drawable.abc_seekbar_thumb_material) {
                        return AppCompatResources.getColorStateList(context, C0036R.color.abc_tint_seek_thumb);
                    }
                    return null;
                }

                /* JADX WARN: Removed duplicated region for block: B:20:0x004b  */
                /* JADX WARN: Removed duplicated region for block: B:27:0x0066 A[RETURN] */
                @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public boolean tintDrawableUsingColorFilter(android.content.Context r7, int r8, android.graphics.drawable.Drawable r9) {
                    /*
                        r6 = this;
                        android.graphics.PorterDuff$Mode r0 = androidx.appcompat.widget.AppCompatDrawableManager.access$000()
                        int[] r1 = r6.COLORFILTER_TINT_COLOR_CONTROL_NORMAL
                        boolean r1 = r6.arrayContains(r1, r8)
                        r2 = 16842801(0x1010031, float:2.3693695E-38)
                        r3 = -1
                        r4 = 0
                        r5 = 1
                        if (r1 == 0) goto L18
                        int r2 = androidx.appcompat.C0036R.attr.colorControlNormal
                    L14:
                        r1 = r0
                        r8 = 1
                        r0 = -1
                        goto L49
                    L18:
                        int[] r1 = r6.COLORFILTER_COLOR_CONTROL_ACTIVATED
                        boolean r1 = r6.arrayContains(r1, r8)
                        if (r1 == 0) goto L23
                        int r2 = androidx.appcompat.C0036R.attr.colorControlActivated
                        goto L14
                    L23:
                        int[] r1 = r6.COLORFILTER_COLOR_BACKGROUND_MULTIPLY
                        boolean r1 = r6.arrayContains(r1, r8)
                        if (r1 == 0) goto L2e
                        android.graphics.PorterDuff$Mode r0 = android.graphics.PorterDuff.Mode.MULTIPLY
                        goto L14
                    L2e:
                        int r1 = androidx.appcompat.C0036R.drawable.abc_list_divider_mtrl_alpha
                        if (r8 != r1) goto L40
                        r2 = 16842800(0x1010030, float:2.3693693E-38)
                        r8 = 1109603123(0x42233333, float:40.8)
                        int r8 = java.lang.Math.round(r8)
                        r1 = r0
                        r0 = r8
                        r8 = 1
                        goto L49
                    L40:
                        int r1 = androidx.appcompat.C0036R.drawable.abc_dialog_material_background
                        if (r8 != r1) goto L45
                        goto L14
                    L45:
                        r1 = r0
                        r8 = 0
                        r0 = -1
                        r2 = 0
                    L49:
                        if (r8 == 0) goto L66
                        boolean r8 = androidx.appcompat.widget.DrawableUtils.canSafelyMutateDrawable(r9)
                        if (r8 == 0) goto L55
                        android.graphics.drawable.Drawable r9 = r9.mutate()
                    L55:
                        int r7 = androidx.appcompat.widget.ThemeUtils.getThemeAttrColor(r7, r2)
                        android.graphics.PorterDuffColorFilter r7 = androidx.appcompat.widget.AppCompatDrawableManager.getPorterDuffColorFilter(r7, r1)
                        r9.setColorFilter(r7)
                        if (r0 == r3) goto L65
                        r9.setAlpha(r0)
                    L65:
                        return r5
                    L66:
                        return r4
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatDrawableManager.C00861.tintDrawableUsingColorFilter(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
                }

                @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
                public PorterDuff.Mode getTintModeForDrawableRes(int i) {
                    if (i == C0036R.drawable.abc_switch_thumb_material) {
                        return PorterDuff.Mode.MULTIPLY;
                    }
                    return null;
                }
            });
        }
    }

    public static synchronized AppCompatDrawableManager get() {
        if (INSTANCE == null) {
            preload();
        }
        return INSTANCE;
    }

    public synchronized Drawable getDrawable(Context context, int i) {
        return this.mResourceManager.getDrawable(context, i);
    }

    synchronized Drawable getDrawable(Context context, int i, boolean z) {
        return this.mResourceManager.getDrawable(context, i, z);
    }

    public synchronized void onConfigurationChanged(Context context) {
        this.mResourceManager.onConfigurationChanged(context);
    }

    synchronized Drawable onDrawableLoadedFromResources(Context context, VectorEnabledTintResources vectorEnabledTintResources, int i) {
        return this.mResourceManager.onDrawableLoadedFromResources(context, vectorEnabledTintResources, i);
    }

    boolean tintDrawableUsingColorFilter(Context context, int i, Drawable drawable) {
        return this.mResourceManager.tintDrawableUsingColorFilter(context, i, drawable);
    }

    synchronized ColorStateList getTintList(Context context, int i) {
        return this.mResourceManager.getTintList(context, i);
    }

    static void tintDrawable(Drawable drawable, TintInfo tintInfo, int[] iArr) {
        ResourceManagerInternal.tintDrawable(drawable, tintInfo, iArr);
    }

    public static synchronized PorterDuffColorFilter getPorterDuffColorFilter(int i, PorterDuff.Mode mode) {
        return ResourceManagerInternal.getPorterDuffColorFilter(i, mode);
    }
}
