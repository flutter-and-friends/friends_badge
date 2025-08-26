package cn.highlight.work_card_write.activity;

import android.app.Dialog;
import android.database.SQLException;
import android.graphics.Point;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import cn.highlight.core.utils.Tools;
import cn.highlight.work_card_write.C0498R;
import cn.highlight.work_card_write.Constants;
import cn.highlight.work_card_write.adapter.CardThemeSelectAdapter;
import cn.highlight.work_card_write.api.ApiUtil;
import cn.highlight.work_card_write.api.MessageEvent;
import cn.highlight.work_card_write.base.BaseActivity;
import cn.highlight.work_card_write.greendao.dao.BadgeBeanDaoUse;
import cn.highlight.work_card_write.greendao.dao.DoodleBeanDaoUse;
import cn.highlight.work_card_write.greendao.table.BadgeBean;
import cn.highlight.work_card_write.greendao.table.DoodleBean;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.eventbus.EventBus;

/* loaded from: classes.dex */
public class CardActivity extends BaseActivity {
    private CardThemeSelectAdapter adapter;
    private List<BadgeBean> dataList;

    @BindView(C0498R.id.imageCopy)
    ImageView imageCopy;

    @BindView(C0498R.id.imageDelete)
    ImageView imageDelete;

    @BindView(C0498R.id.linearCancel)
    LinearLayout linearCancel;

    @BindView(C0498R.id.linearCopy)
    LinearLayout linearCopy;

    @BindView(C0498R.id.linearDelete)
    LinearLayout linearDelete;
    private List<BadgeBean> selectList = new ArrayList();

    @BindView(C0498R.id.themeRecyclerView)
    RecyclerView themeRecyclerView;

    @BindView(C0498R.id.tvCopy)
    TextView tvCopy;

    @BindView(C0498R.id.tvDelete)
    TextView tvDelete;

    @BindView(C0498R.id.tvNum)
    TextView tvNum;

    @BindView(C0498R.id.tvSelect)
    TextView tvSelect;

