package cn.highlight.work_card_write.activity;

import android.content.res.AssetManager;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import butterknife.BindView;
import butterknife.OnClick;
import cn.highlight.work_card_write.C0498R;
import cn.highlight.work_card_write.adapter.InstructionAdapter;
import cn.highlight.work_card_write.base.BaseActivity;
import cn.highlight.work_card_write.p006sp.ConfigSp;
import java.io.IOException;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class NFCLocation1Activity extends BaseActivity {

    @BindView(C0498R.id.imgBack)
    ImageView imgBack;

    @BindView(C0498R.id.recyclerView)
    ListView recyclerView;

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected void initViews(Bundle bundle) {
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected int setLayoutId() {
        return C0498R.layout.activity_nfclocation1;
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected void initData() throws IOException {
        Bundle extras = getIntent().getExtras();
        if (extras == null) {
            return;
        }
        InstructionAdapter instructionAdapter = new InstructionAdapter(this);
        this.recyclerView.setAdapter((ListAdapter) instructionAdapter);
        int i = extras.getInt("type");
        String str = "nfc_iphone";
        if (i != 0) {
            if (i == 1) {
                str = "nfc_huawei";
            } else if (i == 2) {
                str = "nfc_xiaomi";
            } else if (i == 3) {
                str = "nfc_sanxing";
            } else if (i == 4) {
                str = "nfc_oppo";
            } else if (i == 5) {
                str = "nfc_vivo";
            }
        }
        String str2 = str + "/" + ConfigSp.getLang();
        AssetManager assets = getAssets();
        ArrayList arrayList = new ArrayList();
        try {
            for (String str3 : assets.list(str2)) {
                arrayList.add(BitmapFactory.decodeStream(assets.open(str2 + "/" + str3)));
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        instructionAdapter.setList(arrayList);
    }

    @OnClick({C0498R.id.imgBack})
    public void onViewClicked() {
        finishActivity();
    }
}
