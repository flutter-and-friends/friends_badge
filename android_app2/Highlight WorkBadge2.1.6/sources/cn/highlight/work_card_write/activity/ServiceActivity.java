package cn.highlight.work_card_write.activity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import cn.highlight.core.utils.SpUtil;
import cn.highlight.core.utils.ToastUtil;
import cn.highlight.core.utils.Tools;
import cn.highlight.work_card_write.Constants;
import cn.highlight.work_card_write.R;
import cn.highlight.work_card_write.api.ApiResult;
import cn.highlight.work_card_write.api.ApiUtil;
import cn.highlight.work_card_write.api.Result;
import cn.highlight.work_card_write.base.BaseActivity;

/* loaded from: classes.dex */
public class ServiceActivity extends BaseActivity {

    @BindView(R.id.btn_connect)
    Button btnConnect;

    @BindView(R.id.edit_address)
    EditText editAddress;

    @BindView(R.id.iv_back)
    ImageView ivBack;

    @BindView(R.id.tv_title_base)
    TextView tvTitleBase;

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected int setLayoutId() {
        return R.layout.activity_service;
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected void initViews(Bundle bundle) {
        this.editAddress.setText(SpUtil.getString(this, Constants.APP_URL, Constants.DEFAULT_APP_URL));
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected void initData() {
        this.ivBack.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.ServiceActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ServiceActivity.this.finishActivity();
            }
        });
    }

    public void testConnect() {
        ApiUtil.getInstance().testConn(this, Tools.getText(this.editAddress), new ApiResult<Result>() { // from class: cn.highlight.work_card_write.activity.ServiceActivity.2
            @Override // cn.highlight.work_card_write.api.ApiResult
            public void onSuss(Result result) {
                if (result == null) {
                    ToastUtil.showToast(ServiceActivity.this.getApplicationContext(), ServiceActivity.this.getResources().getString(R.string.requestMsg1));
                } else if (result.getStatus().equals("200")) {
                    ToastUtil.showToast(ServiceActivity.this.getApplicationContext(), ServiceActivity.this.getResources().getString(R.string.request_success));
                    SpUtil.putString(ServiceActivity.this.getBaseContext(), Constants.APP_URL, Tools.getText(ServiceActivity.this.editAddress));
                } else {
                    result.getMsg();
                    ToastUtil.showToast(ServiceActivity.this.getApplicationContext(), ServiceActivity.this.getResources().getString(R.string.request_fail));
                }
            }

            @Override // cn.highlight.work_card_write.api.ApiResult
            public void onFail(String str, String str2) {
                ToastUtil.showToast(ServiceActivity.this.getApplicationContext(), ServiceActivity.this.getResources().getString(R.string.request_fail) + "\n" + str);
            }
        });
    }

    @OnClick({R.id.btn_connect})
    public void onViewClicked() {
        testConnect();
    }
}