    @BindView(C0498R.id.tvSize)
    TextView tvSize;

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected int setLayoutId() {
        return C0498R.layout.activity_card;
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected void initViews(Bundle bundle) {
        this.tvNum.setText(getString(C0498R.string.card_theme_selected, new Object[]{"0"}));
        this.tvSize.setText(Constants.cardSize);
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected void initData() {
        this.themeRecyclerView.setLayoutManager(new GridLayoutManager(this, 3));
        this.adapter = new CardThemeSelectAdapter(this);
        this.themeRecyclerView.setAdapter(this.adapter);
        this.adapter.setListener(new CardThemeSelectAdapter.ItemClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$CardActivity$npJL_Rqp4748RUh1PQFsf_uLuPc
            @Override // cn.highlight.work_card_write.adapter.CardThemeSelectAdapter.ItemClickListener
            public final void clickListener(int i) {
                this.f$0.lambda$initData$0$CardActivity(i);
            }
        });
        this.dataList = BadgeBeanDaoUse.queryAllBySize(Constants.cardSize);
        List<BadgeBean> list = this.dataList;
        if (list == null || list.size() <= 0) {
            return;
        }
        Collections.reverse(this.dataList);
        this.adapter.setDataList(this.dataList, this.selectList);
    }

    public /* synthetic */ void lambda$initData$0$CardActivity(int i) {
        if (isContain(this.dataList.get(i))) {
            this.selectList.remove(this.dataList.get(i));
        } else {
            this.selectList.add(this.dataList.get(i));
        }
        this.adapter.setDataList(this.dataList, this.selectList);
        refreshUI();
    }

    private boolean isContain(BadgeBean badgeBean) {
        Iterator<BadgeBean> it = this.selectList.iterator();
        while (it.hasNext()) {
            if (it.next().getId().equals(badgeBean.getId())) {
                return true;
            }
        }
        return false;
    }

    private void refreshUI() {
        runOnUiThread(new Runnable() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$CardActivity$A7qBpnf79aa_sDTX5Fi9rb1vm3U
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$refreshUI$1$CardActivity();
            }
        });
    }

    public /* synthetic */ void lambda$refreshUI$1$CardActivity() {
        List<BadgeBean> list;
        CardThemeSelectAdapter cardThemeSelectAdapter = this.adapter;
        if (cardThemeSelectAdapter != null && (list = this.dataList) != null) {
            cardThemeSelectAdapter.setDataList(list, this.selectList);
        }
        this.tvNum.setText(getString(C0498R.string.card_theme_selected, new Object[]{this.selectList.size() + ""}));
        if (this.dataList.size() == this.selectList.size()) {
            this.tvSelect.setText(getString(C0498R.string.card_theme_unselect));
        } else {
            this.tvSelect.setText(getString(C0498R.string.card_theme_select));
        }
        if (this.selectList.size() > 0) {
            this.imageCopy.setBackgroundResource(C0498R.mipmap.copy1);
            this.tvCopy.setTextColor(getResources().getColor(C0498R.color.text_color_3));
            if (this.dataList.size() > 1 && this.dataList.size() == this.selectList.size()) {
                this.imageCopy.setBackgroundResource(C0498R.mipmap.copy);
                this.tvCopy.setTextColor(getResources().getColor(C0498R.color.text_color_6));
            }
        } else {
            this.imageCopy.setBackgroundResource(C0498R.mipmap.copy);
            this.tvCopy.setTextColor(getResources().getColor(C0498R.color.text_color_6));
        }
        if (this.selectList.size() > 0) {
            this.imageDelete.setBackgroundResource(C0498R.mipmap.delete2);
            this.tvDelete.setTextColor(getResources().getColor(C0498R.color.text_color_3));
        } else {
            this.imageDelete.setBackgroundResource(C0498R.mipmap.delete1);
            this.tvDelete.setTextColor(getResources().getColor(C0498R.color.text_color_6));
        }
    }

    @OnClick({C0498R.id.linearCancel, C0498R.id.tvSelect, C0498R.id.linearCopy, C0498R.id.linearDelete})
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case C0498R.id.linearCancel /* 2131296633 */:
                finishActivity();
                break;
            case C0498R.id.linearCopy /* 2131296637 */:
                if (this.selectList.size() > 0) {
                    if (this.dataList.size() <= 1 || this.dataList.size() != this.selectList.size()) {
                        showDialog(getResources().getString(C0498R.string.card_theme_copy_sure), "copy");
                        break;
                    }
                }
                break;
            case C0498R.id.linearDelete /* 2131296639 */:
                if (this.selectList.size() > 0) {
                    showDialog(getResources().getString(C0498R.string.card_theme_delete_sure), "delete");
                    break;
                }
                break;
            case C0498R.id.tvSelect /* 2131296940 */:
                if (Tools.getText(this.tvSelect).equals(getString(C0498R.string.card_theme_select))) {
                    this.selectList.clear();
                    this.selectList.addAll(this.dataList);
                } else {
                    this.selectList.clear();
                }
                refreshUI();
                break;
        }
    }

    private void showDialog(final String str, final String str2) {
        runOnUiThread(new Runnable() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$CardActivity$DdT3RTOvh12EDuM9bgaxghK-w2s
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showDialog$5$CardActivity(str, str2);
            }
        });
    }

    public /* synthetic */ void lambda$showDialog$5$CardActivity(String str, final String str2) {
        View viewInflate = LayoutInflater.from(this).inflate(C0498R.layout.dialog_error_note, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(C0498R.id.tv_info);
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(C0498R.id.linearError);
        Button button = (Button) viewInflate.findViewById(C0498R.id.bt_ok);
        LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(C0498R.id.linearError1);
        Button button2 = (Button) viewInflate.findViewById(C0498R.id.bt_cancel);
        Button button3 = (Button) viewInflate.findViewById(C0498R.id.bt_sure);
        final Dialog dialog = new Dialog(this, C0498R.style.BaseDialog);
        dialog.setContentView(viewInflate);
        dialog.setCanceledOnTouchOutside(false);
        Window window = dialog.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        getWindowManager().getDefaultDisplay().getSize(new Point());
        attributes.width = (int) (r10.x * 0.75f);
        attributes.height = -2;
        window.setAttributes(attributes);
        dialog.show();
        textView.setText(str);
        linearLayout.setVisibility(8);
        linearLayout2.setVisibility(0);
        button.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$CardActivity$Oh1Q49zm33vZdkwYr7sRoDCvbqw
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialog.dismiss();
            }
        });
        button2.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$CardActivity$A6kXD4hhckBkViOsUX2sq5Gm9TA
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialog.dismiss();
            }
        });
        button3.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$CardActivity$XmbpR958V9MK2T_RC1dLQFXcIHU
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$null$4$CardActivity(dialog, str2, view);
            }
        });
    }

    public /* synthetic */ void lambda$null$4$CardActivity(Dialog dialog, String str, View view) {
        dialog.dismiss();
        if (str.equals("copy")) {
            copyCard();
        } else if (str.equals("delete")) {
            deleteCard();
        }
    }

    private void copyCard() {
        AsyncTask.execute(new Runnable() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$CardActivity$mI51sj_IrwY5Ce7ok1P9UvXZSOU
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$copyCard$8$CardActivity();
            }
        });
    }

    public /* synthetic */ void lambda$copyCard$8$CardActivity() {
        runOnUiThread(new Runnable() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$CardActivity$DRiRj0Q44stI7YwHy5OIJ7gq0eg
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$null$6$CardActivity();
            }
        });
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (BadgeBean badgeBean : this.selectList) {
            String str = System.currentTimeMillis() + ".png";
            List<DoodleBean> listQueryAllByName = DoodleBeanDaoUse.queryAllByName(badgeBean.getImageName());
            if (listQueryAllByName != null) {
                for (DoodleBean doodleBean : listQueryAllByName) {
                    DoodleBean doodleBean2 = new DoodleBean();
                    doodleBean2.setImageName(str);
                    doodleBean2.setMIDoodlePen(doodleBean.getMIDoodlePen());
                    doodleBean2.setMSize(doodleBean.getMSize());
                    doodleBean2.setMColor(doodleBean.getMColor());
                    doodleBean2.setMLocationX(doodleBean.getMLocationX());
                    doodleBean2.setMLocationY(doodleBean.getMLocationY());
                    doodleBean2.setMPivotX(doodleBean.getMPivotX());
                    doodleBean2.setMPivotY(doodleBean.getMPivotY());
                    doodleBean2.setMRotate(doodleBean.getMRotate());
                    doodleBean2.setMIsNeedClipOutside(doodleBean.getMIsNeedClipOutside());
                    doodleBean2.setMScale(doodleBean.getMScale());
                    doodleBean2.setMText0(doodleBean.getMText0());
                    doodleBean2.setMText(doodleBean.getMText());
                    doodleBean2.setMTextStyle(doodleBean.getMTextStyle());
                    doodleBean2.setMTextBgColor(doodleBean.getMTextBgColor());
                    doodleBean2.setMTextBold(doodleBean.getMTextBold());
                    doodleBean2.setMTextItalic(doodleBean.getMTextItalic());
                    doodleBean2.setMTextUnderline(doodleBean.getMTextUnderline());
                    doodleBean2.setMBitmap(doodleBean.getMBitmap());
                    doodleBean2.setBgColor(doodleBean.getBgColor());
                    doodleBean2.setFgColor(doodleBean.getFgColor());
                    doodleBean2.setShape1(doodleBean.getShape1());
                    doodleBean2.setWidth(doodleBean.getWidth());
                    doodleBean2.setHeight(doodleBean.getHeight());
                    doodleBean2.setEffects(doodleBean.getEffects());
                    arrayList.add(doodleBean2);
                }
            }
            BadgeBean badgeBean2 = new BadgeBean();
            badgeBean2.setImageName(str);
            badgeBean2.setSize(badgeBean.getSize());
            badgeBean2.setColor(badgeBean.getColor());
            badgeBean2.setBitmapStart(badgeBean.getBitmapStart());
            badgeBean2.setBitmapEnd(badgeBean.getBitmapEnd());
            badgeBean2.setTime(String.valueOf(System.currentTimeMillis()));
            arrayList2.add(badgeBean2);
        }
        DoodleBeanDaoUse.insertAll(arrayList);
        BadgeBeanDaoUse.insertAll(arrayList2);
        runOnUiThread(new Runnable() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$CardActivity$ExEqAORYISAgagjDsOeGB3-lAKg
            @Override // java.lang.Runnable
            public final void run() {
                ApiUtil.getInstance().getLoadingUtil().dismissProgressDialog();
            }
        });
        EventBus.getDefault().post(new MessageEvent("刷新主题"));
        finishActivity();
    }

    public /* synthetic */ void lambda$null$6$CardActivity() {
        ApiUtil.getInstance().getLoadingUtil().showProgressDialog(this, "");
    }

    private void deleteCard() {
        AsyncTask.execute(new Runnable() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$CardActivity$UswzbdigSJePTFSvtOudaAuZbgw
            @Override // java.lang.Runnable
            public final void run() throws SQLException {
                this.f$0.lambda$deleteCard$11$CardActivity();
            }
        });
    }

    public /* synthetic */ void lambda$deleteCard$11$CardActivity() throws SQLException {
        runOnUiThread(new Runnable() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$CardActivity$kpoLk0Gp7mJbbYqSyWG83NrdgCM
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$null$9$CardActivity();
            }
        });
        Iterator<BadgeBean> it = this.selectList.iterator();
        while (it.hasNext()) {
            DoodleBeanDaoUse.deleteAllByName(it.next().getImageName());
        }
        BadgeBeanDaoUse.deleteInTx(this.selectList);
        runOnUiThread(new Runnable() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$CardActivity$ccBRVwcCNGZmtD3_mmb7T5cKBNk
            @Override // java.lang.Runnable
            public final void run() {
                ApiUtil.getInstance().getLoadingUtil().dismissProgressDialog();
            }
        });
        EventBus.getDefault().post(new MessageEvent("刷新主题"));
        finishActivity();
    }

    public /* synthetic */ void lambda$null$9$CardActivity() {
        ApiUtil.getInstance().getLoadingUtil().showProgressDialog(this, "");
    }
}
