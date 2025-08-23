package cn.highlight.work_card_write.fragment;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cn.highlight.work_card_write.R;

/* loaded from: classes.dex */
public class EditFragment_ViewBinding implements Unbinder {
    private EditFragment target;
    private View view7f090177;
    private View view7f09018a;
    private View view7f09018c;
    private View view7f090190;

    public EditFragment_ViewBinding(final EditFragment editFragment, View view) {
        this.target = editFragment;
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.linearNew, "field 'linearNew' and method 'onViewClicked'");
        editFragment.linearNew = (LinearLayout) Utils.castView(viewFindRequiredView, R.id.linearNew, "field 'linearNew'", LinearLayout.class);
        this.view7f09018c = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.fragment.EditFragment_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                editFragment.onViewClicked(view2);
            }
        });
        View viewFindRequiredView2 = Utils.findRequiredView(view, R.id.linearPhoto, "field 'linearPhoto' and method 'onViewClicked'");
        editFragment.linearPhoto = (RelativeLayout) Utils.castView(viewFindRequiredView2, R.id.linearPhoto, "field 'linearPhoto'", RelativeLayout.class);
        this.view7f090190 = viewFindRequiredView2;
        viewFindRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.fragment.EditFragment_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                editFragment.onViewClicked(view2);
            }
        });
        View viewFindRequiredView3 = Utils.findRequiredView(view, R.id.linearAlbum, "field 'linearAlbum' and method 'onViewClicked'");
        editFragment.linearAlbum = (RelativeLayout) Utils.castView(viewFindRequiredView3, R.id.linearAlbum, "field 'linearAlbum'", RelativeLayout.class);
        this.view7f090177 = viewFindRequiredView3;
        viewFindRequiredView3.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.fragment.EditFragment_ViewBinding.3
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                editFragment.onViewClicked(view2);
            }
        });
        editFragment.newUserRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.newUserRecyclerView, "field 'newUserRecyclerView'", RecyclerView.class);
        View viewFindRequiredView4 = Utils.findRequiredView(view, R.id.linearMore, "field 'linearMore' and method 'onViewClicked'");
        editFragment.linearMore = (LinearLayout) Utils.castView(viewFindRequiredView4, R.id.linearMore, "field 'linearMore'", LinearLayout.class);
        this.view7f09018a = viewFindRequiredView4;
        viewFindRequiredView4.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.fragment.EditFragment_ViewBinding.4
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                editFragment.onViewClicked(view2);
            }
        });
        editFragment.linearZWSJ = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearZWSJ, "field 'linearZWSJ'", LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        EditFragment editFragment = this.target;
        if (editFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        editFragment.linearNew = null;
        editFragment.linearPhoto = null;
        editFragment.linearAlbum = null;
        editFragment.newUserRecyclerView = null;
        editFragment.linearMore = null;
        editFragment.linearZWSJ = null;
        this.view7f09018c.setOnClickListener(null);
        this.view7f09018c = null;
        this.view7f090190.setOnClickListener(null);
        this.view7f090190 = null;
        this.view7f090177.setOnClickListener(null);
        this.view7f090177 = null;
        this.view7f09018a.setOnClickListener(null);
        this.view7f09018a = null;
    }
}
