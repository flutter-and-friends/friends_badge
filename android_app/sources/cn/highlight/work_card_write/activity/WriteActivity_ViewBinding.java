package cn.highlight.work_card_write.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cn.highlight.work_card_write.C0498R;
import cn.highlight.work_card_write.view.SlideSwitchView;
import me.zhouzhuo.zzhorizontalprogressbar.ZzHorizontalProgressBar;

/* loaded from: classes.dex */
public class WriteActivity_ViewBinding implements Unbinder {
    private WriteActivity target;
    private View view7f090092;
    private View view7f090094;
    private View view7f090147;
    private View view7f090149;

    public WriteActivity_ViewBinding(WriteActivity writeActivity) {
        this(writeActivity, writeActivity.getWindow().getDecorView());
    }

    public WriteActivity_ViewBinding(final WriteActivity writeActivity, View view) {
        this.target = writeActivity;
        View viewFindRequiredView = Utils.findRequiredView(view, C0498R.id.imgBack, "field 'imgBack' and method 'onViewClicked'");
        writeActivity.imgBack = (ImageView) Utils.castView(viewFindRequiredView, C0498R.id.imgBack, "field 'imgBack'", ImageView.class);
        this.view7f090147 = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.WriteActivity_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                writeActivity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView2 = Utils.findRequiredView(view, C0498R.id.imgHome, "field 'imgHome' and method 'onViewClicked'");
        writeActivity.imgHome = (ImageView) Utils.castView(viewFindRequiredView2, C0498R.id.imgHome, "field 'imgHome'", ImageView.class);
        this.view7f090149 = viewFindRequiredView2;
        viewFindRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.WriteActivity_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                writeActivity.onViewClicked(view2);
            }
        });
        writeActivity.slideSwitch = (SlideSwitchView) Utils.findRequiredViewAsType(view, C0498R.id.slideSwitch, "field 'slideSwitch'", SlideSwitchView.class);
        writeActivity.editColorLinear = (LinearLayout) Utils.findRequiredViewAsType(view, C0498R.id.editColorLinear, "field 'editColorLinear'", LinearLayout.class);
        writeActivity.rfRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, C0498R.id.rfRecyclerView, "field 'rfRecyclerView'", RecyclerView.class);
        writeActivity.image = (ImageView) Utils.findRequiredViewAsType(view, C0498R.id.image, "field 'image'", ImageView.class);
        writeActivity.tvProgress = (TextView) Utils.findRequiredViewAsType(view, C0498R.id.tvProgress, "field 'tvProgress'", TextView.class);
        writeActivity.progressBar = (ZzHorizontalProgressBar) Utils.findRequiredViewAsType(view, C0498R.id.progressBar, "field 'progressBar'", ZzHorizontalProgressBar.class);
        View viewFindRequiredView3 = Utils.findRequiredView(view, C0498R.id.btnSave, "field 'btnSave' and method 'onViewClicked'");
        writeActivity.btnSave = (TextView) Utils.castView(viewFindRequiredView3, C0498R.id.btnSave, "field 'btnSave'", TextView.class);
        this.view7f090092 = viewFindRequiredView3;
        viewFindRequiredView3.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.WriteActivity_ViewBinding.3
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                writeActivity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView4 = Utils.findRequiredView(view, C0498R.id.btnWrite, "field 'btnWrite' and method 'onViewClicked'");
        writeActivity.btnWrite = (TextView) Utils.castView(viewFindRequiredView4, C0498R.id.btnWrite, "field 'btnWrite'", TextView.class);
        this.view7f090094 = viewFindRequiredView4;
        viewFindRequiredView4.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.WriteActivity_ViewBinding.4
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                writeActivity.onViewClicked(view2);
            }
        });
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        WriteActivity writeActivity = this.target;
        if (writeActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        writeActivity.imgBack = null;
        writeActivity.imgHome = null;
        writeActivity.slideSwitch = null;
        writeActivity.editColorLinear = null;
        writeActivity.rfRecyclerView = null;
        writeActivity.image = null;
        writeActivity.tvProgress = null;
        writeActivity.progressBar = null;
        writeActivity.btnSave = null;
        writeActivity.btnWrite = null;
        this.view7f090147.setOnClickListener(null);
        this.view7f090147 = null;
        this.view7f090149.setOnClickListener(null);
        this.view7f090149 = null;
        this.view7f090092.setOnClickListener(null);
        this.view7f090092 = null;
        this.view7f090094.setOnClickListener(null);
        this.view7f090094 = null;
    }
}
