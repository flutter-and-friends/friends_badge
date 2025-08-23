package cn.highlight.core.utils.banner;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import cn.highlight.core.R;
import cn.highlight.core.utils.ScreenUtil;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class BannerView extends LinearLayout {
    private boolean isManualLoop;
    private boolean isZidongLunbo;
    private ImageCycleAdapter mAdvAdapter;
    private ViewPager mAdvPager;
    private Context mContext;
    private ViewGroup mGroup;
    private Handler mHandler;
    private int mImageIndex;
    private Runnable mImageTimerTask;
    private ImageView mImageView;
    private ImageView[] mImageViews;
    private int size;

    public interface ImageCycleViewListener {
        void displayImage(String str, ImageView imageView);

        void onImageClick(int i, View view);
    }

    static /* synthetic */ int access$108(BannerView bannerView) {
        int i = bannerView.mImageIndex;
        bannerView.mImageIndex = i + 1;
        return i;
    }

    public BannerView(Context context) {
        super(context);
        this.mAdvPager = null;
        this.mImageView = null;
        this.mImageViews = null;
        this.mImageIndex = 0;
        this.isManualLoop = false;
        this.isZidongLunbo = false;
        this.mHandler = new Handler();
        this.mImageTimerTask = new Runnable() { // from class: cn.highlight.core.utils.banner.BannerView.1
            @Override // java.lang.Runnable
            public void run() throws Resources.NotFoundException {
                if (BannerView.this.mImageViews != null) {
                    BannerView.access$108(BannerView.this);
                    if (!BannerView.this.isManualLoop && BannerView.this.mImageIndex == BannerView.this.size) {
                        BannerView.this.mImageIndex = 0;
                    }
                    BannerView.this.mAdvPager.setCurrentItem(BannerView.this.mImageIndex);
                }
            }
        };
    }

    public BannerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mAdvPager = null;
        this.mImageView = null;
        this.mImageViews = null;
        this.mImageIndex = 0;
        this.isManualLoop = false;
        this.isZidongLunbo = false;
        this.mHandler = new Handler();
        this.mImageTimerTask = new Runnable() { // from class: cn.highlight.core.utils.banner.BannerView.1
            @Override // java.lang.Runnable
            public void run() throws Resources.NotFoundException {
                if (BannerView.this.mImageViews != null) {
                    BannerView.access$108(BannerView.this);
                    if (!BannerView.this.isManualLoop && BannerView.this.mImageIndex == BannerView.this.size) {
                        BannerView.this.mImageIndex = 0;
                    }
                    BannerView.this.mAdvPager.setCurrentItem(BannerView.this.mImageIndex);
                }
            }
        };
        this.mContext = context;
        LayoutInflater.from(context).inflate(R.layout.banner_view, this);
        this.mAdvPager = (ViewPager) findViewById(R.id.adv_pager);
        this.mAdvPager.setOnPageChangeListener(new GuidePageChangeListener());
        this.mAdvPager.setOnTouchListener(new View.OnTouchListener() { // from class: cn.highlight.core.utils.banner.BannerView.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() != 1) {
                    BannerView.this.stopImageTimerTask();
                    return false;
                }
                BannerView.this.startImageTimerTask();
                return false;
            }
        });
        this.mGroup = (ViewGroup) findViewById(R.id.viewGroup);
    }

    public void setImageResources(List<BannerBean> list, ImageCycleViewListener imageCycleViewListener) throws Resources.NotFoundException {
        this.mGroup.removeAllViews();
        this.size = list.size();
        this.mImageViews = new ImageView[this.size];
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.width = ScreenUtil.DPtoPX(7, getContext());
        layoutParams.height = ScreenUtil.DPtoPX(7, getContext());
        layoutParams.setMargins(ScreenUtil.DPtoPX(7, getContext()), 0, 0, 0);
        for (int i = 0; i < this.size; i++) {
            this.mImageView = new ImageView(this.mContext);
            this.mImageView.setLayoutParams(layoutParams);
            ImageView[] imageViewArr = this.mImageViews;
            imageViewArr[i] = this.mImageView;
            if (i == 0) {
                imageViewArr[i].setBackgroundResource(R.drawable.dot_b);
            } else {
                imageViewArr[i].setBackgroundResource(R.drawable.dot_h);
            }
            this.mGroup.addView(this.mImageViews[i]);
        }
        if (1 == list.size()) {
            this.mGroup.setVisibility(8);
            setIsManualLoop(false);
        }
        this.mAdvAdapter = new ImageCycleAdapter(this.mContext, list, imageCycleViewListener);
        this.mAdvPager.setAdapter(this.mAdvAdapter);
        if (this.isManualLoop) {
            this.mAdvPager.setCurrentItem(this.mImageViews.length * 100000);
        }
        startImageTimerTask();
    }

    public void setIsManualLoop(boolean z) {
        this.isManualLoop = z;
    }

    public void setIsZidongLunbo(boolean z) {
        this.isZidongLunbo = z;
    }

    public void startImageCycle() {
        startImageTimerTask();
    }

    public void pushImageCycle() {
        stopImageTimerTask();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startImageTimerTask() {
        if (this.isZidongLunbo) {
            stopImageTimerTask();
            this.mHandler.postDelayed(this.mImageTimerTask, 3000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopImageTimerTask() {
        if (this.isZidongLunbo) {
            this.mHandler.removeCallbacks(this.mImageTimerTask);
        }
    }

    private final class GuidePageChangeListener implements ViewPager.OnPageChangeListener {
        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
        }

        private GuidePageChangeListener() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            if (i == 0) {
                BannerView.this.startImageTimerTask();
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            BannerView.this.mImageIndex = i;
            int length = BannerView.this.mImageViews.length;
            for (int i2 = 0; i2 < length; i2++) {
                if (i % length != i2) {
                    BannerView.this.mImageViews[i2 % length].setBackgroundResource(R.drawable.dot_b);
                } else {
                    BannerView.this.mImageViews[i2 % length].setBackgroundResource(R.drawable.dot_h);
                }
            }
        }
    }

    private class ImageCycleAdapter extends PagerAdapter {
        private List<BannerBean> mAdList;
        private Context mContext;
        private ImageCycleViewListener mImageCycleViewListener;
        private ArrayList<ImageView> mImageViewCacheList = new ArrayList<>();

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object obj) {
            return view == obj;
        }

        public ImageCycleAdapter(Context context, List<BannerBean> list, ImageCycleViewListener imageCycleViewListener) {
            this.mContext = context;
            this.mAdList = list;
            this.mImageCycleViewListener = imageCycleViewListener;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            if (BannerView.this.isManualLoop) {
                return Integer.MAX_VALUE;
            }
            return this.mAdList.size();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getPosition(int i) {
            return i % this.mAdList.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, final int i) {
            ImageView imageViewRemove;
            String imgUrl = this.mAdList.get(getPosition(i)).getImgUrl();
            if (this.mImageViewCacheList.isEmpty()) {
                imageViewRemove = new ImageView(this.mContext);
                imageViewRemove.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
                imageViewRemove.setScaleType(ImageView.ScaleType.FIT_XY);
            } else {
                imageViewRemove = this.mImageViewCacheList.remove(0);
            }
            imageViewRemove.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.core.utils.banner.BannerView.ImageCycleAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ImageCycleAdapter.this.mImageCycleViewListener.onImageClick(ImageCycleAdapter.this.getPosition(i), view);
                }
            });
            imageViewRemove.setTag(R.id.img_url_banner, imgUrl);
            viewGroup.addView(imageViewRemove);
            this.mImageCycleViewListener.displayImage(imgUrl, imageViewRemove);
            return imageViewRemove;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
            ImageView imageView = (ImageView) obj;
            viewGroup.removeView(imageView);
            this.mImageViewCacheList.add(imageView);
        }
    }
}
