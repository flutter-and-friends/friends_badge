package cn.highlight.work_card_write.activity;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cn.highlight.work_card_write.R;

/* loaded from: classes.dex */
public class Model2Activity_ViewBinding implements Unbinder {
    private Model2Activity target;
    private View view7f09013e;
    private View view7f09013f;
    private View view7f090140;
    private View view7f090141;
    private View view7f090142;
    private View view7f090143;
    private View view7f090144;
    private View view7f09014d;
    private View view7f0902bc;

    public Model2Activity_ViewBinding(Model2Activity model2Activity) {
        this(model2Activity, model2Activity.getWindow().getDecorView());
    }

    public Model2Activity_ViewBinding(final Model2Activity model2Activity, View view) {
        this.target = model2Activity;
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.img_back, "field 'img_back' and method 'onViewClicked'");
        model2Activity.img_back = (ImageView) Utils.castView(viewFindRequiredView, R.id.img_back, "field 'img_back'", ImageView.class);
        this.view7f09014d = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.Model2Activity_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                model2Activity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView2 = Utils.findRequiredView(view, R.id.image_back, "field 'image_back' and method 'onViewClicked'");
        model2Activity.image_back = (ImageView) Utils.castView(viewFindRequiredView2, R.id.image_back, "field 'image_back'", ImageView.class);
        this.view7f09013e = viewFindRequiredView2;
        viewFindRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.Model2Activity_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                model2Activity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView3 = Utils.findRequiredView(view, R.id.image_forward, "field 'image_forward' and method 'onViewClicked'");
        model2Activity.image_forward = (ImageView) Utils.castView(viewFindRequiredView3, R.id.image_forward, "field 'image_forward'", ImageView.class);
        this.view7f090141 = viewFindRequiredView3;
        viewFindRequiredView3.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.Model2Activity_ViewBinding.3
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                model2Activity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView4 = Utils.findRequiredView(view, R.id.tv_preview, "field 'tv_preview' and method 'onViewClicked'");
        model2Activity.tv_preview = (TextView) Utils.castView(viewFindRequiredView4, R.id.tv_preview, "field 'tv_preview'", TextView.class);
        this.view7f0902bc = viewFindRequiredView4;
        viewFindRequiredView4.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.Model2Activity_ViewBinding.4
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                model2Activity.onViewClicked(view2);
            }
        });
        model2Activity.editColorLinear = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.editColorLinear, "field 'editColorLinear'", LinearLayout.class);
        model2Activity.editSize = (TextView) Utils.findRequiredViewAsType(view, R.id.edit_size, "field 'editSize'", TextView.class);
        model2Activity.editColorBlack = (TextView) Utils.findRequiredViewAsType(view, R.id.edit_color_black, "field 'editColorBlack'", TextView.class);
        model2Activity.editColorWhite = (TextView) Utils.findRequiredViewAsType(view, R.id.edit_color_white, "field 'editColorWhite'", TextView.class);
        model2Activity.editColorRed = (TextView) Utils.findRequiredViewAsType(view, R.id.edit_color_red, "field 'editColorRed'", TextView.class);
        model2Activity.editColorYellow = (TextView) Utils.findRequiredViewAsType(view, R.id.edit_color_yellow, "field 'editColorYellow'", TextView.class);
        model2Activity.mFrameLayout = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.doodle_container, "field 'mFrameLayout'", FrameLayout.class);
        model2Activity.editOperationLinear = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.editOperationLinear, "field 'editOperationLinear'", LinearLayout.class);
        View viewFindRequiredView5 = Utils.findRequiredView(view, R.id.image_top, "field 'image_top' and method 'onViewClicked'");
        model2Activity.image_top = (ImageView) Utils.castView(viewFindRequiredView5, R.id.image_top, "field 'image_top'", ImageView.class);
        this.view7f090144 = viewFindRequiredView5;
        viewFindRequiredView5.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.Model2Activity_ViewBinding.5
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                model2Activity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView6 = Utils.findRequiredView(view, R.id.image_bottom, "field 'image_bottom' and method 'onViewClicked'");
        model2Activity.image_bottom = (ImageView) Utils.castView(viewFindRequiredView6, R.id.image_bottom, "field 'image_bottom'", ImageView.class);
        this.view7f09013f = viewFindRequiredView6;
        viewFindRequiredView6.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.Model2Activity_ViewBinding.6
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                model2Activity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView7 = Utils.findRequiredView(view, R.id.image_left, "field 'image_left' and method 'onViewClicked'");
        model2Activity.image_left = (ImageView) Utils.castView(viewFindRequiredView7, R.id.image_left, "field 'image_left'", ImageView.class);
        this.view7f090142 = viewFindRequiredView7;
        viewFindRequiredView7.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.Model2Activity_ViewBinding.7
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                model2Activity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView8 = Utils.findRequiredView(view, R.id.image_right, "field 'image_right' and method 'onViewClicked'");
        model2Activity.image_right = (ImageView) Utils.castView(viewFindRequiredView8, R.id.image_right, "field 'image_right'", ImageView.class);
        this.view7f090143 = viewFindRequiredView8;
        viewFindRequiredView8.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.Model2Activity_ViewBinding.8
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                model2Activity.onViewClicked(view2);
            }
        });
        model2Activity.mainSetRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.mainSetRecyclerView, "field 'mainSetRecyclerView'", RecyclerView.class);
        View viewFindRequiredView9 = Utils.findRequiredView(view, R.id.image_delete, "method 'onViewClicked'");
        this.view7f090140 = viewFindRequiredView9;
        viewFindRequiredView9.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.Model2Activity_ViewBinding.9
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                model2Activity.onViewClicked(view2);
            }
        });
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        Model2Activity model2Activity = this.target;
        if (model2Activity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        model2Activity.img_back = null;
        model2Activity.image_back = null;
        model2Activity.image_forward = null;
        model2Activity.tv_preview = null;
        model2Activity.editColorLinear = null;
        model2Activity.editSize = null;
        model2Activity.editColorBlack = null;
        model2Activity.editColorWhite = null;
        model2Activity.editColorRed = null;
        model2Activity.editColorYellow = null;
        model2Activity.mFrameLayout = null;
        model2Activity.editOperationLinear = null;
        model2Activity.image_top = null;
        model2Activity.image_bottom = null;
        model2Activity.image_left = null;
        model2Activity.image_right = null;
        model2Activity.mainSetRecyclerView = null;
        this.view7f09014d.setOnClickListener(null);
        this.view7f09014d = null;
        this.view7f09013e.setOnClickListener(null);
        this.view7f09013e = null;
        this.view7f090141.setOnClickListener(null);
        this.view7f090141 = null;
        this.view7f0902bc.setOnClickListener(null);
        this.view7f0902bc = null;
        this.view7f090144.setOnClickListener(null);
        this.view7f090144 = null;
        this.view7f09013f.setOnClickListener(null);
        this.view7f09013f = null;
        this.view7f090142.setOnClickListener(null);
        this.view7f090142 = null;
        this.view7f090143.setOnClickListener(null);
        this.view7f090143 = null;
        this.view7f090140.setOnClickListener(null);
        this.view7f090140 = null;
    }
}
