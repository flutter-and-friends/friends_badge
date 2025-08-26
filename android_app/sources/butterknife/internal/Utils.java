package butterknife.internal;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class Utils {
    private static final TypedValue VALUE = new TypedValue();

    public static Drawable getTintedDrawable(Context context, int i, int i2) {
        if (!context.getTheme().resolveAttribute(i2, VALUE, true)) {
            throw new Resources.NotFoundException("Required tint color attribute with name " + context.getResources().getResourceEntryName(i2) + " and attribute ID " + i2 + " was not found.");
        }
        Drawable drawableWrap = DrawableCompat.wrap(ContextCompat.getDrawable(context, i).mutate());
        DrawableCompat.setTint(drawableWrap, ContextCompat.getColor(context, VALUE.resourceId));
        return drawableWrap;
    }

    public static float getFloat(Context context, int i) throws Resources.NotFoundException {
        TypedValue typedValue = VALUE;
        context.getResources().getValue(i, typedValue, true);
        if (typedValue.type == 4) {
            return typedValue.getFloat();
        }
        throw new Resources.NotFoundException("Resource ID #0x" + Integer.toHexString(i) + " type #0x" + Integer.toHexString(typedValue.type) + " is not valid");
    }

    @SafeVarargs
    public static <T> T[] arrayFilteringNull(T... tArr) {
        int length = tArr.length;
        int i = 0;
        for (T t : tArr) {
            if (t != null) {
                tArr[i] = t;
                i++;
            }
        }
        return i == length ? tArr : (T[]) Arrays.copyOf(tArr, i);
    }

    @SafeVarargs
    public static <T> List<T> listFilteringNull(T... tArr) {
        return new ImmutableList(arrayFilteringNull(tArr));
    }

    public static <T> T findOptionalViewAsType(View view, int i, String str, Class<T> cls) {
        return (T) castView(view.findViewById(i), i, str, cls);
    }

    public static View findRequiredView(View view, int i, String str) {
        View viewFindViewById = view.findViewById(i);
        if (viewFindViewById != null) {
            return viewFindViewById;
        }
        throw new IllegalStateException("Required view '" + getResourceEntryName(view, i) + "' with ID " + i + " for " + str + " was not found. If this view is optional add '@Nullable' (fields) or '@Optional' (methods) annotation.");
    }

    public static <T> T findRequiredViewAsType(View view, int i, String str, Class<T> cls) {
        return (T) castView(findRequiredView(view, i, str), i, str, cls);
    }

    public static <T> T castView(View view, int i, String str, Class<T> cls) {
        try {
            return cls.cast(view);
        } catch (ClassCastException e) {
            throw new IllegalStateException("View '" + getResourceEntryName(view, i) + "' with ID " + i + " for " + str + " was of the wrong type. See cause for more info.", e);
        }
    }

    public static <T> T castParam(Object obj, String str, int i, String str2, int i2, Class<T> cls) {
        try {
            return cls.cast(obj);
        } catch (ClassCastException e) {
            throw new IllegalStateException("Parameter #" + (i + 1) + " of method '" + str + "' was of the wrong type for parameter #" + (i2 + 1) + " of method '" + str2 + "'. See cause for more info.", e);
        }
    }

    private static String getResourceEntryName(View view, int i) {
        return view.isInEditMode() ? "<unavailable while editing>" : view.getContext().getResources().getResourceEntryName(i);
    }

    private Utils() {
        throw new AssertionError("No instances.");
    }
}
