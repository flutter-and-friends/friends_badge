package cn.highlight.work_card_write.activity;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import butterknife.BindView;
import butterknife.OnClick;
import cn.highlight.work_card_write.C0498R;
import cn.highlight.work_card_write.base.BaseActivity;

/* loaded from: classes.dex */
public class NFCLocationActivity extends BaseActivity {

    @BindView(C0498R.id.imgBack)
    ImageView imgBack;

    @BindView(C0498R.id.linearHUAWEI)
    LinearLayout linearHUAWEI;

    @BindView(C0498R.id.linearIphone)
    LinearLayout linearIphone;

    @BindView(C0498R.id.linearOppo)
    LinearLayout linearOppo;

    @BindView(C0498R.id.linearSanXing)
    LinearLayout linearSanXing;

    @BindView(C0498R.id.linearVivo)
    LinearLayout linearVivo;

    @BindView(C0498R.id.linearXiaoMi)
    LinearLayout linearXiaoMi;

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected void initData() {
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected void initViews(Bundle bundle) {
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected int setLayoutId() {
        return C0498R.layout.activity_nfclocation;
    }

    @OnClick({C0498R.id.imgBack, C0498R.id.linearIphone, C0498R.id.linearHUAWEI, C0498R.id.linearXiaoMi, C0498R.id.linearSanXing, C0498R.id.linearOppo, C0498R.id.linearVivo})
    public void onViewClicked(View view) {
        Bundle bundle = new Bundle();
        switch (view.getId()) {
            case C0498R.id.imgBack /* 2131296583 */:
                finishActivity();
                break;
            case C0498R.id.linearHUAWEI /* 2131296644 */:
                bundle.putInt("type", 1);
                launchActivity(NFCLocation1Activity.class, bundle);
                break;
            case C0498R.id.linearIphone /* 2131296646 */:
                bundle.putInt("type", 0);
                launchActivity(NFCLocation1Activity.class, bundle);
                break;
            case C0498R.id.linearOppo /* 2131296655 */:
                bundle.putInt("type", 4);
                launchActivity(NFCLocation1Activity.class, bundle);
                break;
            case C0498R.id.linearSanXing /* 2131296657 */:
                bundle.putInt("type", 3);
                launchActivity(NFCLocation1Activity.class, bundle);
                break;
            case C0498R.id.linearVivo /* 2131296664 */:
                bundle.putInt("type", 5);
                launchActivity(NFCLocation1Activity.class, bundle);
                break;
            case C0498R.id.linearXiaoMi /* 2131296665 */:
                bundle.putInt("type", 2);
                launchActivity(NFCLocation1Activity.class, bundle);
                break;
        }
    }
}
