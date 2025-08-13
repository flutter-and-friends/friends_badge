package cn.highlight.work_card_write.fragment;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.nfc.NfcAdapter;
import android.nfc.Tag;
import android.nfc.tech.IsoDep;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import cn.highlight.core.utils.Tools;
import cn.highlight.work_card_write.C0498R;
import cn.highlight.work_card_write.Constants;
import cn.highlight.work_card_write.activity.CardActivity;
import cn.highlight.work_card_write.activity.Model2Activity;
import cn.highlight.work_card_write.adapter.CardThemeAdapter;
import cn.highlight.work_card_write.api.MessageEvent;
import cn.highlight.work_card_write.base.BaseFragment;
import cn.highlight.work_card_write.greendao.dao.BadgeBeanDaoUse;
import cn.highlight.work_card_write.greendao.table.BadgeBean;
import cn.highlight.work_card_write.util.BadgeSpecificationUtils;
import cn.highlight.work_card_write.util.DBManagerUtil;
import cn.highlight.work_card_write.util.HexUtils;
import cn.highlight.work_card_write.view.CycleWheelView;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.google.android.material.tabs.TabLayout;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes.dex */
public class CardFragment extends BaseFragment {

    @BindView(C0498R.id.card_model_tv)
    TextView cardModelTv;

    @BindView(C0498R.id.card_model_tv1)
    TextView cardModelTv1;

    @BindView(C0498R.id.card_theme_tv)
    TextView cardThemeTv;

    @BindView(C0498R.id.card_theme_tv1)
    TextView cardThemeTv1;

    @BindView(C0498R.id.card_title_model)
    RelativeLayout cardTitleModel;

    @BindView(C0498R.id.card_title_theme)
    RelativeLayout cardTitleTheme;
    private List<BadgeBean> dataList;

    @BindView(C0498R.id.linearModel)
    LinearLayout linearModel;

    @BindView(C0498R.id.linearTheme)
    LinearLayout linearTheme;

    @BindView(C0498R.id.linearZWSJ)
    LinearLayout linearZWSJ;
    private CardThemeAdapter modelAdapter;
    private List<BadgeBean> modelList;

    @BindView(C0498R.id.modelRecyclerView)
    RecyclerView modelRecyclerView;

    @BindView(C0498R.id.modelSelectSize)
    LinearLayout modelSelectSize;

    @BindView(C0498R.id.modelSize)
    TextView modelSize;

    @BindView(C0498R.id.modelTabLayout)
    TabLayout modelTabLayout;
    private NfcAdapter nfcAdapter;
    private BottomSheetDialog nfcDialog;

    @BindView(C0498R.id.nfcLinear)
    ImageView nfcLinear;

    @BindView(C0498R.id.themTabLayout)
    TabLayout themTabLayout;
    private List<BadgeBean> themeList;

    @BindView(C0498R.id.themeRecyclerView)
    RecyclerView themeRecyclerView;

    @BindView(C0498R.id.themeSelectSize)
    LinearLayout themeSelectSize;

    @BindView(C0498R.id.themeSize)
    TextView themeSize;

    @Override // cn.highlight.work_card_write.base.BaseFragment
    protected void initViews(Bundle bundle) {
    }

    @Override // cn.highlight.work_card_write.base.BaseFragment
    protected int setLayoutId() {
        return C0498R.layout.fragment_card;
    }

    @Override // cn.highlight.work_card_write.base.BaseFragment
    protected void initData() {
        if (!EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().register(this);
        }
        initShow("模板");
        initModel();
        initTheme();
    }

