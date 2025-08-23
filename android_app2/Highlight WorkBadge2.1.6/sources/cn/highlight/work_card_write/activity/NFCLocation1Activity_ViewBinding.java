package cn.highlight.work_card_write.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.ListView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cn.highlight.work_card_write.R;

/* loaded from: classes.dex */
public class NFCLocation1Activity_ViewBinding implements Unbinder {
    private NFCLocation1Activity target;
    private View view7f090147;

    public NFCLocation1Activity_ViewBinding(NFCLocation1Activity nFCLocation1Activity) {
        this(nFCLocation1Activity, nFCLocation1Activity.getWindow().getDecorView());
    }

    public NFCLocation1Activity_ViewBinding(final NFCLocation1Activity nFCLocation1Activity, View view) {
        this.target = nFCLocation1Activity;
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.imgBack, "field 'imgBack' and method 'onViewClicked'");
        nFCLocation1Activity.imgBack = (ImageView) Utils.castView(viewFindRequiredView, R.id.imgBack, "field 'imgBack'", ImageView.class);
        this.view7f090147 = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.NFCLocation1Activity_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                nFCLocation1Activity.onViewClicked();
            }
        });
        nFCLocation1Activity.recyclerView = (ListView) Utils.findRequiredViewAsType(view, R.id.recyclerView, "field 'recyclerView'", ListView.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        NFCLocation1Activity nFCLocation1Activity = this.target;
        if (nFCLocation1Activity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        nFCLocation1Activity.imgBack = null;
        nFCLocation1Activity.recyclerView = null;
        this.view7f090147.setOnClickListener(null);
        this.view7f090147 = null;
    }
}
