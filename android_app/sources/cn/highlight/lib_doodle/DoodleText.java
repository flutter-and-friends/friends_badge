package cn.highlight.lib_doodle;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextUtils;

/* loaded from: classes.dex */
public class DoodleText extends DoodleRotatableItemBase {
    private int bgColor;
    private final Paint mBgPaint;
    private int mBold;
    private int mItalic;
    private final Paint mPaint;
    private Rect mRect;
    private String mText0;
    private String mText1;
    private String mTextStyle;
    private int mUnderline;

    public DoodleText(IDoodle iDoodle, String str, float f, IDoodleColor iDoodleColor, float f2, float f3) {
        super(iDoodle, -iDoodle.getDoodleRotation(), f2, f3);
        this.mRect = new Rect();
        this.mPaint = new Paint();
        this.mBgPaint = new Paint();
        setPen(DoodlePen.TEXT);
        this.mText0 = str;
        this.mText1 = str;
        setSize(f);
        setColor(iDoodleColor);
        setLocation(f2, f3);
    }

    public DoodleText(IDoodle iDoodle, Context context, String str, String str2, String str3, int i, int i2, int i3, int i4, float f, IDoodleColor iDoodleColor, float f2, float f3) {
        super(iDoodle, -iDoodle.getDoodleRotation(), f2, f3);
        this.mRect = new Rect();
        this.mPaint = new Paint();
        this.mBgPaint = new Paint();
        setPen(DoodlePen.TEXT);
        this.mText0 = str;
        this.mText1 = str2;
        this.mBold = i2;
        this.mItalic = i3;
        this.mUnderline = i4;
        setSize(f);
        setColor(iDoodleColor);
        setLocation(f2, f3);
        setTypeface(context, str3);
        setBgColor(i);
    }

    public String getText0() {
        return this.mText0;
    }

    public void setText0(String str) {
        this.mText0 = str;
    }

    public String getText1() {
        return this.mText1;
    }

    public void setText1(String str) {
        this.mText1 = str;
        resetBounds(this.mRect);
        setPivotX(getLocation().x + (this.mRect.width() / 2));
        setPivotY(getLocation().y + (this.mRect.height() / 2));
        resetBoundsScaled(getBounds());
        refresh();
    }

    public int getBgColor() {
        return this.bgColor;
    }

    public void setBgColor(int i) {
        this.bgColor = i;
        resetBounds(this.mRect);
        refresh();
    }

    public String getTypeface() {
        return this.mTextStyle;
    }

    public void setTypeface(Context context, String str) {
        this.mTextStyle = str;
        this.mPaint.setTypeface(ViewEditUtil.getViewTextFont(context, this.mTextStyle));
        resetBounds(this.mRect);
        setPivotX(getLocation().x + (this.mRect.width() / 2));
        setPivotY(getLocation().y + (this.mRect.height() / 2));
        resetBoundsScaled(getBounds());
        refresh();
    }

    public int getBold() {
        return this.mBold;
    }

    public void setBold(int i) {
        this.mBold = i;
        resetBounds(this.mRect);
        refresh();
    }

    public int getItalic() {
        return this.mItalic;
    }

    public void setItalic(int i) {
        this.mItalic = i;
        resetBounds(this.mRect);
        refresh();
    }

    public int getUnderline() {
        return this.mUnderline;
    }

    public void setUnderline(int i) {
        this.mUnderline = i;
        resetBounds(this.mRect);
        resetBoundsScaled(getBounds());
        refresh();
    }

    public int getMaxWidth(String str) {
        Rect rect = new Rect();
        if (str.contains("\n")) {
            int iWidth = 0;
            for (String str2 : str.split("\n")) {
                this.mPaint.getTextBounds(str2, 0, str2.length(), rect);
                if (rect.width() > iWidth) {
                    iWidth = rect.width();
                }
            }
            return iWidth;
        }
        this.mPaint.getTextBounds(str, 0, str.length(), rect);
        return rect.width();
    }

    public int getMaxHeight(String str) {
        Rect rect = new Rect();
        if (str.contains("\n")) {
            int iHeight = 0;
            for (String str2 : str.split("\n")) {
                this.mPaint.getTextBounds(str2, 0, str2.length(), rect);
                if (rect.height() > iHeight) {
                    iHeight = rect.height();
                }
            }
            return iHeight;
        }
        this.mPaint.getTextBounds(str, 0, str.length(), rect);
        return rect.height();
    }

