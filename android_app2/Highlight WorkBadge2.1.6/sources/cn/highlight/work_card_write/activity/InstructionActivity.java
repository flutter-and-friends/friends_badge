package cn.highlight.work_card_write.activity;

import android.content.res.AssetManager;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import cn.highlight.work_card_write.R;
import cn.highlight.work_card_write.adapter.InstructionAdapter;
import cn.highlight.work_card_write.base.BaseActivity;
import cn.highlight.work_card_write.sp.ConfigSp;
import java.io.IOException;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class InstructionActivity extends BaseActivity {
    private int currentLanguage = 0;

    @BindView(R.id.imgBack)
    ImageView imgBack;

    @BindView(R.id.recyclerView)
    ListView recyclerView;

    @BindView(R.id.tvTitle)
    TextView tvTitle;

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected void initViews(Bundle bundle) {
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected int setLayoutId() {
        return R.layout.activity_instruction;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0027  */
    @Override // cn.highlight.work_card_write.base.BaseActivity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void initData() {
        char c;
        String lang = ConfigSp.getLang();
        int iHashCode = lang.hashCode();
        if (iHashCode != 3241) {
            c = (iHashCode == 3886 && lang.equals("zh")) ? (char) 1 : (char) 65535;
        } else if (lang.equals("en")) {
            c = 0;
        }
        if (c == 0) {
            this.currentLanguage = 0;
        } else if (c == 1) {
            this.currentLanguage = 1;
        }
        InstructionAdapter instructionAdapter = new InstructionAdapter(this);
        this.recyclerView.setAdapter((ListAdapter) instructionAdapter);
        AssetManager assets = getAssets();
        ArrayList arrayList = new ArrayList();
        try {
            arrayList.add(BitmapFactory.decodeStream(assets.open("instruction/" + this.currentLanguage + ".jpg")));
        } catch (IOException e) {
            e.printStackTrace();
        }
        instructionAdapter.setList(arrayList);
    }

    @OnClick({R.id.imgBack})
    public void onViewClicked() {
        finishActivity();
    }
}
