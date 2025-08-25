package cn.highlight.lib_doodle;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.FrameLayout;
import cn.forward.androids.utils.LogUtil;

/* loaded from: classes.dex */
public class DrawUtil {
    public static void main(String[] strArr) {
    }

    public static void drawArrow(Canvas canvas, float f, float f2, float f3, float f4, Paint paint) {
        float strokeWidth = paint.getStrokeWidth();
        double d = strokeWidth;
        double d2 = strokeWidth / 2.0f;
        double d3 = d2 / 2.0d;
        double dAtan = Math.atan(d3 / d);
        double d4 = d * d;
        double dSqrt = Math.sqrt(((d3 * d2) / 2.0d) + d4) - 5.0d;
        float f5 = f3 - f;
        float f6 = f4 - f2;
        double[] dArrRotateVec = rotateVec(f5, f6, dAtan, true, dSqrt);
        double[] dArrRotateVec2 = rotateVec(f5, f6, -dAtan, true, dSqrt);
        double d5 = f3;
        float f7 = (float) (d5 - dArrRotateVec[0]);
        double d6 = f4;
        float f8 = (float) (d6 - dArrRotateVec[1]);
        float f9 = (float) (d5 - dArrRotateVec2[0]);
        float f10 = (float) (d6 - dArrRotateVec2[1]);
        Path path = new Path();
        path.moveTo(f, f2);
        path.lineTo(f7, f8);
        path.lineTo(f9, f10);
        path.close();
        canvas.drawPath(path, paint);
        double dAtan2 = Math.atan(d2 / d);
        double dSqrt2 = Math.sqrt((d2 * d2) + d4);
        double[] dArrRotateVec3 = rotateVec(f5, f6, dAtan2, true, dSqrt2);
        double[] dArrRotateVec4 = rotateVec(f5, f6, -dAtan2, true, dSqrt2);
        float f11 = (float) (d5 - dArrRotateVec3[0]);
        float f12 = (float) (d6 - dArrRotateVec3[1]);
        float f13 = (float) (d5 - dArrRotateVec4[0]);
        float f14 = (float) (d6 - dArrRotateVec4[1]);
        Path path2 = new Path();
        path2.moveTo(f3, f4);
        path2.lineTo(f11, f12);
        path2.lineTo(f13, f14);
        path2.close();
        canvas.drawPath(path2, paint);
    }

    public static double[] rotateVec(float f, float f2, double d, boolean z, double d2) {
        double[] dArr = new double[2];
        double d3 = f;
        double d4 = f2;
        double dCos = (Math.cos(d) * d3) - (Math.sin(d) * d4);
        double dSin = (d3 * Math.sin(d)) + (d4 * Math.cos(d));
        if (z) {
            double dSqrt = Math.sqrt((dCos * dCos) + (dSin * dSin));
            dCos = (dCos / dSqrt) * d2;
            dSin = (dSin / dSqrt) * d2;
        }
        dArr[0] = dCos;
        dArr[1] = dSin;
        return dArr;
    }

    public static void drawLine(Canvas canvas, float f, float f2, float f3, float f4, Paint paint) {
        canvas.drawLine(f, f2, f3, f4, paint);
    }

    public static void drawCircle(Canvas canvas, float f, float f2, float f3, Paint paint) {
        canvas.drawCircle(f, f2, f3, paint);
    }

    public static void drawRect(Canvas canvas, float f, float f2, float f3, float f4, Paint paint) {
        if (f < f3) {
            if (f2 < f4) {
                canvas.drawRect(f, f2, f3, f4, paint);
                return;
            } else {
                canvas.drawRect(f, f4, f3, f2, paint);
                return;
            }
        }
        if (f2 < f4) {
            canvas.drawRect(f3, f2, f, f4, paint);
        } else {
            canvas.drawRect(f3, f4, f, f2, paint);
        }
    }

    public static float computeAngle(float f, float f2, float f3, float f4) {
        float f5 = f3 - f;
        float f6 = f4 - f2;
        float fAtan = (float) ((((float) Math.atan(f6 / f5)) / 6.283185307179586d) * 360.0d);
        if (f5 >= 0.0f && f6 == 0.0f) {
            fAtan = 0.0f;
        } else if (f5 < 0.0f && f6 == 0.0f) {
            fAtan = 180.0f;
        } else if (f5 == 0.0f && f6 > 0.0f) {
            fAtan = 90.0f;
        } else if (f5 == 0.0f && f6 < 0.0f) {
            fAtan = 270.0f;
        } else if (f5 <= 0.0f || f6 <= 0.0f) {
            if ((f5 < 0.0f && f6 > 0.0f) || (f5 < 0.0f && f6 < 0.0f)) {
                fAtan += 180.0f;
            } else if (f5 > 0.0f && f6 < 0.0f) {
                fAtan += 360.0f;
            }
        }
        LogUtil.i("hzw", "[" + f + "," + f2 + "]:[" + f3 + "," + f4 + "] = " + fAtan);
        return fAtan;
    }

    public static PointF rotatePoint(PointF pointF, float f, float f2, float f3, float f4, float f5) {
        if (f % 360.0f == 0.0f) {
            pointF.x = f2;
            pointF.y = f3;
            return pointF;
        }
        double d = f2 - f4;
        double d2 = (float) ((f * 3.141592653589793d) / 180.0d);
        double d3 = f3 - f5;
        pointF.x = (float) (((Math.cos(d2) * d) - (Math.sin(d2) * d3)) + f4);
        pointF.y = (float) ((d * Math.sin(d2)) + (d3 * Math.cos(d2)) + f5);
        return pointF;
    }

    public static void assistActivity(Window window) {
        new AndroidBug5497Workaround(window);
    }

    public static class AndroidBug5497Workaround {
        private FrameLayout.LayoutParams frameLayoutParams;
        private View mChildOfContent;
        private int usableHeightPrevious;

        private AndroidBug5497Workaround(Window window) {
            this.mChildOfContent = ((FrameLayout) window.findViewById(android.R.id.content)).getChildAt(0);
            this.mChildOfContent.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: cn.highlight.lib_doodle.DrawUtil.AndroidBug5497Workaround.1
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    AndroidBug5497Workaround.this.possiblyResizeChildOfContent();
                }
            });
            this.frameLayoutParams = (FrameLayout.LayoutParams) this.mChildOfContent.getLayoutParams();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void possiblyResizeChildOfContent() {
            int iComputeUsableHeight = computeUsableHeight();
            if (iComputeUsableHeight != this.usableHeightPrevious) {
                int height = this.mChildOfContent.getRootView().getHeight();
                int i = height - iComputeUsableHeight;
                if (i > height / 4) {
                    this.frameLayoutParams.height = height - i;
                } else {
                    this.frameLayoutParams.height = height;
                }
                this.mChildOfContent.requestLayout();
                this.usableHeightPrevious = iComputeUsableHeight;
            }
        }

        private int computeUsableHeight() {
            Rect rect = new Rect();
            this.mChildOfContent.getWindowVisibleDisplayFrame(rect);
            return rect.bottom;
        }
    }

    public static void scaleRect(Rect rect, float f, float f2, float f3) {
        rect.left = (int) ((f2 - ((f2 - rect.left) * f)) + 0.5f);
        rect.right = (int) ((f2 - ((f2 - rect.right) * f)) + 0.5f);
        rect.top = (int) ((f3 - ((f3 - rect.top) * f)) + 0.5f);
        rect.bottom = (int) ((f3 - (f * (f3 - rect.bottom))) + 0.5f);
    }
}
