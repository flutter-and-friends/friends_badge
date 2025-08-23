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
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import cn.highlight.core.utils.Tools;
import cn.highlight.work_card_write.Constants;
import cn.highlight.work_card_write.R;
import cn.highlight.work_card_write.activity.CropActivity;
import cn.highlight.work_card_write.activity.HomeActivity;
import cn.highlight.work_card_write.activity.Model2Activity;
import cn.highlight.work_card_write.activity.PhotoTakeActivity;
import cn.highlight.work_card_write.adapter.EditAdapter;
import cn.highlight.work_card_write.api.MessageEvent;
import cn.highlight.work_card_write.base.BaseFragment;
import cn.highlight.work_card_write.greendao.dao.BadgeBeanDaoUse;
import cn.highlight.work_card_write.greendao.table.BadgeBean;
import cn.highlight.work_card_write.util.BadgeSpecificationUtils;
import cn.highlight.work_card_write.util.HexUtils;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes.dex */
public class EditFragment extends BaseFragment {
    private static final int REQUEST_PICK_IMAGE = 10011;
    private EditAdapter adapter;
    private List<BadgeBean> dataList;

    @BindView(R.id.linearAlbum)
    RelativeLayout linearAlbum;

    @BindView(R.id.linearMore)
    LinearLayout linearMore;

    @BindView(R.id.linearNew)
    LinearLayout linearNew;

    @BindView(R.id.linearPhoto)
    RelativeLayout linearPhoto;

    @BindView(R.id.linearZWSJ)
    LinearLayout linearZWSJ;

    @BindView(R.id.newUserRecyclerView)
    RecyclerView newUserRecyclerView;
    private NfcAdapter nfcAdapter;
    private BottomSheetDialog nfcDialog;
    private int type = -1;
    private BottomSheetDialog typeDialog;

    @Override // cn.highlight.work_card_write.base.BaseFragment
    protected void initViews(Bundle bundle) {
    }

    @Override // cn.highlight.work_card_write.base.BaseFragment
    protected int setLayoutId() {
        return R.layout.fragment_edit;
    }

    @Override // cn.highlight.work_card_write.base.BaseFragment
    protected void initData() {
        if (!EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().register(this);
        }
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        linearLayoutManager.setOrientation(0);
        this.newUserRecyclerView.setLayoutManager(linearLayoutManager);
        this.adapter = new EditAdapter(getActivity());
        this.newUserRecyclerView.setAdapter(this.adapter);
        this.adapter.setListener(new EditAdapter.ItemClickListener() { // from class: cn.highlight.work_card_write.fragment.-$$Lambda$EditFragment$U6SeoOxxCqy-9WNUDY3deXV8KVM
            @Override // cn.highlight.work_card_write.adapter.EditAdapter.ItemClickListener
            public final void OnItemClickListener(int i) {
                this.f$0.lambda$initData$0$EditFragment(i);
            }
        });
        initUsedData();
    }

    public /* synthetic */ void lambda$initData$0$EditFragment(int i) {
        List<BadgeBean> list = this.dataList;
        if (list == null || list.size() == 0) {
            return;
        }
        Constants.editSize = this.dataList.get(i).getSize();
        Constants.editColor = this.dataList.get(i).getColor();
        Constants.editSelectModel = this.dataList.get(i);
        Constants.IsModelThemeIn = true;
        Intent intent = new Intent(getContext(), (Class<?>) Model2Activity.class);
        intent.putExtra("type", 3);
        startActivity(intent);
    }

