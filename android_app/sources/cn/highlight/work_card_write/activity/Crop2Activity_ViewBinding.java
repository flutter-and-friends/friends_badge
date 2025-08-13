package cn.highlight.work_card_write.activity;

import android.view.View;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cn.highlight.work_card_write.C0498R;
import com.isseiaoki.simplecropview.CropImageView;

/* loaded from: classes.dex */
public class Crop2Activity_ViewBinding implements Unbinder {
    private Crop2Activity target;
    private View view7f0902a3;
    private View view7f0902ae;

    public Crop2Activity_ViewBinding(Crop2Activity crop2Activity) {
        this(crop2Activity, crop2Activity.getWindow().getDecorView());
    }

    public Crop2Activity_ViewBinding(final Crop2Activity crop2Activity, View view) {
        this.target = crop2Activity;
        crop2Activity.cropView = (CropImageView) Utils.findRequiredViewAsType(view, C0498R.id.cropView, "field 'cropView'", CropImageView.class);
        View viewFindRequiredView = Utils.findRequiredView(view, C0498R.id.tvCancel, "field 'tvCancel' and method 'onViewClicked'");
        crop2Activity.tvCancel = (TextView) Utils.castView(viewFindRequiredView, C0498R.id.tvCancel, "field 'tvCancel'", TextView.class);
        this.view7f0902a3 = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.Crop2Activity_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                crop2Activity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView2 = Utils.findRequiredView(view, C0498R.id.tvSure, "field 'tvSure' and method 'onViewClicked'");
        crop2Activity.tvSure = (TextView) Utils.castView(viewFindRequiredView2, C0498R.id.tvSure, "field 'tvSure'", TextView.class);
        this.view7f0902ae = viewFindRequiredView2;
        viewFindRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.Crop2Activity_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                crop2Activity.onViewClicked(view2);
            }
        });
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        Crop2Activity crop2Activity = this.target;
        if (crop2Activity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        crop2Activity.cropView = null;
        crop2Activity.tvCancel = null;
        crop2Activity.tvSure = null;
        this.view7f0902a3.setOnClickListener(null);
        this.view7f0902a3 = null;
        this.view7f0902ae.setOnClickListener(null);
        this.view7f0902ae = null;
    }
}