    @Override // cn.highlight.lib_doodle.DoodleSelectableItemBase
    public void resetBounds(Rect rect) {
        if (TextUtils.isEmpty(this.mText1)) {
            return;
        }
        this.mPaint.setTextSize(getSize());
        this.mPaint.setStyle(Paint.Style.FILL);
        Paint paint = this.mPaint;
        String str = this.mText1;
        paint.getTextBounds(str, 0, str.length(), rect);
        if (this.mText1.contains("\n")) {
            String[] strArrSplit = this.mText1.split("\n");
            Rect rect2 = new Rect();
            int iWidth = 0;
            int iHeight = 0;
            for (String str2 : strArrSplit) {
                this.mPaint.getTextBounds(str2, 0, str2.length(), rect2);
                if (rect2.width() > iWidth) {
                    iWidth = rect2.width();
                }
                if (rect2.height() > iHeight) {
                    iHeight = rect2.height();
                }
            }
            rect.set(rect.left - 20, rect.top - 5, iWidth + 30, (iHeight * strArrSplit.length) + ((strArrSplit.length - 1) * 30));
            rect.offset(0, (rect.height() - 100) / strArrSplit.length);
            return;
        }
        rect.set(rect.left - 20, rect.top - 5, rect.right + 30, rect.bottom + 18);
        rect.offset(0, rect.height());
    }

    @Override // cn.highlight.lib_doodle.DoodleItemBase
    public void doDraw(Canvas canvas) {
        this.mBgPaint.setColor(this.bgColor);
        this.mBgPaint.setTextSize(getSize());
        this.mBgPaint.setStyle(Paint.Style.FILL);
        this.mBgPaint.setAntiAlias(true);
        getColor().config(this, this.mPaint);
        this.mPaint.setTextSize(getSize());
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setAntiAlias(true);
        if (this.mBold != 0) {
            this.mPaint.setFakeBoldText(true);
        } else {
            this.mPaint.setFakeBoldText(false);
        }
        if (this.mItalic != 0) {
            this.mPaint.setTextSkewX(-0.2f);
        } else {
            this.mPaint.setTextSkewX(0.0f);
        }
        if (this.mUnderline != 0) {
            this.mPaint.setUnderlineText(true);
        } else {
            this.mPaint.setUnderlineText(false);
        }
        canvas.save();
        canvas.translate(0.0f, getBounds().height() / getScale());
        if (this.mText1.contains("\n")) {
            String[] strArrSplit = this.mText1.split("\n");
            Rect rect = new Rect();
            int iWidth = 0;
            int iHeight = 0;
            for (String str : strArrSplit) {
                this.mPaint.getTextBounds(str, 0, str.length(), rect);
                if (rect.width() > iWidth) {
                    iWidth = rect.width();
                }
                if (rect.height() > iHeight) {
                    iHeight = rect.height();
                }
            }
            canvas.drawRect(this.mRect.left, this.mRect.top - this.mRect.height(), iWidth + 30, this.mRect.bottom - this.mRect.height(), this.mBgPaint);
            float f = iHeight + 30;
            float length = 0.0f - ((strArrSplit.length - 0.75f) * f);
            for (String str2 : strArrSplit) {
                canvas.drawText(str2, 0.0f, length, this.mPaint);
                if (this.mBold != 0) {
                    Paint paint = new Paint(this.mPaint);
                    paint.setStyle(Paint.Style.STROKE);
                    paint.setStrokeWidth(3.0f);
                    canvas.drawText(str2, 0.0f, length, paint);
                }
                length += f;
            }
        } else {
            if (!Tools.isNull(this.mText1)) {
                canvas.drawRect(this.mRect.left, this.mRect.top - this.mRect.height(), this.mRect.right, this.mRect.bottom - this.mRect.height(), this.mBgPaint);
            }
            canvas.drawText(this.mText1, 5.0f, 0.0f, this.mPaint);
            if (this.mBold != 0) {
                Paint paint2 = new Paint(this.mPaint);
                paint2.setStyle(Paint.Style.STROKE);
                paint2.setStrokeWidth(3.0f);
                canvas.drawText(this.mText1, 5.0f, 0.0f, paint2);
            }
        }
        canvas.restore();
    }
}
