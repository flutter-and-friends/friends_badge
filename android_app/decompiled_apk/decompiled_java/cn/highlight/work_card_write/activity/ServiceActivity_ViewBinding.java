package cn.highlight.work_card_write.activity;

import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cn.highlight.work_card_write.R;

/* loaded from: classes.dex */
public class ServiceActivity_ViewBinding implements Unbinder {
    private ServiceActivity target;
    private View view7f090096;

    public ServiceActivity_ViewBinding(ServiceActivity serviceActivity) {
        this(serviceActivity, serviceActivity.getWindow().getDecorView());
    }

    public ServiceActivity_ViewBinding(final ServiceActivity serviceActivity, View view) {
        this.target = serviceActivity;
        serviceActivity.tvTitleBase = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_title_base, "field 'tvTitleBase'", TextView.class);
        serviceActivity.ivBack = (ImageView) Utils.findRequiredViewAsType(view, R.id.iv_back, "field 'ivBack'", ImageView.class);
        serviceActivity.editAddress = (EditText) Utils.findRequiredViewAsType(view, R.id.edit_address, "field 'editAddress'", EditText.class);
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.btn_connect, "field 'btnConnect' and method 'onViewClicked'");
        serviceActivity.btnConnect = (Button) Utils.castView(viewFindRequiredView, R.id.btn_connect, "field 'btnConnect'", Button.class);
        this.view7f090096 = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.ServiceActivity_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                serviceActivity.onViewClicked();
            }
        });
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        ServiceActivity serviceActivity = this.target;
        if (serviceActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        serviceActivity.tvTitleBase = null;
        serviceActivity.ivBack = null;
        serviceActivity.editAddress = null;
        serviceActivity.btnConnect = null;
        this.view7f090096.setOnClickListener(null);
        this.view7f090096 = null;
    }
}
