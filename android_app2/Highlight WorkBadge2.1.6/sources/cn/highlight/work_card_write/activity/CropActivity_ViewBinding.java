package cn.highlight.work_card_write.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cn.highlight.work_card_write.R;
import com.isseiaoki.simplecropview.CropImageView;

/* loaded from: classes.dex */
public class CropActivity_ViewBinding implements Unbinder {
    private CropActivity target;
    private View view7f09014f;
    private View view7f090150;
    private View view7f0902a3;
    private View view7f0902ae;

    public CropActivity_ViewBinding(CropActivity cropActivity) {
        this(cropActivity, cropActivity.getWindow().getDecorView());
    }

    public CropActivity_ViewBinding(final CropActivity cropActivity, View view) {
        this.target = cropActivity;
        cropActivity.editColorLinear = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.editColorLinear, "field 'editColorLinear'", LinearLayout.class);
        cropActivity.editSize = (TextView) Utils.findRequiredViewAsType(view, R.id.edit_size, "field 'editSize'", TextView.class);
        cropActivity.editColorBlack = (TextView) Utils.findRequiredViewAsType(view, R.id.edit_color_black, "field 'editColorBlack'", TextView.class);
        cropActivity.editColorWhite = (TextView) Utils.findRequiredViewAsType(view, R.id.edit_color_white, "field 'editColorWhite'", TextView.class);
        cropActivity.editColorRed = (TextView) Utils.findRequiredViewAsType(view, R.id.edit_color_red, "field 'editColorRed'", TextView.class);
        cropActivity.editColorYellow = (TextView) Utils.findRequiredViewAsType(view, R.id.edit_color_yellow, "field 'editColorYellow'", TextView.class);
        cropActivity.cropView = (CropImageView) Utils.findRequiredViewAsType(view, R.id.cropView, "field 'cropView'", CropImageView.class);
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.img_turn_left, "field 'img_turn_left' and method 'onViewClicked'");
        cropActivity.img_turn_left = (ImageView) Utils.castView(viewFindRequiredView, R.id.img_turn_left, "field 'img_turn_left'", ImageView.class);
        this.view7f09014f = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.CropActivity_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                cropActivity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView2 = Utils.findRequiredView(view, R.id.img_turn_right, "field 'img_turn_right' and method 'onViewClicked'");
        cropActivity.img_turn_right = (ImageView) Utils.castView(viewFindRequiredView2, R.id.img_turn_right, "field 'img_turn_right'", ImageView.class);
        this.view7f090150 = viewFindRequiredView2;
        viewFindRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.CropActivity_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                cropActivity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView3 = Utils.findRequiredView(view, R.id.tvCancel, "field 'tvCancel' and method 'onViewClicked'");
        cropActivity.tvCancel = (TextView) Utils.castView(viewFindRequiredView3, R.id.tvCancel, "field 'tvCancel'", TextView.class);
        this.view7f0902a3 = viewFindRequiredView3;
        viewFindRequiredView3.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.CropActivity_ViewBinding.3
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                cropActivity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView4 = Utils.findRequiredView(view, R.id.tvSure, "field 'tvSure' and method 'onViewClicked'");
        cropActivity.tvSure = (TextView) Utils.castView(viewFindRequiredView4, R.id.tvSure, "field 'tvSure'", TextView.class);
        this.view7f0902ae = viewFindRequiredView4;
        viewFindRequiredView4.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.CropActivity_ViewBinding.4
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                cropActivity.onViewClicked(view2);
            }
        });
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        CropActivity cropActivity = this.target;
        if (cropActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        cropActivity.editColorLinear = null;
        cropActivity.editSize = null;
        cropActivity.editColorBlack = null;
        cropActivity.editColorWhite = null;
        cropActivity.editColorRed = null;
        cropActivity.editColorYellow = null;
        cropActivity.cropView = null;
        cropActivity.img_turn_left = null;
        cropActivity.img_turn_right = null;
        cropActivity.tvCancel = null;
        cropActivity.tvSure = null;
        this.view7f09014f.setOnClickListener(null);
        this.view7f09014f = null;
        this.view7f090150.setOnClickListener(null);
        this.view7f090150 = null;
        this.view7f0902a3.setOnClickListener(null);
        this.view7f0902a3 = null;
        this.view7f0902ae.setOnClickListener(null);
        this.view7f0902ae = null;
    }
}
