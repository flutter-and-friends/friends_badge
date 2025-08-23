package cn.highlight.work_card_write.fragment;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cn.highlight.work_card_write.R;
import com.google.android.material.tabs.TabLayout;

/* loaded from: classes.dex */
public class CardFragment_ViewBinding implements Unbinder {
    private CardFragment target;
    private View view7f0900a6;
    private View view7f0900a7;
    private View view7f0901bf;
    private View view7f0901ca;
    private View view7f09028b;

    public CardFragment_ViewBinding(final CardFragment cardFragment, View view) {
        this.target = cardFragment;
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.card_title_model, "field 'cardTitleModel' and method 'onViewClicked'");
        cardFragment.cardTitleModel = (RelativeLayout) Utils.castView(viewFindRequiredView, R.id.card_title_model, "field 'cardTitleModel'", RelativeLayout.class);
        this.view7f0900a6 = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.fragment.CardFragment_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                cardFragment.onViewClicked(view2);
            }
        });
        cardFragment.cardModelTv = (TextView) Utils.findRequiredViewAsType(view, R.id.card_model_tv, "field 'cardModelTv'", TextView.class);
        cardFragment.cardModelTv1 = (TextView) Utils.findRequiredViewAsType(view, R.id.card_model_tv1, "field 'cardModelTv1'", TextView.class);
        View viewFindRequiredView2 = Utils.findRequiredView(view, R.id.card_title_theme, "field 'cardTitleTheme' and method 'onViewClicked'");
        cardFragment.cardTitleTheme = (RelativeLayout) Utils.castView(viewFindRequiredView2, R.id.card_title_theme, "field 'cardTitleTheme'", RelativeLayout.class);
        this.view7f0900a7 = viewFindRequiredView2;
        viewFindRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.fragment.CardFragment_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                cardFragment.onViewClicked(view2);
            }
        });
        cardFragment.cardThemeTv = (TextView) Utils.findRequiredViewAsType(view, R.id.card_theme_tv, "field 'cardThemeTv'", TextView.class);
        cardFragment.cardThemeTv1 = (TextView) Utils.findRequiredViewAsType(view, R.id.card_theme_tv1, "field 'cardThemeTv1'", TextView.class);
        cardFragment.linearModel = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearModel, "field 'linearModel'", LinearLayout.class);
        cardFragment.modelTabLayout = (TabLayout) Utils.findRequiredViewAsType(view, R.id.modelTabLayout, "field 'modelTabLayout'", TabLayout.class);
        View viewFindRequiredView3 = Utils.findRequiredView(view, R.id.modelSelectSize, "field 'modelSelectSize' and method 'onViewClicked'");
        cardFragment.modelSelectSize = (LinearLayout) Utils.castView(viewFindRequiredView3, R.id.modelSelectSize, "field 'modelSelectSize'", LinearLayout.class);
        this.view7f0901bf = viewFindRequiredView3;
        viewFindRequiredView3.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.fragment.CardFragment_ViewBinding.3
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                cardFragment.onViewClicked(view2);
            }
        });
        cardFragment.modelSize = (TextView) Utils.findRequiredViewAsType(view, R.id.modelSize, "field 'modelSize'", TextView.class);
        cardFragment.modelRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.modelRecyclerView, "field 'modelRecyclerView'", RecyclerView.class);
        cardFragment.linearTheme = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearTheme, "field 'linearTheme'", LinearLayout.class);
        cardFragment.themTabLayout = (TabLayout) Utils.findRequiredViewAsType(view, R.id.themTabLayout, "field 'themTabLayout'", TabLayout.class);
        View viewFindRequiredView4 = Utils.findRequiredView(view, R.id.themeSelectSize, "field 'themeSelectSize' and method 'onViewClicked'");
        cardFragment.themeSelectSize = (LinearLayout) Utils.castView(viewFindRequiredView4, R.id.themeSelectSize, "field 'themeSelectSize'", LinearLayout.class);
        this.view7f09028b = viewFindRequiredView4;
        viewFindRequiredView4.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.fragment.CardFragment_ViewBinding.4
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                cardFragment.onViewClicked(view2);
            }
        });
        cardFragment.themeSize = (TextView) Utils.findRequiredViewAsType(view, R.id.themeSize, "field 'themeSize'", TextView.class);
        cardFragment.themeRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.themeRecyclerView, "field 'themeRecyclerView'", RecyclerView.class);
        View viewFindRequiredView5 = Utils.findRequiredView(view, R.id.nfcLinear, "field 'nfcLinear' and method 'onViewClicked'");
        cardFragment.nfcLinear = (ImageView) Utils.castView(viewFindRequiredView5, R.id.nfcLinear, "field 'nfcLinear'", ImageView.class);
        this.view7f0901ca = viewFindRequiredView5;
        viewFindRequiredView5.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.fragment.CardFragment_ViewBinding.5
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                cardFragment.onViewClicked(view2);
            }
        });
        cardFragment.linearZWSJ = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearZWSJ, "field 'linearZWSJ'", LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        CardFragment cardFragment = this.target;
        if (cardFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        cardFragment.cardTitleModel = null;
        cardFragment.cardModelTv = null;
        cardFragment.cardModelTv1 = null;
        cardFragment.cardTitleTheme = null;
        cardFragment.cardThemeTv = null;
        cardFragment.cardThemeTv1 = null;
        cardFragment.linearModel = null;
        cardFragment.modelTabLayout = null;
        cardFragment.modelSelectSize = null;
        cardFragment.modelSize = null;
        cardFragment.modelRecyclerView = null;
        cardFragment.linearTheme = null;
        cardFragment.themTabLayout = null;
        cardFragment.themeSelectSize = null;
        cardFragment.themeSize = null;
        cardFragment.themeRecyclerView = null;
        cardFragment.nfcLinear = null;
        cardFragment.linearZWSJ = null;
        this.view7f0900a6.setOnClickListener(null);
        this.view7f0900a6 = null;
        this.view7f0900a7.setOnClickListener(null);
        this.view7f0900a7 = null;
        this.view7f0901bf.setOnClickListener(null);
        this.view7f0901bf = null;
        this.view7f09028b.setOnClickListener(null);
        this.view7f09028b = null;
        this.view7f0901ca.setOnClickListener(null);
        this.view7f0901ca = null;
    }
}