    @Override // cn.highlight.work_card_write.base.BaseFragment, androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        if (z || !isResumed()) {
            return;
        }
        if (Constants.cardShowPage.equals("模板")) {
            initModel();
        } else {
            initTheme();
        }
        initShow(Constants.cardShowPage);
    }

    private void initShow(String str) {
        if (str.equals("模板")) {
            this.cardModelTv.setTextColor(getResources().getColor(C0498R.color.text_color_3));
            this.cardModelTv1.setVisibility(0);
            this.cardThemeTv.setTextColor(getResources().getColor(C0498R.color.text_color_5));
            this.cardThemeTv1.setVisibility(4);
            this.modelSize.setText(Constants.cardSize);
            this.linearModel.setVisibility(0);
            this.linearTheme.setVisibility(8);
            return;
        }
        this.cardModelTv.setTextColor(getResources().getColor(C0498R.color.text_color_5));
        this.cardModelTv1.setVisibility(4);
        this.cardThemeTv.setTextColor(getResources().getColor(C0498R.color.text_color_3));
        this.cardThemeTv1.setVisibility(0);
        this.themeSize.setText(Constants.cardSize);
        this.linearModel.setVisibility(8);
        this.linearTheme.setVisibility(0);
    }

    private void initModel() {
        this.modelRecyclerView.setLayoutManager(new GridLayoutManager(getContext(), 3));
        this.modelAdapter = new CardThemeAdapter(getContext());
        this.modelRecyclerView.setAdapter(this.modelAdapter);
        this.modelAdapter.setListener(new CardThemeAdapter.ItemClickListener() { // from class: cn.highlight.work_card_write.fragment.-$$Lambda$CardFragment$4rULvffWQEhcV3lIPVKxB8UjaLs
            @Override // cn.highlight.work_card_write.adapter.CardThemeAdapter.ItemClickListener
            public final void clickListener(int i) {
                this.f$0.lambda$initModel$0$CardFragment(i);
            }
        });
        this.modelList = DBManagerUtil.getInstance(getContext()).getmDaoSession().getBadgeBeanDao().loadAll();
        TabLayout.TabView tabView = this.modelTabLayout.getTabAt(0).view;
        if (tabView != null) {
            int iRound = Math.round(getResources().getDisplayMetrics().density * 16.0f);
            tabView.setPadding(iRound, 0, iRound, 0);
            tabView.requestLayout();
        }
        this.modelTabLayout.addOnTabSelectedListener(new TabLayout.OnTabSelectedListener() { // from class: cn.highlight.work_card_write.fragment.CardFragment.1
            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabReselected(TabLayout.Tab tab) {
            }

            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabUnselected(TabLayout.Tab tab) {
            }

            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabSelected(TabLayout.Tab tab) {
                CardFragment.this.initModelData(tab.getPosition());
            }
        });
        initModelData(this.modelTabLayout.getSelectedTabPosition());
    }

    public /* synthetic */ void lambda$initModel$0$CardFragment(int i) {
        Constants.editSize = Constants.cardSize;
        Constants.editColor = "黑白红黄";
        Constants.editSelectModel = this.dataList.get(i);
        Constants.IsModelThemeIn = false;
        Intent intent = new Intent(getContext(), (Class<?>) Model2Activity.class);
        intent.putExtra("type", 3);
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initModelData(int i) {
        this.dataList = new ArrayList();
        List<BadgeBean> list = this.modelList;
        if (list != null) {
            for (BadgeBean badgeBean : list) {
                if (badgeBean.getSize().equals(Constants.cardSize)) {
                    if (i != 0) {
                        if (i != 1) {
                            if (i == 2) {
                                if (badgeBean.getImageName().contains("blt")) {
                                    this.dataList.add(badgeBean);
                                }
                            } else if (i == 3 && badgeBean.getImageName().contains("xsk")) {
                                this.dataList.add(badgeBean);
                            }
                        } else if (badgeBean.getImageName().contains("rcbg")) {
                            this.dataList.add(badgeBean);
                        }
                    } else if (badgeBean.getImageName().contains("rm")) {
                        this.dataList.add(badgeBean);
                    }
                }
            }
        }
        if (this.dataList.size() > 0) {
            this.modelAdapter.setDataList(this.dataList);
        }
    }

    private void initTheme() {
        this.themeRecyclerView.setLayoutManager(new GridLayoutManager(getContext(), 3));
        CardThemeAdapter cardThemeAdapter = new CardThemeAdapter(getContext());
        this.themeRecyclerView.setAdapter(cardThemeAdapter);
        cardThemeAdapter.setListener(new CardThemeAdapter.ItemClickListener() { // from class: cn.highlight.work_card_write.fragment.-$$Lambda$CardFragment$4YFOcn8Y0aM-S78_XIt7ekKoYDU
            @Override // cn.highlight.work_card_write.adapter.CardThemeAdapter.ItemClickListener
            public final void clickListener(int i) {
                this.f$0.lambda$initTheme$1$CardFragment(i);
            }
        });
        cardThemeAdapter.setLongListener(new CardThemeAdapter.ItemLongClickListener() { // from class: cn.highlight.work_card_write.fragment.-$$Lambda$CardFragment$nxI16e0n6PxtWRD-7H9CKKX7kHU
            @Override // cn.highlight.work_card_write.adapter.CardThemeAdapter.ItemLongClickListener
            public final void longClickListener(int i) {
                this.f$0.lambda$initTheme$2$CardFragment(i);
            }
        });
        this.themeList = BadgeBeanDaoUse.queryAllBySize(Constants.cardSize);
        List<BadgeBean> list = this.themeList;
        if (list != null && list.size() > 0) {
            Collections.reverse(this.themeList);
            cardThemeAdapter.setDataList(this.themeList);
            this.linearZWSJ.setVisibility(8);
        } else {
            this.linearZWSJ.setVisibility(0);
        }
        TabLayout.TabView tabView = this.themTabLayout.getTabAt(0).view;
        if (tabView != null) {
            int iRound = Math.round(getResources().getDisplayMetrics().density * 20.0f);
            tabView.setPadding(iRound, 0, iRound, 0);
            tabView.requestLayout();
        }
    }

    public /* synthetic */ void lambda$initTheme$1$CardFragment(int i) {
        Constants.editSize = this.themeList.get(i).getSize();
        Constants.editColor = this.themeList.get(i).getColor();
        Constants.editSelectModel = this.themeList.get(i);
        Constants.IsModelThemeIn = true;
        Intent intent = new Intent(getContext(), (Class<?>) Model2Activity.class);
        intent.putExtra("type", 3);
        startActivity(intent);
    }

    public /* synthetic */ void lambda$initTheme$2$CardFragment(int i) {
        Intent intent = new Intent(getContext(), (Class<?>) CardActivity.class);
        intent.putExtra("position", i);
        startActivity(intent);
    }

    @OnClick({C0498R.id.card_title_model, C0498R.id.card_title_theme, C0498R.id.modelSelectSize, C0498R.id.themeSelectSize, C0498R.id.nfcLinear})
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case C0498R.id.card_title_model /* 2131296422 */:
                initShow("模板");
                initModel();
                break;
            case C0498R.id.card_title_theme /* 2131296423 */:
                initShow("主题");
                initTheme();
                break;
            case C0498R.id.modelSelectSize /* 2131296703 */:
                showSizeDialog("model");
                break;
            case C0498R.id.nfcLinear /* 2131296714 */:
                showStartNFCDialog();
                initNFC();
                break;
            case C0498R.id.themeSelectSize /* 2131296907 */:
                showSizeDialog("theme");
                break;
        }
    }

    private void showSizeDialog(final String str) {
        View viewInflate = LayoutInflater.from(getContext()).inflate(C0498R.layout.dialog_select_size_card_item, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(C0498R.id.tvCancel);
        TextView textView2 = (TextView) viewInflate.findViewById(C0498R.id.tvSure);
        final CycleWheelView cycleWheelView = (CycleWheelView) viewInflate.findViewById(C0498R.id.wheelViewSize);
        final BottomSheetDialog bottomSheetDialog = new BottomSheetDialog((Context) Objects.requireNonNull(getContext()), C0498R.style.CustomBottomSheetStyle);
        bottomSheetDialog.setContentView(viewInflate);
        bottomSheetDialog.setCanceledOnTouchOutside(false);
        bottomSheetDialog.setCancelable(false);
        bottomSheetDialog.show();
        cycleWheelView.setLabels(BadgeSpecificationUtils.getSpecificationList());
        cycleWheelView.setAlphaGradual(0.5f);
        textView.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.fragment.-$$Lambda$CardFragment$zkfo-K4r1HfL4rDv69GUWz6uwFA
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                bottomSheetDialog.dismiss();
            }
        });
        textView2.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.fragment.-$$Lambda$CardFragment$PlMaUMmPsgJ8eefKfQzqQnhUc90
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showSizeDialog$4$CardFragment(cycleWheelView, bottomSheetDialog, str, view);
            }
        });
    }

    public /* synthetic */ void lambda$showSizeDialog$4$CardFragment(CycleWheelView cycleWheelView, BottomSheetDialog bottomSheetDialog, String str, View view) {
        Constants.cardSize = cycleWheelView.getSelectLabel();
        bottomSheetDialog.dismiss();
        if (str.equals("model")) {
            initModel();
        } else {
            initTheme();
        }
    }

    private void showStartNFCDialog() {
        View viewInflate = LayoutInflater.from(getContext()).inflate(C0498R.layout.dialog_start_nfc_item, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(C0498R.id.tvCancel);
        this.nfcDialog = new BottomSheetDialog((Context) Objects.requireNonNull(getContext()), C0498R.style.CustomBottomSheetStyle);
        this.nfcDialog.setContentView(viewInflate);
        this.nfcDialog.setCanceledOnTouchOutside(false);
        this.nfcDialog.setCancelable(false);
        this.nfcDialog.show();
        textView.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.fragment.-$$Lambda$CardFragment$whrG2ftUWcX_71vpYsA0TNvHS5s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showStartNFCDialog$5$CardFragment(view);
            }
        });
        this.nfcDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.highlight.work_card_write.fragment.-$$Lambda$CardFragment$2gYfSyZWsQcUJy19uZjjg419Ws4
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.lambda$showStartNFCDialog$6$CardFragment(dialogInterface);
            }
        });
    }

    public /* synthetic */ void lambda$showStartNFCDialog$5$CardFragment(View view) {
        this.nfcDialog.dismiss();
    }

    public /* synthetic */ void lambda$showStartNFCDialog$6$CardFragment(DialogInterface dialogInterface) {
        if (this.nfcAdapter != null) {
            this.nfcAdapter = null;
        }
    }

    private void initNFC() {
        if (this.nfcAdapter == null) {
            this.nfcAdapter = NfcAdapter.getDefaultAdapter(getContext());
            NfcAdapter nfcAdapter = this.nfcAdapter;
            if (nfcAdapter == null) {
                return;
            }
            nfcAdapter.enableReaderMode(getActivity(), new NfcAdapter.ReaderCallback() { // from class: cn.highlight.work_card_write.fragment.-$$Lambda$CardFragment$cLdVXSG68CksF751V4h4IF_AYhk
                @Override // android.nfc.NfcAdapter.ReaderCallback
                public final void onTagDiscovered(Tag tag) throws IOException {
                    this.f$0.lambda$initNFC$8$CardFragment(tag);
                }
            }, 1, new Bundle());
        }
    }

    public /* synthetic */ void lambda$initNFC$8$CardFragment(Tag tag) throws IOException {
        IsoDep isoDep = IsoDep.get(tag);
        try {
            isoDep.connect();
            String specificationByHardware = BadgeSpecificationUtils.getSpecificationByHardware(((String) Objects.requireNonNull(HexUtils.byte2HexStr(isoDep.transceive(new byte[]{-48, -47, 3, 0, 1})))).substring(0, 2));
            if (Tools.isNull(specificationByHardware)) {
                return;
            }
            String[] strArrSplit = specificationByHardware.split("-");
            Constants.editSize = strArrSplit[1];
            Constants.editColor = strArrSplit[2];
            Constants.editCropImage = null;
            Constants.editModelImage = null;
            ((FragmentActivity) Objects.requireNonNull(getActivity())).runOnUiThread(new Runnable() { // from class: cn.highlight.work_card_write.fragment.-$$Lambda$CardFragment$5CAQaDQFAUnmxo9ayKYFcvK_uKE
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$null$7$CardFragment();
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public /* synthetic */ void lambda$null$7$CardFragment() {
        BottomSheetDialog bottomSheetDialog = this.nfcDialog;
        if (bottomSheetDialog != null) {
            bottomSheetDialog.dismiss();
        }
        Intent intent = new Intent(getContext(), (Class<?>) Model2Activity.class);
        intent.putExtra("type", 0);
        startActivity(intent);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEvent(MessageEvent messageEvent) {
        if (messageEvent.getMessage().equals("刷新主题")) {
            initTheme();
        }
    }

    @Override // cn.highlight.work_card_write.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        if (EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().unregister(this);
        }
    }
}
