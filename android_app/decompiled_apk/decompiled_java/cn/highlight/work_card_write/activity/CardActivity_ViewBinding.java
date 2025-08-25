package cn.highlight.work_card_write.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cn.highlight.work_card_write.R;

/* loaded from: classes.dex */
public class CardActivity_ViewBinding implements Unbinder {
    private CardActivity target;
    private View view7f090179;
    private View view7f09017d;
    private View view7f09017f;
    private View view7f0902ac;

    public CardActivity_ViewBinding(CardActivity cardActivity) {
        this(cardActivity, cardActivity.getWindow().getDecorView());
    }

    public CardActivity_ViewBinding(final CardActivity cardActivity, View view) {
        this.target = cardActivity;
        cardActivity.tvNum = (TextView) Utils.findRequiredViewAsType(view, R.id.tvNum, "field 'tvNum'", TextView.class);
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.tvSelect, "field 'tvSelect' and method 'onViewClicked'");
        cardActivity.tvSelect = (TextView) Utils.castView(viewFindRequiredView, R.id.tvSelect, "field 'tvSelect'", TextView.class);
        this.view7f0902ac = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.CardActivity_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                cardActivity.onViewClicked(view2);
            }
        });
        cardActivity.tvSize = (TextView) Utils.findRequiredViewAsType(view, R.id.tvSize, "field 'tvSize'", TextView.class);
        cardActivity.themeRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.themeRecyclerView, "field 'themeRecyclerView'", RecyclerView.class);
        View viewFindRequiredView2 = Utils.findRequiredView(view, R.id.linearCancel, "field 'linearCancel' and method 'onViewClicked'");
        cardActivity.linearCancel = (LinearLayout) Utils.castView(viewFindRequiredView2, R.id.linearCancel, "field 'linearCancel'", LinearLayout.class);
        this.view7f090179 = viewFindRequiredView2;
        viewFindRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.CardActivity_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                cardActivity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView3 = Utils.findRequiredView(view, R.id.linearCopy, "field 'linearCopy' and method 'onViewClicked'");
        cardActivity.linearCopy = (LinearLayout) Utils.castView(viewFindRequiredView3, R.id.linearCopy, "field 'linearCopy'", LinearLayout.class);
        this.view7f09017d = viewFindRequiredView3;
        viewFindRequiredView3.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.CardActivity_ViewBinding.3
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                cardActivity.onViewClicked(view2);
            }
        });
        cardActivity.imageCopy = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageCopy, "field 'imageCopy'", ImageView.class);
        cardActivity.tvCopy = (TextView) Utils.findRequiredViewAsType(view, R.id.tvCopy, "field 'tvCopy'", TextView.class);
        View viewFindRequiredView4 = Utils.findRequiredView(view, R.id.linearDelete, "field 'linearDelete' and method 'onViewClicked'");
        cardActivity.linearDelete = (LinearLayout) Utils.castView(viewFindRequiredView4, R.id.linearDelete, "field 'linearDelete'", LinearLayout.class);
        this.view7f09017f = viewFindRequiredView4;
        viewFindRequiredView4.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.CardActivity_ViewBinding.4
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                cardActivity.onViewClicked(view2);
            }
        });
        cardActivity.imageDelete = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageDelete, "field 'imageDelete'", ImageView.class);
        cardActivity.tvDelete = (TextView) Utils.findRequiredViewAsType(view, R.id.tvDelete, "field 'tvDelete'", TextView.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        CardActivity cardActivity = this.target;
        if (cardActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        cardActivity.tvNum = null;
        cardActivity.tvSelect = null;
        cardActivity.tvSize = null;
        cardActivity.themeRecyclerView = null;
        cardActivity.linearCancel = null;
        cardActivity.linearCopy = null;
        cardActivity.imageCopy = null;
        cardActivity.tvCopy = null;
        cardActivity.linearDelete = null;
        cardActivity.imageDelete = null;
        cardActivity.tvDelete = null;
        this.view7f0902ac.setOnClickListener(null);
        this.view7f0902ac = null;
        this.view7f090179.setOnClickListener(null);
        this.view7f090179 = null;
        this.view7f09017d.setOnClickListener(null);
        this.view7f09017d = null;
        this.view7f09017f.setOnClickListener(null);
        this.view7f09017f = null;
    }
}
