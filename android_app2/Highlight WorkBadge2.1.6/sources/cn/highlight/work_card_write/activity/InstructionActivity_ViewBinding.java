package cn.highlight.work_card_write.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cn.highlight.work_card_write.R;

/* loaded from: classes.dex */
public class InstructionActivity_ViewBinding implements Unbinder {
    private InstructionActivity target;
    private View view7f090147;

    public InstructionActivity_ViewBinding(InstructionActivity instructionActivity) {
        this(instructionActivity, instructionActivity.getWindow().getDecorView());
    }

    public InstructionActivity_ViewBinding(final InstructionActivity instructionActivity, View view) {
        this.target = instructionActivity;
        instructionActivity.tvTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.tvTitle, "field 'tvTitle'", TextView.class);
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.imgBack, "field 'imgBack' and method 'onViewClicked'");
        instructionActivity.imgBack = (ImageView) Utils.castView(viewFindRequiredView, R.id.imgBack, "field 'imgBack'", ImageView.class);
        this.view7f090147 = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.InstructionActivity_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                instructionActivity.onViewClicked();
            }
        });
        instructionActivity.recyclerView = (ListView) Utils.findRequiredViewAsType(view, R.id.recyclerView, "field 'recyclerView'", ListView.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        InstructionActivity instructionActivity = this.target;
        if (instructionActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        instructionActivity.tvTitle = null;
        instructionActivity.imgBack = null;
        instructionActivity.recyclerView = null;
        this.view7f090147.setOnClickListener(null);
        this.view7f090147 = null;
    }
}