    private void initUsedData() {
        this.dataList = new ArrayList();
        List<BadgeBean> listQueryAll = BadgeBeanDaoUse.queryAll();
        if (listQueryAll != null && listQueryAll.size() > 0) {
            Collections.sort(listQueryAll, new Comparator() { // from class: cn.highlight.work_card_write.fragment.-$$Lambda$EditFragment$c6R_bsYfYl3gD5YbNja-hZCKVfs
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return ((BadgeBean) obj).getTime().compareTo(((BadgeBean) obj2).getTime());
                }
            });
            Collections.reverse(listQueryAll);
            if (listQueryAll.size() >= 3) {
                this.dataList = listQueryAll.subList(0, 3);
            } else {
                this.dataList = listQueryAll;
            }
        }
        EditAdapter editAdapter = this.adapter;
        if (editAdapter != null) {
            editAdapter.setDataList(this.dataList);
        }
        List<BadgeBean> list = this.dataList;
        if (list != null && list.size() > 0) {
            this.linearZWSJ.setVisibility(8);
            this.linearMore.setVisibility(0);
            this.newUserRecyclerView.setVisibility(0);
        } else {
            this.linearZWSJ.setVisibility(0);
            this.linearMore.setVisibility(8);
            this.newUserRecyclerView.setVisibility(8);
        }
    }

    @OnClick({R.id.linearNew, R.id.linearPhoto, R.id.linearAlbum, R.id.linearMore})
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.linearAlbum /* 2131296631 */:
                this.type = 2;
                showStartNFCDialog();
                initNFC();
                break;
            case R.id.linearMore /* 2131296650 */:
                ((HomeActivity) Objects.requireNonNull(getActivity())).setUI(1);
                ((HomeActivity) getActivity()).setFragment(1);
                Constants.cardShowPage = "主题";
                break;
            case R.id.linearNew /* 2131296652 */:
                showTypeDialog();
                break;
            case R.id.linearPhoto /* 2131296656 */:
                this.type = 1;
                showStartNFCDialog();
                initNFC();
                break;
        }
    }

    private void showTypeDialog() {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.dialog_select_edit_item, (ViewGroup) null);
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.linearNew);
        LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(R.id.linearNew1);
        TextView textView = (TextView) viewInflate.findViewById(R.id.textCancel);
        this.typeDialog = new BottomSheetDialog((Context) Objects.requireNonNull(getContext()), R.style.CustomBottomSheetStyle);
        this.typeDialog.setContentView(viewInflate);
        this.typeDialog.setCanceledOnTouchOutside(false);
        this.typeDialog.setCancelable(false);
        this.typeDialog.show();
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.fragment.-$$Lambda$EditFragment$i1bnED8lXHdM3kzOHTlDnEXtWiI
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showTypeDialog$2$EditFragment(view);
            }
        });
        linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.fragment.-$$Lambda$EditFragment$5LRIGK2bfgFStw7nuTrlgnWGAUI
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showTypeDialog$3$EditFragment(view);
            }
        });
        textView.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.fragment.-$$Lambda$EditFragment$60gcDSj8lMzDIbzrd7AEUS7zoww
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showTypeDialog$4$EditFragment(view);
            }
        });
    }

    public /* synthetic */ void lambda$showTypeDialog$2$EditFragment(View view) {
        this.type = 0;
        showStartNFCDialog();
        initNFC();
    }

    public /* synthetic */ void lambda$showTypeDialog$3$EditFragment(View view) {
        this.typeDialog.dismiss();
        this.type = 3;
        Constants.editSize = "3.7";
        Constants.editColor = null;
        Constants.editCropImage = null;
        Constants.editModelImage = null;
        runDifferentMethods();
    }

    public /* synthetic */ void lambda$showTypeDialog$4$EditFragment(View view) {
        this.typeDialog.dismiss();
    }

    private void showStartNFCDialog() {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.dialog_start_nfc_item, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tvCancel);
        this.nfcDialog = new BottomSheetDialog((Context) Objects.requireNonNull(getContext()), R.style.CustomBottomSheetStyle);
        this.nfcDialog.setContentView(viewInflate);
        this.nfcDialog.setCanceledOnTouchOutside(false);
        this.nfcDialog.setCancelable(false);
        this.nfcDialog.show();
        textView.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.fragment.-$$Lambda$EditFragment$Shgsnqy4tqh_FPsP3Y8ZG6Zrbys
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showStartNFCDialog$5$EditFragment(view);
            }
        });
        this.nfcDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.highlight.work_card_write.fragment.-$$Lambda$EditFragment$DHw74TJyZJibO1f8fSSiy-YqlSo
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.lambda$showStartNFCDialog$6$EditFragment(dialogInterface);
            }
        });
    }

    public /* synthetic */ void lambda$showStartNFCDialog$5$EditFragment(View view) {
        this.nfcDialog.dismiss();
    }

    public /* synthetic */ void lambda$showStartNFCDialog$6$EditFragment(DialogInterface dialogInterface) {
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
            nfcAdapter.enableReaderMode(getActivity(), new NfcAdapter.ReaderCallback() { // from class: cn.highlight.work_card_write.fragment.-$$Lambda$EditFragment$yhxnwRtivCjkyZrt285i34mp5k0
                @Override // android.nfc.NfcAdapter.ReaderCallback
                public final void onTagDiscovered(Tag tag) throws IOException {
                    this.f$0.lambda$initNFC$8$EditFragment(tag);
                }
            }, 1, new Bundle());
        }
    }

    public /* synthetic */ void lambda$initNFC$8$EditFragment(Tag tag) throws IOException {
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
            ((FragmentActivity) Objects.requireNonNull(getActivity())).runOnUiThread(new Runnable() { // from class: cn.highlight.work_card_write.fragment.-$$Lambda$EditFragment$aANlHIWnkdxF_xyR-8c_dTKPyWw
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$null$7$EditFragment();
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public /* synthetic */ void lambda$null$7$EditFragment() {
        BottomSheetDialog bottomSheetDialog = this.typeDialog;
        if (bottomSheetDialog != null) {
            bottomSheetDialog.dismiss();
        }
        BottomSheetDialog bottomSheetDialog2 = this.nfcDialog;
        if (bottomSheetDialog2 != null) {
            bottomSheetDialog2.dismiss();
        }
        runDifferentMethods();
    }

    private void runDifferentMethods() {
        int i = this.type;
        if (i != 0) {
            if (i == 1) {
                Intent intent = new Intent(getContext(), (Class<?>) PhotoTakeActivity.class);
                intent.putExtra("type", this.type);
                startActivity(intent);
                return;
            } else if (i == 2) {
                startActivityForResult(new Intent("android.intent.action.GET_CONTENT").setType("image/*"), REQUEST_PICK_IMAGE);
                return;
            } else if (i != 3) {
                return;
            }
        }
        Intent intent2 = new Intent(getContext(), (Class<?>) Model2Activity.class);
        intent2.putExtra("type", this.type);
        startActivity(intent2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1 && i == REQUEST_PICK_IMAGE) {
            Intent intent2 = new Intent(getContext(), (Class<?>) CropActivity.class);
            intent2.putExtra("type", this.type);
            intent2.putExtra("uri", intent.getData());
            startActivity(intent2);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEvent(MessageEvent messageEvent) {
        if (messageEvent.getMessage().equals("刷新主题")) {
            initUsedData();
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
