package cn.highlight.work_card_write.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cn.highlight.work_card_write.R;

/* loaded from: classes.dex */
public class Identity2Activity_ViewBinding implements Unbinder {
    private Identity2Activity target;
    private View view7f090092;
    private View view7f090147;
    private View view7f09019c;
    private View view7f09019d;
    private View view7f0901f7;
    private View view7f0901f8;

    public Identity2Activity_ViewBinding(Identity2Activity identity2Activity) {
        this(identity2Activity, identity2Activity.getWindow().getDecorView());
    }

    public Identity2Activity_ViewBinding(final Identity2Activity identity2Activity, View view) {
        this.target = identity2Activity;
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.imgBack, "field 'imgBack' and method 'onViewClicked'");
        identity2Activity.imgBack = (ImageView) Utils.castView(viewFindRequiredView, R.id.imgBack, "field 'imgBack'", ImageView.class);
        this.view7f090147 = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.Identity2Activity_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                identity2Activity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView2 = Utils.findRequiredView(view, R.id.radio_enterprise, "field 'radioEnterprise' and method 'onViewClicked'");
        identity2Activity.radioEnterprise = (RadioButton) Utils.castView(viewFindRequiredView2, R.id.radio_enterprise, "field 'radioEnterprise'", RadioButton.class);
        this.view7f0901f7 = viewFindRequiredView2;
        viewFindRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.Identity2Activity_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                identity2Activity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView3 = Utils.findRequiredView(view, R.id.linear_enterprise, "field 'linearEnterprise' and method 'onViewClicked'");
        identity2Activity.linearEnterprise = (LinearLayout) Utils.castView(viewFindRequiredView3, R.id.linear_enterprise, "field 'linearEnterprise'", LinearLayout.class);
        this.view7f09019c = viewFindRequiredView3;
        viewFindRequiredView3.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.Identity2Activity_ViewBinding.3
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                identity2Activity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView4 = Utils.findRequiredView(view, R.id.radio_person, "field 'radioPerson' and method 'onViewClicked'");
        identity2Activity.radioPerson = (RadioButton) Utils.castView(viewFindRequiredView4, R.id.radio_person, "field 'radioPerson'", RadioButton.class);
        this.view7f0901f8 = viewFindRequiredView4;
        viewFindRequiredView4.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.Identity2Activity_ViewBinding.4
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                identity2Activity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView5 = Utils.findRequiredView(view, R.id.linear_person, "field 'linearPerson' and method 'onViewClicked'");
        identity2Activity.linearPerson = (LinearLayout) Utils.castView(viewFindRequiredView5, R.id.linear_person, "field 'linearPerson'", LinearLayout.class);
        this.view7f09019d = viewFindRequiredView5;
        viewFindRequiredView5.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.Identity2Activity_ViewBinding.5
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                identity2Activity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView6 = Utils.findRequiredView(view, R.id.btnSave, "field 'btnSave' and method 'onViewClicked'");
        identity2Activity.btnSave = (TextView) Utils.castView(viewFindRequiredView6, R.id.btnSave, "field 'btnSave'", TextView.class);
        this.view7f090092 = viewFindRequiredView6;
        viewFindRequiredView6.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.Identity2Activity_ViewBinding.6
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                identity2Activity.onViewClicked(view2);
            }
        });
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        Identity2Activity identity2Activity = this.target;
        if (identity2Activity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        identity2Activity.imgBack = null;
        identity2Activity.radioEnterprise = null;
        identity2Activity.linearEnterprise = null;
        identity2Activity.radioPerson = null;
        identity2Activity.linearPerson = null;
        identity2Activity.btnSave = null;
        this.view7f090147.setOnClickListener(null);
        this.view7f090147 = null;
        this.view7f0901f7.setOnClickListener(null);
        this.view7f0901f7 = null;
        this.view7f09019c.setOnClickListener(null);
        this.view7f09019c = null;
        this.view7f0901f8.setOnClickListener(null);
        this.view7f0901f8 = null;
        this.view7f09019d.setOnClickListener(null);
        this.view7f09019d = null;
        this.view7f090092.setOnClickListener(null);
        this.view7f090092 = null;
    }
}
