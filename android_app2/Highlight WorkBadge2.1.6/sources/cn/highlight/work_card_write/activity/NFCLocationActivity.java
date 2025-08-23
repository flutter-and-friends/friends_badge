package cn.highlight.work_card_write.activity;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import butterknife.BindView;
import butterknife.OnClick;
import cn.highlight.work_card_write.R;
import cn.highlight.work_card_write.base.BaseActivity;

/* loaded from: classes.dex */
public class NFCLocationActivity extends BaseActivity {

    @BindView(R.id.imgBack)
    ImageView imgBack;

    @BindView(R.id.linearHUAWEI)
    LinearLayout linearHUAWEI;

    @BindView(R.id.linearIphone)
    LinearLayout linearIphone;

    @BindView(R.id.linearOppo)
    LinearLayout linearOppo;

    @BindView(R.id.linearSanXing)
    LinearLayout linearSanXing;

    @BindView(R.id.linearVivo)
    LinearLayout linearVivo;

    @BindView(R.id.linearXiaoMi)
    LinearLayout linearXiaoMi;

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected void initData() {
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected void initViews(Bundle bundle) {
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected int setLayoutId() {
        return R.layout.activity_nfclocation;
    }

    @OnClick({R.id.imgBack, R.id.linearIphone, R.id.linearHUAWEI, R.id.linearXiaoMi, R.id.linearSanXing, R.id.linearOppo, R.id.linearVivo})
    public void onViewClicked(View view) {
        Bundle bundle = new Bundle();
        switch (view.getId()) {
            case R.id.imgBack /* 2131296583 */:
                finishActivity();
                break;
            case R.id.linearHUAWEI /* 2131296644 */:
                bundle.putInt("type", 1);
                launchActivity(NFCLocation1Activity.class, bundle);
                break;
            case R.id.linearIphone /* 2131296646 */:
                bundle.putInt("type", 0);
                launchActivity(NFCLocation1Activity.class, bundle);
                break;
            case R.id.linearOppo /* 2131296655 */:
                bundle.putInt("type", 4);
                launchActivity(NFCLocation1Activity.class, bundle);
                break;
            case R.id.linearSanXing /* 2131296657 */:
                bundle.putInt("type", 3);
                launchActivity(NFCLocation1Activity.class, bundle);
                break;
            case R.id.linearVivo /* 2131296664 */:
                bundle.putInt("type", 5);
                launchActivity(NFCLocation1Activity.class, bundle);
                break;
            case R.id.linearXiaoMi /* 2131296665 */:
                bundle.putInt("type", 2);
                launchActivity(NFCLocation1Activity.class, bundle);
                break;
        }
    }
}
