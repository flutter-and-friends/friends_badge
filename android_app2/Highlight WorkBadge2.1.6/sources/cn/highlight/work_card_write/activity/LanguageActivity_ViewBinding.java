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
public class LanguageActivity_ViewBinding implements Unbinder {
    private LanguageActivity target;
    private View view7f090092;
    private View view7f090147;
    private View view7f09017e;
    private View view7f090181;
    private View view7f09019b;
    private View view7f0901f4;
    private View view7f0901f5;
    private View view7f0901f6;

    public LanguageActivity_ViewBinding(LanguageActivity languageActivity) {
        this(languageActivity, languageActivity.getWindow().getDecorView());
    }

    public LanguageActivity_ViewBinding(final LanguageActivity languageActivity, View view) {
        this.target = languageActivity;
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.imgBack, "field 'imgBack' and method 'onViewClicked'");
        languageActivity.imgBack = (ImageView) Utils.castView(viewFindRequiredView, R.id.imgBack, "field 'imgBack'", ImageView.class);
        this.view7f090147 = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.LanguageActivity_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                languageActivity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView2 = Utils.findRequiredView(view, R.id.linearEn, "field 'linearEn' and method 'onViewClicked'");
        languageActivity.linearEn = (LinearLayout) Utils.castView(viewFindRequiredView2, R.id.linearEn, "field 'linearEn'", LinearLayout.class);
        this.view7f090181 = viewFindRequiredView2;
        viewFindRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.LanguageActivity_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                languageActivity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView3 = Utils.findRequiredView(view, R.id.radioEn, "field 'radioEn' and method 'onViewClicked'");
        languageActivity.radioEn = (RadioButton) Utils.castView(viewFindRequiredView3, R.id.radioEn, "field 'radioEn'", RadioButton.class);
        this.view7f0901f5 = viewFindRequiredView3;
        viewFindRequiredView3.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.LanguageActivity_ViewBinding.3
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                languageActivity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView4 = Utils.findRequiredView(view, R.id.linearZh, "field 'linearZh' and method 'onViewClicked'");
        languageActivity.linearZh = (LinearLayout) Utils.castView(viewFindRequiredView4, R.id.linearZh, "field 'linearZh'", LinearLayout.class);
        this.view7f09019b = viewFindRequiredView4;
        viewFindRequiredView4.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.LanguageActivity_ViewBinding.4
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                languageActivity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView5 = Utils.findRequiredView(view, R.id.radioZh, "field 'radioZh' and method 'onViewClicked'");
        languageActivity.radioZh = (RadioButton) Utils.castView(viewFindRequiredView5, R.id.radioZh, "field 'radioZh'", RadioButton.class);
        this.view7f0901f6 = viewFindRequiredView5;
        viewFindRequiredView5.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.LanguageActivity_ViewBinding.5
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                languageActivity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView6 = Utils.findRequiredView(view, R.id.linearDe, "field 'linearDe' and method 'onViewClicked'");
        languageActivity.linearDe = (LinearLayout) Utils.castView(viewFindRequiredView6, R.id.linearDe, "field 'linearDe'", LinearLayout.class);
        this.view7f09017e = viewFindRequiredView6;
        viewFindRequiredView6.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.LanguageActivity_ViewBinding.6
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                languageActivity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView7 = Utils.findRequiredView(view, R.id.radioDe, "field 'radioDe' and method 'onViewClicked'");
        languageActivity.radioDe = (RadioButton) Utils.castView(viewFindRequiredView7, R.id.radioDe, "field 'radioDe'", RadioButton.class);
        this.view7f0901f4 = viewFindRequiredView7;
        viewFindRequiredView7.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.LanguageActivity_ViewBinding.7
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                languageActivity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView8 = Utils.findRequiredView(view, R.id.btnSave, "field 'btnSave' and method 'onViewClicked'");
        languageActivity.btnSave = (TextView) Utils.castView(viewFindRequiredView8, R.id.btnSave, "field 'btnSave'", TextView.class);
        this.view7f090092 = viewFindRequiredView8;
        viewFindRequiredView8.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.LanguageActivity_ViewBinding.8
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                languageActivity.onViewClicked(view2);
            }
        });
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        LanguageActivity languageActivity = this.target;
        if (languageActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        languageActivity.imgBack = null;
        languageActivity.linearEn = null;
        languageActivity.radioEn = null;
        languageActivity.linearZh = null;
        languageActivity.radioZh = null;
        languageActivity.linearDe = null;
        languageActivity.radioDe = null;
        languageActivity.btnSave = null;
        this.view7f090147.setOnClickListener(null);
        this.view7f090147 = null;
        this.view7f090181.setOnClickListener(null);
        this.view7f090181 = null;
        this.view7f0901f5.setOnClickListener(null);
        this.view7f0901f5 = null;
        this.view7f09019b.setOnClickListener(null);
        this.view7f09019b = null;
        this.view7f0901f6.setOnClickListener(null);
        this.view7f0901f6 = null;
        this.view7f09017e.setOnClickListener(null);
        this.view7f09017e = null;
        this.view7f0901f4.setOnClickListener(null);
        this.view7f0901f4 = null;
        this.view7f090092.setOnClickListener(null);
        this.view7f090092 = null;
    }
}
