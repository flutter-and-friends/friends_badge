package cn.highlight.work_card_write.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cn.highlight.work_card_write.C0498R;

/* loaded from: classes.dex */
public class NFCLocationActivity_ViewBinding implements Unbinder {
    private NFCLocationActivity target;
    private View view7f090147;
    private View view7f090184;
    private View view7f090186;
    private View view7f09018f;
    private View view7f090191;
    private View view7f090198;
    private View view7f090199;

    public NFCLocationActivity_ViewBinding(NFCLocationActivity nFCLocationActivity) {
        this(nFCLocationActivity, nFCLocationActivity.getWindow().getDecorView());
    }

    public NFCLocationActivity_ViewBinding(final NFCLocationActivity nFCLocationActivity, View view) {
        this.target = nFCLocationActivity;
        View viewFindRequiredView = Utils.findRequiredView(view, C0498R.id.imgBack, "field 'imgBack' and method 'onViewClicked'");
        nFCLocationActivity.imgBack = (ImageView) Utils.castView(viewFindRequiredView, C0498R.id.imgBack, "field 'imgBack'", ImageView.class);
        this.view7f090147 = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.NFCLocationActivity_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                nFCLocationActivity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView2 = Utils.findRequiredView(view, C0498R.id.linearIphone, "field 'linearIphone' and method 'onViewClicked'");
        nFCLocationActivity.linearIphone = (LinearLayout) Utils.castView(viewFindRequiredView2, C0498R.id.linearIphone, "field 'linearIphone'", LinearLayout.class);
        this.view7f090186 = viewFindRequiredView2;
        viewFindRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.NFCLocationActivity_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                nFCLocationActivity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView3 = Utils.findRequiredView(view, C0498R.id.linearHUAWEI, "field 'linearHUAWEI' and method 'onViewClicked'");
        nFCLocationActivity.linearHUAWEI = (LinearLayout) Utils.castView(viewFindRequiredView3, C0498R.id.linearHUAWEI, "field 'linearHUAWEI'", LinearLayout.class);
        this.view7f090184 = viewFindRequiredView3;
        viewFindRequiredView3.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.NFCLocationActivity_ViewBinding.3
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                nFCLocationActivity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView4 = Utils.findRequiredView(view, C0498R.id.linearXiaoMi, "field 'linearXiaoMi' and method 'onViewClicked'");
        nFCLocationActivity.linearXiaoMi = (LinearLayout) Utils.castView(viewFindRequiredView4, C0498R.id.linearXiaoMi, "field 'linearXiaoMi'", LinearLayout.class);
        this.view7f090199 = viewFindRequiredView4;
        viewFindRequiredView4.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.NFCLocationActivity_ViewBinding.4
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                nFCLocationActivity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView5 = Utils.findRequiredView(view, C0498R.id.linearSanXing, "field 'linearSanXing' and method 'onViewClicked'");
        nFCLocationActivity.linearSanXing = (LinearLayout) Utils.castView(viewFindRequiredView5, C0498R.id.linearSanXing, "field 'linearSanXing'", LinearLayout.class);
        this.view7f090191 = viewFindRequiredView5;
        viewFindRequiredView5.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.NFCLocationActivity_ViewBinding.5
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                nFCLocationActivity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView6 = Utils.findRequiredView(view, C0498R.id.linearOppo, "field 'linearOppo' and method 'onViewClicked'");
        nFCLocationActivity.linearOppo = (LinearLayout) Utils.castView(viewFindRequiredView6, C0498R.id.linearOppo, "field 'linearOppo'", LinearLayout.class);
        this.view7f09018f = viewFindRequiredView6;
        viewFindRequiredView6.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.NFCLocationActivity_ViewBinding.6
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                nFCLocationActivity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView7 = Utils.findRequiredView(view, C0498R.id.linearVivo, "field 'linearVivo' and method 'onViewClicked'");
        nFCLocationActivity.linearVivo = (LinearLayout) Utils.castView(viewFindRequiredView7, C0498R.id.linearVivo, "field 'linearVivo'", LinearLayout.class);
        this.view7f090198 = viewFindRequiredView7;
        viewFindRequiredView7.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.NFCLocationActivity_ViewBinding.7
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                nFCLocationActivity.onViewClicked(view2);
            }
        });
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        NFCLocationActivity nFCLocationActivity = this.target;
        if (nFCLocationActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        nFCLocationActivity.imgBack = null;
        nFCLocationActivity.linearIphone = null;
        nFCLocationActivity.linearHUAWEI = null;
        nFCLocationActivity.linearXiaoMi = null;
        nFCLocationActivity.linearSanXing = null;
        nFCLocationActivity.linearOppo = null;
        nFCLocationActivity.linearVivo = null;
        this.view7f090147.setOnClickListener(null);
        this.view7f090147 = null;
        this.view7f090186.setOnClickListener(null);
        this.view7f090186 = null;
        this.view7f090184.setOnClickListener(null);
        this.view7f090184 = null;
        this.view7f090199.setOnClickListener(null);
        this.view7f090199 = null;
        this.view7f090191.setOnClickListener(null);
        this.view7f090191 = null;
        this.view7f09018f.setOnClickListener(null);
        this.view7f09018f = null;
        this.view7f090198.setOnClickListener(null);
        this.view7f090198 = null;
    }
}
