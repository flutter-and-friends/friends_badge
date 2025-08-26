package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.FontsContractCompat;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class TypefaceCompatApi29Impl extends TypefaceCompatBaseImpl {
    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    protected FontsContractCompat.FontInfo findBestInfo(FontsContractCompat.FontInfo[] fontInfoArr, int i) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    protected Typeface createFromInputStream(Context context, InputStream inputStream) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001c A[Catch: IOException -> 0x0060, PHI: r4
      0x001c: PHI (r4v5 android.graphics.fonts.FontFamily$Builder) = (r4v3 android.graphics.fonts.FontFamily$Builder), (r4v1 android.graphics.fonts.FontFamily$Builder) binds: [B:19:0x0051, B:8:0x001a] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #2 {IOException -> 0x0060, blocks: (B:6:0x000e, B:9:0x001c, B:27:0x005f, B:26:0x005c, B:11:0x0020, B:15:0x0035, B:17:0x0047, B:18:0x004e, B:23:0x0057), top: B:45:0x000e, inners: #0, #1 }] */
    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.graphics.Typeface createFromFontInfo(android.content.Context r11, android.os.CancellationSignal r12, androidx.core.provider.FontsContractCompat.FontInfo[] r13, int r14) throws java.io.IOException {
        /*
            r10 = this;
            android.content.ContentResolver r11 = r11.getContentResolver()
            int r0 = r13.length
            r1 = 0
            r2 = 0
            r4 = r1
            r3 = 0
        L9:
            r5 = 1
            if (r3 >= r0) goto L63
            r6 = r13[r3]
            android.net.Uri r7 = r6.getUri()     // Catch: java.io.IOException -> L60
            java.lang.String r8 = "r"
            android.os.ParcelFileDescriptor r7 = r11.openFileDescriptor(r7, r8, r12)     // Catch: java.io.IOException -> L60
            if (r7 != 0) goto L20
            if (r7 == 0) goto L60
        L1c:
            r7.close()     // Catch: java.io.IOException -> L60
            goto L60
        L20:
            android.graphics.fonts.Font$Builder r8 = new android.graphics.fonts.Font$Builder     // Catch: java.lang.Throwable -> L54
            r8.<init>(r7)     // Catch: java.lang.Throwable -> L54
            int r9 = r6.getWeight()     // Catch: java.lang.Throwable -> L54
            android.graphics.fonts.Font$Builder r8 = r8.setWeight(r9)     // Catch: java.lang.Throwable -> L54
            boolean r9 = r6.isItalic()     // Catch: java.lang.Throwable -> L54
            if (r9 == 0) goto L34
            goto L35
        L34:
            r5 = 0
        L35:
            android.graphics.fonts.Font$Builder r5 = r8.setSlant(r5)     // Catch: java.lang.Throwable -> L54
            int r6 = r6.getTtcIndex()     // Catch: java.lang.Throwable -> L54
            android.graphics.fonts.Font$Builder r5 = r5.setTtcIndex(r6)     // Catch: java.lang.Throwable -> L54
            android.graphics.fonts.Font r5 = r5.build()     // Catch: java.lang.Throwable -> L54
            if (r4 != 0) goto L4e
            android.graphics.fonts.FontFamily$Builder r6 = new android.graphics.fonts.FontFamily$Builder     // Catch: java.lang.Throwable -> L54
            r6.<init>(r5)     // Catch: java.lang.Throwable -> L54
            r4 = r6
            goto L51
        L4e:
            r4.addFont(r5)     // Catch: java.lang.Throwable -> L54
        L51:
            if (r7 == 0) goto L60
            goto L1c
        L54:
            r5 = move-exception
            if (r7 == 0) goto L5f
            r7.close()     // Catch: java.lang.Throwable -> L5b
            goto L5f
        L5b:
            r6 = move-exception
            r5.addSuppressed(r6)     // Catch: java.io.IOException -> L60
        L5f:
            throw r5     // Catch: java.io.IOException -> L60
        L60:
            int r3 = r3 + 1
            goto L9
        L63:
            if (r4 != 0) goto L66
            return r1
        L66:
            android.graphics.fonts.FontStyle r11 = new android.graphics.fonts.FontStyle
            r12 = r14 & 1
            if (r12 == 0) goto L6f
            r12 = 700(0x2bc, float:9.81E-43)
            goto L71
        L6f:
            r12 = 400(0x190, float:5.6E-43)
        L71:
            r13 = r14 & 2
            if (r13 == 0) goto L76
            r2 = 1
        L76:
            r11.<init>(r12, r2)
            android.graphics.Typeface$CustomFallbackBuilder r12 = new android.graphics.Typeface$CustomFallbackBuilder
            android.graphics.fonts.FontFamily r13 = r4.build()
            r12.<init>(r13)
            android.graphics.Typeface$CustomFallbackBuilder r11 = r12.setStyle(r11)
            android.graphics.Typeface r11 = r11.build()
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.TypefaceCompatApi29Impl.createFromFontInfo(android.content.Context, android.os.CancellationSignal, androidx.core.provider.FontsContractCompat$FontInfo[], int):android.graphics.Typeface");
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    public Typeface createFromFontFamilyFilesResourceEntry(Context context, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, Resources resources, int i) throws IOException {
        FontResourcesParserCompat.FontFileResourceEntry[] entries = fontFamilyFilesResourceEntry.getEntries();
        int length = entries.length;
        FontFamily.Builder builder = null;
        int i2 = 0;
        while (true) {
            int i3 = 1;
            if (i2 >= length) {
                break;
            }
            FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry = entries[i2];
            try {
                Font.Builder weight = new Font.Builder(resources, fontFileResourceEntry.getResourceId()).setWeight(fontFileResourceEntry.getWeight());
                if (!fontFileResourceEntry.isItalic()) {
                    i3 = 0;
                }
                Font fontBuild = weight.setSlant(i3).setTtcIndex(fontFileResourceEntry.getTtcIndex()).setFontVariationSettings(fontFileResourceEntry.getVariationSettings()).build();
                if (builder == null) {
                    builder = new FontFamily.Builder(fontBuild);
                } else {
                    builder.addFont(fontBuild);
                }
            } catch (IOException unused) {
            }
            i2++;
        }
        if (builder == null) {
            return null;
        }
        return new Typeface.CustomFallbackBuilder(builder.build()).setStyle(new FontStyle((i & 1) != 0 ? 700 : 400, (i & 2) != 0 ? 1 : 0)).build();
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    public Typeface createFromResourcesFontFile(Context context, Resources resources, int i, String str, int i2) throws IOException {
        try {
            Font fontBuild = new Font.Builder(resources, i).build();
            return new Typeface.CustomFallbackBuilder(new FontFamily.Builder(fontBuild).build()).setStyle(fontBuild.getStyle()).build();
        } catch (IOException unused) {
            return null;
        }
    }
}
