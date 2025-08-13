package com.lcodecore.tkrefreshlayout.utils;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ScrollView;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public class ScrollingUtil {
    private ScrollingUtil() {
    }

    public static boolean canChildScrollUp(View view) {
        if (view == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 14) {
            if (!(view instanceof AbsListView)) {
                return ViewCompat.canScrollVertically(view, -1) || view.getScrollY() > 0;
            }
            AbsListView absListView = (AbsListView) view;
            if (absListView.getChildCount() > 0) {
                return absListView.getFirstVisiblePosition() > 0 || absListView.getChildAt(0).getTop() < absListView.getPaddingTop();
            }
            return false;
        }
        return ViewCompat.canScrollVertically(view, -1);
    }

    public static boolean canChildScrollDown(View view) {
        if (Build.VERSION.SDK_INT < 14) {
            if (!(view instanceof AbsListView)) {
                return ViewCompat.canScrollVertically(view, 1) || view.getScrollY() < 0;
            }
            AbsListView absListView = (AbsListView) view;
            return absListView.getChildCount() > 0 && (absListView.getLastVisiblePosition() < absListView.getChildCount() - 1 || absListView.getChildAt(absListView.getChildCount() - 1).getBottom() > absListView.getPaddingBottom());
        }
        return ViewCompat.canScrollVertically(view, 1);
    }

    public static boolean isScrollViewOrWebViewToTop(View view) {
        return view != null && view.getScrollY() == 0;
    }

    public static boolean isViewToTop(View view, int i) {
        return view instanceof AbsListView ? isAbsListViewToTop((AbsListView) view) : view instanceof RecyclerView ? isRecyclerViewToTop((RecyclerView) view) : view != null && Math.abs(view.getScrollY()) <= i * 2;
    }

    public static boolean isViewToBottom(View view, int i) {
        if (view instanceof AbsListView) {
            return isAbsListViewToBottom((AbsListView) view);
        }
        if (view instanceof RecyclerView) {
            return isRecyclerViewToBottom((RecyclerView) view);
        }
        if (view instanceof WebView) {
            return isWebViewToBottom((WebView) view, i);
        }
        if (view instanceof ViewGroup) {
            return isViewGroupToBottom((ViewGroup) view);
        }
        return false;
    }

    public static boolean isAbsListViewToTop(AbsListView absListView) {
        if (absListView != null) {
            int top2 = absListView.getChildCount() > 0 ? absListView.getChildAt(0).getTop() - absListView.getPaddingTop() : 0;
            if (absListView.getFirstVisiblePosition() == 0 && top2 == 0) {
                return true;
            }
        }
        return false;
    }

    public static boolean isRecyclerViewToTop(RecyclerView recyclerView) {
        int top2;
        if (recyclerView != null) {
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            if (layoutManager == null || layoutManager.getItemCount() == 0) {
                return true;
            }
            if (recyclerView.getChildCount() > 0) {
                View childAt = recyclerView.getChildAt(0);
                if (childAt != null && childAt.getMeasuredHeight() >= recyclerView.getMeasuredHeight()) {
                    if (Build.VERSION.SDK_INT < 14) {
                        return !ViewCompat.canScrollVertically(recyclerView, -1) && recyclerView.getScrollY() <= 0;
                    }
                    return !ViewCompat.canScrollVertically(recyclerView, -1);
                }
                View childAt2 = recyclerView.getChildAt(0);
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) childAt2.getLayoutParams();
                top2 = ((childAt2.getTop() - layoutParams.topMargin) - getRecyclerViewItemTopInset(layoutParams)) - recyclerView.getPaddingTop();
            } else {
                top2 = 0;
            }
            if (layoutManager instanceof LinearLayoutManager) {
                if (((LinearLayoutManager) layoutManager).findFirstCompletelyVisibleItemPosition() < 1 && top2 == 0) {
                    return true;
                }
            } else if ((layoutManager instanceof StaggeredGridLayoutManager) && ((StaggeredGridLayoutManager) layoutManager).findFirstCompletelyVisibleItemPositions(null)[0] < 1 && top2 == 0) {
                return true;
            }
        }
        return false;
    }

    private static int getRecyclerViewItemTopInset(RecyclerView.LayoutParams layoutParams) throws NoSuchFieldException {
        try {
            Field declaredField = RecyclerView.LayoutParams.class.getDeclaredField("mDecorInsets");
            declaredField.setAccessible(true);
            return ((Rect) declaredField.get(layoutParams)).top;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static boolean isWebViewToBottom(WebView webView, int i) {
        return webView != null && (((float) webView.getContentHeight()) * webView.getScale()) - ((float) (webView.getHeight() + webView.getScrollY())) <= ((float) (i * 2));
    }

    public static boolean isViewGroupToBottom(ViewGroup viewGroup) {
        View childAt = viewGroup.getChildAt(0);
        return childAt != null && childAt.getMeasuredHeight() <= viewGroup.getScrollY() + viewGroup.getHeight();
    }

    public static boolean isScrollViewToBottom(ScrollView scrollView) {
        return scrollView != null && ((scrollView.getScrollY() + scrollView.getMeasuredHeight()) - scrollView.getPaddingTop()) - scrollView.getPaddingBottom() == scrollView.getChildAt(0).getMeasuredHeight();
    }

    public static boolean isAbsListViewToBottom(AbsListView absListView) {
        return absListView != null && absListView.getAdapter() != null && absListView.getChildCount() > 0 && absListView.getLastVisiblePosition() == ((ListAdapter) absListView.getAdapter()).getCount() - 1 && absListView.getChildAt(absListView.getChildCount() - 1).getBottom() <= absListView.getMeasuredHeight();
    }

    public static boolean isRecyclerViewToBottom(RecyclerView recyclerView) {
        RecyclerView.LayoutManager layoutManager;
        if (recyclerView != null && (layoutManager = recyclerView.getLayoutManager()) != null && layoutManager.getItemCount() != 0) {
            if (layoutManager instanceof LinearLayoutManager) {
                View childAt = recyclerView.getChildAt(recyclerView.getChildCount() - 1);
                if (childAt != null && childAt.getMeasuredHeight() >= recyclerView.getMeasuredHeight()) {
                    if (Build.VERSION.SDK_INT < 14) {
                        return !ViewCompat.canScrollVertically(recyclerView, 1) && recyclerView.getScrollY() >= 0;
                    }
                    return !ViewCompat.canScrollVertically(recyclerView, 1);
                }
                LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
                if (linearLayoutManager.findLastCompletelyVisibleItemPosition() == linearLayoutManager.getItemCount() - 1) {
                    return true;
                }
            } else if (layoutManager instanceof StaggeredGridLayoutManager) {
                StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
                int[] iArrFindLastCompletelyVisibleItemPositions = staggeredGridLayoutManager.findLastCompletelyVisibleItemPositions(null);
                int itemCount = staggeredGridLayoutManager.getItemCount() - 1;
                for (int i : iArrFindLastCompletelyVisibleItemPositions) {
                    if (i == itemCount) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static void scrollAViewBy(View view, int i) {
        if (view instanceof RecyclerView) {
            ((RecyclerView) view).scrollBy(0, i);
            return;
        }
        if (view instanceof ScrollView) {
            ((ScrollView) view).smoothScrollBy(0, i);
        } else {
            if (view instanceof AbsListView) {
                ((AbsListView) view).smoothScrollBy(i, 0);
                return;
            }
            try {
                view.getClass().getDeclaredMethod("smoothScrollBy", Integer.class, Integer.class).invoke(view, 0, Integer.valueOf(i));
            } catch (Exception unused) {
                view.scrollBy(0, i);
            }
        }
    }

    public static void scrollToBottom(final ScrollView scrollView) {
        if (scrollView != null) {
            scrollView.post(new Runnable() { // from class: com.lcodecore.tkrefreshlayout.utils.ScrollingUtil.1
                @Override // java.lang.Runnable
                public void run() {
                    scrollView.fullScroll(130);
                }
            });
        }
    }

    public static void scrollToBottom(final AbsListView absListView) {
        if (absListView == null || absListView.getAdapter() == null || ((ListAdapter) absListView.getAdapter()).getCount() <= 0) {
            return;
        }
        absListView.post(new Runnable() { // from class: com.lcodecore.tkrefreshlayout.utils.ScrollingUtil.2
            @Override // java.lang.Runnable
            public void run() {
                absListView.setSelection(((ListAdapter) r0.getAdapter()).getCount() - 1);
            }
        });
    }

    public static void scrollToBottom(final RecyclerView recyclerView) {
        if (recyclerView == null || recyclerView.getAdapter() == null || recyclerView.getAdapter().getItemCount() <= 0) {
            return;
        }
        recyclerView.post(new Runnable() { // from class: com.lcodecore.tkrefreshlayout.utils.ScrollingUtil.3
            @Override // java.lang.Runnable
            public void run() {
                recyclerView.smoothScrollToPosition(r0.getAdapter().getItemCount() - 1);
            }
        });
    }

    public static void scrollToBottom(View view) {
        if (view instanceof RecyclerView) {
            scrollToBottom((RecyclerView) view);
        }
        if (view instanceof AbsListView) {
            scrollToBottom((AbsListView) view);
        }
        if (view instanceof ScrollView) {
            scrollToBottom((ScrollView) view);
        }
    }

    public static int getScreenHeight(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }
}
