package cn.highlight.work_card_write.activity;

import android.os.Bundle;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import cn.highlight.work_card_write.R;
import cn.highlight.work_card_write.base.BaseActivity;

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
        To view partially-correct add '--show-bad-code' argument
    */
    protected void initData() {
        /*
            r5 = this;
            java.lang.String r0 = cn.highlight.work_card_write.sp.ConfigSp.getLang()
            int r1 = r0.hashCode()
            r2 = 3241(0xca9, float:4.542E-42)
            r3 = 0
            r4 = 1
            if (r1 == r2) goto L1d
            r2 = 3886(0xf2e, float:5.445E-42)
            if (r1 == r2) goto L13
            goto L27
        L13:
            java.lang.String r1 = "zh"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L27
            r0 = 1
            goto L28
        L1d:
            java.lang.String r1 = "en"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L27
            r0 = 0
            goto L28
        L27:
            r0 = -1
        L28:
            if (r0 == 0) goto L30
            if (r0 == r4) goto L2d
            goto L32
        L2d:
            r5.currentLanguage = r4
            goto L32
        L30:
            r5.currentLanguage = r3
        L32:
            cn.highlight.work_card_write.adapter.InstructionAdapter r0 = new cn.highlight.work_card_write.adapter.InstructionAdapter
            r0.<init>(r5)
            android.widget.ListView r1 = r5.recyclerView
            r1.setAdapter(r0)
            java.lang.String r1 = "instruction"
            android.content.res.AssetManager r2 = r5.getAssets()
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L6e
            r4.<init>()     // Catch: java.io.IOException -> L6e
            r4.append(r1)     // Catch: java.io.IOException -> L6e
            java.lang.String r1 = "/"
            r4.append(r1)     // Catch: java.io.IOException -> L6e
            int r1 = r5.currentLanguage     // Catch: java.io.IOException -> L6e
            r4.append(r1)     // Catch: java.io.IOException -> L6e
            java.lang.String r1 = ".jpg"
            r4.append(r1)     // Catch: java.io.IOException -> L6e
            java.lang.String r1 = r4.toString()     // Catch: java.io.IOException -> L6e
            java.io.InputStream r1 = r2.open(r1)     // Catch: java.io.IOException -> L6e
            android.graphics.Bitmap r1 = android.graphics.BitmapFactory.decodeStream(r1)     // Catch: java.io.IOException -> L6e
            r3.add(r1)     // Catch: java.io.IOException -> L6e
            goto L72
        L6e:
            r1 = move-exception
            r1.printStackTrace()
        L72:
            r0.setList(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.highlight.work_card_write.activity.InstructionActivity.initData():void");
    }

    @OnClick({R.id.imgBack})
    public void onViewClicked() {
        finishActivity();
    }
}
