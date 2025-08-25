package cn.forward.androids.utils;

import android.graphics.Point;
import android.text.Layout;
import android.text.SpannableString;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.ViewTreeObserver;
import android.widget.TextView;
import androidx.core.widget.TextViewCompat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class EllipsizeUtils {
    private static final String ELLIPSIS_NORMAL = "…";
    public static final int HIGHLIGHT_ALL = 2;
    public static final int HIGHLIGHT_FIRST = 0;
    public static final int HIGHLIGHT_LAST = 1;

    public static SpannableString highlight(String str, String str2, int i, int i2, int i3, boolean z) {
        int iIndexOf;
        SpannableString spannableString = new SpannableString(str);
        if (i2 < str.length() && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            int iMax = Math.max(0, i2);
            if (z) {
                str = str.toLowerCase(Locale.ENGLISH);
            }
            String lowerCase = z ? str2.toLowerCase(Locale.ENGLISH) : str2;
            if (i3 == 1 || i3 == 0) {
                if (i3 == 1) {
                    iIndexOf = str.lastIndexOf(lowerCase);
                    if (iIndexOf < iMax) {
                        iIndexOf = -1;
                    }
                } else {
                    iIndexOf = str.indexOf(lowerCase, iMax);
                }
                if (iIndexOf > -1) {
                    spannableString.setSpan(new ForegroundColorSpan(i), iIndexOf, str2.length() + iIndexOf, 33);
                }
            } else {
                int iIndexOf2 = str.indexOf(lowerCase, iMax);
                while (iIndexOf2 >= 0) {
                    spannableString.setSpan(new ForegroundColorSpan(i), iIndexOf2, str2.length() + iIndexOf2, 33);
                    iIndexOf2 = str.indexOf(lowerCase, iIndexOf2 + str2.length());
                }
            }
        }
        return spannableString;
    }

    public static void ellipsizeByKeyword(TextView textView, String str, String str2, boolean z) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            textView.setText((CharSequence) null);
        } else if (textView.getWidth() <= 0) {
            new EllipseListener(textView, str, str2, z);
        } else {
            ellipsizeByKeywordInner(textView, str, str2, z);
        }
    }

    public static void ellipsizeAndHighlight(TextView textView, String str, String str2, int i, boolean z, boolean z2) {
        int i2;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            textView.setText((CharSequence) null);
            return;
        }
        if (textView.getWidth() <= 0) {
            new EllipseListener(textView, str, str2, i, z, z2);
            return;
        }
        ellipsizeByKeywordInner(textView, str, str2, z2);
        if (z) {
            i2 = 2;
        } else {
            i2 = textView.getEllipsize() == TextUtils.TruncateAt.START ? 1 : 0;
        }
        textView.setText(highlight(textView.getText().toString(), str2, i, 0, i2, z2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ellipsizeByKeywordInner(TextView textView, String str, String str2, boolean z) {
        TextPaint paint = textView.getPaint();
        if (paint == null) {
            textView.setText((CharSequence) null);
            return;
        }
        String lowerCase = z ? str.toLowerCase(Locale.ENGLISH) : str;
        String lowerCase2 = z ? str2.toLowerCase(Locale.ENGLISH) : str2;
        int iIndexOf = lowerCase.indexOf(lowerCase2);
        if (iIndexOf < 0) {
            textView.setText((CharSequence) null);
            return;
        }
        int maxLines = TextViewCompat.getMaxLines(textView);
        if (maxLines <= 0) {
            textView.setText(str);
            return;
        }
        int width = (textView.getWidth() - textView.getPaddingLeft()) - textView.getPaddingRight();
        if (maxLines < 2) {
            float f = width;
            String string = TextUtils.ellipsize(lowerCase, paint, f, TextUtils.TruncateAt.END).toString();
            int length = string.length();
            if (string.contains(lowerCase2)) {
                textView.setEllipsize(TextUtils.TruncateAt.END);
                textView.setText(str);
                return;
            }
            String string2 = TextUtils.ellipsize(lowerCase, paint, f, TextUtils.TruncateAt.START).toString();
            int iMax = Math.max(string2.length(), length);
            if (string2.contains(lowerCase2)) {
                textView.setEllipsize(TextUtils.TruncateAt.START);
                textView.setText(str);
                return;
            }
            if (iMax <= str2.length()) {
                textView.setEllipsize(TextUtils.TruncateAt.END);
                textView.setText(ELLIPSIS_NORMAL + str2);
                return;
            }
            textView.setEllipsize(TextUtils.TruncateAt.END);
            int length2 = iIndexOf - ((iMax - str2.length()) / 2);
            StringBuilder sb = new StringBuilder();
            sb.append(ELLIPSIS_NORMAL);
            if (length2 < 0) {
                length2 = 0;
            }
            sb.append(str.substring(length2));
            String string3 = sb.toString();
            if (TextUtils.ellipsize(string3, paint, f, TextUtils.TruncateAt.END).toString().contains(lowerCase2)) {
                textView.setText(string3);
                return;
            }
            textView.setText(ELLIPSIS_NORMAL + str.substring(iIndexOf));
            return;
        }
        List<Point> lineStartAndEnd = getLineStartAndEnd(textView.getPaint(), lowerCase, width);
        int keywordLine = getKeywordLine(iIndexOf, lineStartAndEnd);
        if (getKeywordLine((lowerCase2.length() + iIndexOf) + 1, lineStartAndEnd) - keywordLine < maxLines) {
            int iMax2 = Math.max((Math.min(keywordLine + (maxLines / 2), lineStartAndEnd.size() - 1) - (maxLines - 1)) + (maxLines % 2), 0);
            textView.setEllipsize(TextUtils.TruncateAt.END);
            if (iMax2 == 0) {
                textView.setText(str);
                return;
            }
            textView.setText(ELLIPSIS_NORMAL + str.substring(lineStartAndEnd.get(iMax2).x));
            return;
        }
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setText(ELLIPSIS_NORMAL + str.substring(iIndexOf));
    }

    private static int getKeywordLine(int i, List<Point> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (i < list.get(i2).y) {
                return i2;
            }
        }
        return 0;
    }

    private static List<Point> getLineStartAndEnd(TextPaint textPaint, CharSequence charSequence, int i) {
        StaticLayout staticLayout = new StaticLayout(charSequence, textPaint, i, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
        int lineCount = staticLayout.getLineCount();
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < lineCount; i2++) {
            arrayList.add(new Point(staticLayout.getLineStart(i2), staticLayout.getLineEnd(i2)));
        }
        return arrayList;
    }

    private static class EllipseListener implements ViewTreeObserver.OnPreDrawListener {
        final String content;
        final boolean highlightAll;
        final int highlightColor;
        final boolean ignoreCase;
        final String keyword;
        boolean needHighlight;
        final TextView textView;

        public EllipseListener(TextView textView, String str, String str2, boolean z) {
            this(textView, str, str2, 0, false, z);
            this.needHighlight = false;
        }

        public EllipseListener(TextView textView, String str, String str2, int i, boolean z, boolean z2) {
            this.textView = textView;
            this.content = str;
            this.keyword = str2;
            this.highlightColor = i;
            this.highlightAll = z;
            this.ignoreCase = z2;
            this.needHighlight = true;
            textView.getViewTreeObserver().addOnPreDrawListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            int i;
            this.textView.getViewTreeObserver().removeOnPreDrawListener(this);
            EllipsizeUtils.ellipsizeByKeywordInner(this.textView, this.content, this.keyword, this.ignoreCase);
            if (!this.needHighlight) {
                return true;
            }
            if (this.highlightAll) {
                i = 2;
            } else {
                i = this.textView.getEllipsize() == TextUtils.TruncateAt.START ? 1 : 0;
            }
            this.textView.setText(EllipsizeUtils.highlight(this.textView.getText().toString(), this.keyword, this.highlightColor, 0, i, this.ignoreCase));
            return true;
        }
    }

    public static void ellipsize(TextView textView, String str) {
        TextUtils.TruncateAt ellipsize = textView.getEllipsize();
        if (ellipsize != TextUtils.TruncateAt.START && ellipsize != TextUtils.TruncateAt.MIDDLE) {
            textView.setText(str);
            return;
        }
        int maxLines = TextViewCompat.getMaxLines(textView);
        int width = (textView.getWidth() - textView.getPaddingLeft()) - textView.getPaddingRight();
        if (maxLines < 2) {
            textView.setText(str);
            return;
        }
        List<Point> lineStartAndEnd = getLineStartAndEnd(textView.getPaint(), str, width);
        if (lineStartAndEnd.size() <= maxLines) {
            textView.setText(str);
            return;
        }
        if (ellipsize == TextUtils.TruncateAt.START) {
            String strSubstring = str.substring(Math.max(lineStartAndEnd.get(lineStartAndEnd.size() - maxLines).x + 1, 0));
            while (true) {
                if (getLayout(textView.getPaint(), ELLIPSIS_NORMAL + strSubstring, width).getLineCount() > maxLines) {
                    int iIndexOf = strSubstring.indexOf(32);
                    if (iIndexOf == -1) {
                        strSubstring = strSubstring.substring(1);
                    } else {
                        strSubstring = strSubstring.substring(iIndexOf + 1);
                    }
                } else {
                    textView.setText(ELLIPSIS_NORMAL + strSubstring);
                    return;
                }
            }
        } else {
            int i = (maxLines - 1) / 2;
            String strSubstring2 = str.substring(0, lineStartAndEnd.get(i).y - 1);
            String strSubstring3 = str.substring(lineStartAndEnd.get(lineStartAndEnd.size() - ((maxLines - i) - 1)).x);
            while (true) {
                if (getLayout(textView.getPaint(), strSubstring2 + ELLIPSIS_NORMAL + strSubstring3, width).getLineCount() > maxLines) {
                    int iIndexOf2 = strSubstring3.indexOf(32);
                    if (iIndexOf2 == -1) {
                        strSubstring3 = strSubstring3.substring(1);
                    } else {
                        strSubstring3 = strSubstring3.substring(iIndexOf2 + 1);
                    }
                } else {
                    textView.setText(strSubstring2 + ELLIPSIS_NORMAL + strSubstring3);
                    return;
                }
            }
        }
    }

    private static Layout getLayout(TextPaint textPaint, CharSequence charSequence, int i) {
        return new StaticLayout(charSequence, textPaint, i, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
    }
}
