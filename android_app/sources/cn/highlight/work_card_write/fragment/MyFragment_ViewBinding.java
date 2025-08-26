package cn.highlight.work_card_write.fragment;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cn.highlight.work_card_write.C0498R;

/* loaded from: classes.dex */
public class MyFragment_ViewBinding implements Unbinder {
    private MyFragment target;
    private View view7f090176;
    private View view7f09017b;
    private View view7f090188;
    private View view7f09018e;
    private View view7f090196;
    private View view7f090197;
    private View view7f0901a0;
    private View view7f0901a8;

    public MyFragment_ViewBinding(final MyFragment myFragment, View view) {
        this.target = myFragment;
        View viewFindRequiredView = Utils.findRequiredView(view, C0498R.id.linearLanguage, "field 'linearLanguage' and method 'onViewClicked'");
        myFragment.linearLanguage = (LinearLayout) Utils.castView(viewFindRequiredView, C0498R.id.linearLanguage, "field 'linearLanguage'", LinearLayout.class);
        this.view7f090188 = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.fragment.MyFragment_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                myFragment.onViewClicked(view2);
            }
        });
        View viewFindRequiredView2 = Utils.findRequiredView(view, C0498R.id.linearUse, "field 'linearUse' and method 'onViewClicked'");
        myFragment.linearUse = (LinearLayout) Utils.castView(viewFindRequiredView2, C0498R.id.linearUse, "field 'linearUse'", LinearLayout.class);
        this.view7f090196 = viewFindRequiredView2;
        viewFindRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.fragment.MyFragment_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                myFragment.onViewClicked(view2);
            }
        });
        View viewFindRequiredView3 = Utils.findRequiredView(view, C0498R.id.linearNfc, "field 'linearNfc' and method 'onViewClicked'");
        myFragment.linearNfc = (LinearLayout) Utils.castView(viewFindRequiredView3, C0498R.id.linearNfc, "field 'linearNfc'", LinearLayout.class);
        this.view7f09018e = viewFindRequiredView3;
        viewFindRequiredView3.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.fragment.MyFragment_ViewBinding.3
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                myFragment.onViewClicked(view2);
            }
        });
        View viewFindRequiredView4 = Utils.findRequiredView(view, C0498R.id.linearAbout, "field 'linearAbout' and method 'onViewClicked'");
        myFragment.linearAbout = (LinearLayout) Utils.castView(viewFindRequiredView4, C0498R.id.linearAbout, "field 'linearAbout'", LinearLayout.class);
        this.view7f090176 = viewFindRequiredView4;
        viewFindRequiredView4.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.fragment.MyFragment_ViewBinding.4
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                myFragment.onViewClicked(view2);
            }
        });
        View viewFindRequiredView5 = Utils.findRequiredView(view, C0498R.id.linearClear, "field 'linearClear' and method 'onViewClicked'");
        myFragment.linearClear = (LinearLayout) Utils.castView(viewFindRequiredView5, C0498R.id.linearClear, "field 'linearClear'", LinearLayout.class);
        this.view7f09017b = viewFindRequiredView5;
        viewFindRequiredView5.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.fragment.MyFragment_ViewBinding.5
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                myFragment.onViewClicked(view2);
            }
        });
        View viewFindRequiredView6 = Utils.findRequiredView(view, C0498R.id.linearUserType, "field 'linearUserType' and method 'onViewClicked'");
        myFragment.linearUserType = (LinearLayout) Utils.castView(viewFindRequiredView6, C0498R.id.linearUserType, "field 'linearUserType'", LinearLayout.class);
        this.view7f090197 = viewFindRequiredView6;
        viewFindRequiredView6.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.fragment.MyFragment_ViewBinding.6
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                myFragment.onViewClicked(view2);
            }
        });
        View viewFindRequiredView7 = Utils.findRequiredView(view, C0498R.id.ll_user_info, "field 'llUserInfo' and method 'onViewClicked'");
        myFragment.llUserInfo = (LinearLayout) Utils.castView(viewFindRequiredView7, C0498R.id.ll_user_info, "field 'llUserInfo'", LinearLayout.class);
        this.view7f0901a8 = viewFindRequiredView7;
        viewFindRequiredView7.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.fragment.MyFragment_ViewBinding.7
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                myFragment.onViewClicked(view2);
            }
        });
        myFragment.tvUserNmae = (TextView) Utils.findRequiredViewAsType(view, C0498R.id.tv_userNmae, "field 'tvUserNmae'", TextView.class);
        myFragment.tvUserinfo = (TextView) Utils.findRequiredViewAsType(view, C0498R.id.tvUserinfo, "field 'tvUserinfo'", TextView.class);
        View viewFindRequiredView8 = Utils.findRequiredView(view, C0498R.id.llArrowRight, "field 'llArrowRight' and method 'onViewClicked'");
        myFragment.llArrowRight = (LinearLayout) Utils.castView(viewFindRequiredView8, C0498R.id.llArrowRight, "field 'llArrowRight'", LinearLayout.class);
        this.view7f0901a0 = viewFindRequiredView8;
        viewFindRequiredView8.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.fragment.MyFragment_ViewBinding.8
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                myFragment.onViewClicked(view2);
            }
        });
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        MyFragment myFragment = this.target;
        if (myFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        myFragment.linearLanguage = null;
        myFragment.linearUse = null;
        myFragment.linearNfc = null;
        myFragment.linearAbout = null;
        myFragment.linearClear = null;
        myFragment.linearUserType = null;
        myFragment.llUserInfo = null;
        myFragment.tvUserNmae = null;
        myFragment.tvUserinfo = null;
        myFragment.llArrowRight = null;
        this.view7f090188.setOnClickListener(null);
        this.view7f090188 = null;
        this.view7f090196.setOnClickListener(null);
        this.view7f090196 = null;
        this.view7f09018e.setOnClickListener(null);
        this.view7f09018e = null;
        this.view7f090176.setOnClickListener(null);
        this.view7f090176 = null;
        this.view7f09017b.setOnClickListener(null);
        this.view7f09017b = null;
        this.view7f090197.setOnClickListener(null);
        this.view7f090197 = null;
        this.view7f0901a8.setOnClickListener(null);
        this.view7f0901a8 = null;
        this.view7f0901a0.setOnClickListener(null);
        this.view7f0901a0 = null;
    }
}
