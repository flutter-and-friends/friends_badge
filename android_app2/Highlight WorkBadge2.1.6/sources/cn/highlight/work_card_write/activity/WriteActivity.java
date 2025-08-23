package cn.highlight.work_card_write.activity;

import android.app.Dialog;
import android.bluetooth.BluetoothAdapter;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.location.LocationManager;
import android.nfc.NfcAdapter;
import android.nfc.Tag;
import android.nfc.tech.IsoDep;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import cn.highlight.core.utils.AppManager;
import cn.highlight.core.utils.ToastUtil;
import cn.highlight.core.utils.Tools;
import cn.highlight.lib_doodle.DoodleBarCode;
import cn.highlight.lib_doodle.DoodleBg;
import cn.highlight.lib_doodle.DoodleBitmap;
import cn.highlight.lib_doodle.DoodleColor;
import cn.highlight.lib_doodle.DoodlePen;
import cn.highlight.lib_doodle.DoodleQRCode;
import cn.highlight.lib_doodle.DoodleShape1;
import cn.highlight.lib_doodle.DoodleText;
import cn.highlight.lib_doodle.IDoodleItem;
import cn.highlight.tx.BaseTxManager;
import cn.highlight.tx.app.CmdCenter;
import cn.highlight.tx.ble.BleManager;
import cn.highlight.tx.ble.callback.BleScanCallback;
import cn.highlight.tx.ble.callback.BleWriteCallbackHighlight;
import cn.highlight.tx.ble.data.BleDevice;
import cn.highlight.tx.ble.exception.BleException;
import cn.highlight.tx.listener.OnConnStatus;
import cn.highlight.tx.listener.OnDataReceivedTag;
import cn.highlight.work_card_write.Constants;
import cn.highlight.work_card_write.R;
import cn.highlight.work_card_write.adapter.WriteAdapter;
import cn.highlight.work_card_write.api.ApiUtil;
import cn.highlight.work_card_write.api.MessageEvent;
import cn.highlight.work_card_write.base.BaseActivity;
import cn.highlight.work_card_write.greendao.dao.BadgeBeanDaoUse;
import cn.highlight.work_card_write.greendao.dao.DoodleBeanDaoUse;
import cn.highlight.work_card_write.greendao.table.BadgeBean;
import cn.highlight.work_card_write.greendao.table.DoodleBean;
import cn.highlight.work_card_write.util.BadgeSpecificationUtils;
import cn.highlight.work_card_write.util.CRC32Utils;
import cn.highlight.work_card_write.util.EPaperPicture;
import cn.highlight.work_card_write.util.FileCompressUtil;
import cn.highlight.work_card_write.util.HexUtils;
import cn.highlight.work_card_write.util.ImgUtil;
import cn.highlight.work_card_write.util.NDCMD;
import cn.highlight.work_card_write.util.ScaleBitmapUtils;
import cn.highlight.work_card_write.view.SlideSwitchView;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.yanzhenjie.permission.runtime.Permission;
import com.yuyh.library.imgsel.BuildConfig;
import com.zhy.http.okhttp.OkHttpUtils;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.CopyOnWriteArrayList;
import me.zhouzhuo.zzhorizontalprogressbar.ZzHorizontalProgressBar;
import org.greenrobot.eventbus.EventBus;

/* loaded from: classes.dex */
public class WriteActivity extends BaseActivity {
    private String badgeColor;
    private Bitmap bitmap;
    private BluetoothAdapter bluetoothAdapter;

    @BindView(R.id.btnSave)
    TextView btnSave;

    @BindView(R.id.btnWrite)
    TextView btnWrite;
    private CountDownTimer countDownTimer;

    @BindView(R.id.editColorLinear)
    LinearLayout editColorLinear;

    @BindView(R.id.image)
    ImageView image;
    private String imageName;

    @BindView(R.id.imgBack)
    ImageView imgBack;

    @BindView(R.id.imgHome)
    ImageView imgHome;
    private LocationManager locationManager;
    private boolean modify;
    private NfcAdapter nfcAdapter;
    private BottomSheetDialog nfcDialog;
    private OnDataReceivedTag onDataReceivedTag;

    @BindView(R.id.progressBar)
    ZzHorizontalProgressBar progressBar;
    private NfcAdapter.ReaderCallback readerCallback;

    @BindView(R.id.rfRecyclerView)
    RecyclerView rfRecyclerView;

    @BindView(R.id.slideSwitch)
    SlideSwitchView slideSwitch;
    private Thread thread;
    private Timer timer;
    private TimerTask timerTask;

    @BindView(R.id.tvProgress)
    TextView tvProgress;
    private BaseTxManager txManager;
    private int type;
    private WriteAdapter writeAdapter;
    private Bitmap writeBitmap;
    private String writeColor;
    private int writeHeight;
    private byte[][] writeImgData;
    private String writeSize;
    private int writeWidth;
    private boolean isShake = true;
    private boolean isImageSave = false;
    private BadgeBean baseBadgeBean = null;
    private boolean isRead = false;
    private boolean isSearch = false;
    private boolean isConnect = false;
    private boolean isStart = false;
    private boolean isWrite = false;
    private boolean isNormal = false;
    private boolean isExit = false;
    private boolean isExits = false;
    private int sendError = 0;
    private DecimalFormat decimalFormat = new DecimalFormat("##%");
    private Handler handler = new Handler() { // from class: cn.highlight.work_card_write.activity.WriteActivity.11
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 0) {
                if (WriteActivity.this.tvProgress == null || !WriteActivity.this.tvProgress.getText().equals(WriteActivity.this.getResources().getString(R.string.write_search_for_bluetooth_devices))) {
                    return;
                }
                WriteActivity.this.txManager.cancelScan();
                WriteActivity.this.isSearch = false;
                WriteActivity writeActivity = WriteActivity.this;
                writeActivity.showErrorDialog(writeActivity.getString(R.string.write_no_device_found), WriteActivity.this.getString(R.string.dialog_tip_info3), true);
                WriteActivity.this.exitProgress();
                WriteActivity.this.addInfo("");
                return;
            }
            if (message.what == 1) {
                WriteActivity.this.isNormal = true;
                WriteActivity.this.disConnectBLE();
                if (WriteActivity.this.handler != null) {
                    WriteActivity.this.handler.sendEmptyMessageDelayed(2, 500L);
                    return;
                }
                return;
            }
            if (message.what == 2) {
                WriteActivity.this.exitProgress();
                WriteActivity writeActivity2 = WriteActivity.this;
                writeActivity2.addInfo(writeActivity2.getResources().getString(R.string.write_send_finished));
                return;
            }
            if (message.what == 3) {
                WriteActivity.this.isNormal = true;
                WriteActivity.this.disConnectBLE();
                if (WriteActivity.this.handler != null) {
                    WriteActivity.this.handler.sendEmptyMessageDelayed(4, 500L);
                    return;
                }
                return;
            }
            if (message.what == 4) {
                WriteActivity writeActivity3 = WriteActivity.this;
                writeActivity3.showErrorDialog(writeActivity3.getString(R.string.write_send_error), WriteActivity.this.getString(R.string.dialog_tip_info5), true);
                WriteActivity.this.exitProgress();
                WriteActivity.this.addInfo("");
                return;
            }
            if (message.what == 5) {
                WriteActivity.this.swipe();
            }
        }
    };

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected int setLayoutId() {
        return R.layout.activity_write;
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected void initViews(Bundle bundle) {
        this.type = getIntent().getIntExtra("type", 0);
        this.modify = getIntent().getBooleanExtra("modify", false);
        this.imageName = getIntent().getStringExtra("name");
        initWrite();
        initShake();
        initRB();
        initImage();
        this.isImageSave = false;
        List<BadgeBean> listQueryAll = BadgeBeanDaoUse.queryAll();
        if (listQueryAll != null) {
            for (BadgeBean badgeBean : listQueryAll) {
                if (badgeBean.getImageName().equals(this.imageName)) {
                    this.baseBadgeBean = badgeBean;
                    return;
                }
            }
        }
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected void initData() {
        initTX();
        initBLETXReceive();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.isExits = false;
    }

    private void initWrite() {
        int i = this.type;
        if (i == 0 || i == 1 || i == 2) {
            this.writeSize = Constants.editSize;
            this.writeColor = Constants.editColor;
            this.writeWidth = BadgeSpecificationUtils.getWidthBySzie(this.writeSize);
            this.writeHeight = BadgeSpecificationUtils.getHeightBySzie(this.writeSize);
            this.editColorLinear.setVisibility(4);
            return;
        }
        this.writeSize = Constants.editSize;
        this.writeColor = "黑白红黄";
        this.writeWidth = BadgeSpecificationUtils.getWidthBySzie(this.writeSize);
        this.writeHeight = BadgeSpecificationUtils.getHeightBySzie(this.writeSize);
        this.editColorLinear.setVisibility(0);
    }

    private void initShake() {
        this.slideSwitch.setSwitchImage(BitmapFactory.decodeResource(getResources(), R.mipmap.switch_on), BitmapFactory.decodeResource(getResources(), R.mipmap.switch_off));
        this.slideSwitch.setSwitchImageSize(getResources().getDimensionPixelSize(R.dimen.dp_60), getResources().getDimensionPixelSize(R.dimen.dp_26));
        this.slideSwitch.setChecked(this.isShake);
        this.slideSwitch.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$WriteActivity$Z0omgKHXWbW0vrBEeLO_050K3RQ
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$initShake$0$WriteActivity(view);
            }
        });
    }

    public /* synthetic */ void lambda$initShake$0$WriteActivity(View view) {
        if (this.isRead || this.isSearch || this.isConnect || this.isStart || this.isWrite) {
            return;
        }
        this.slideSwitch.setChecked(!r3.isChecked());
        if (this.slideSwitch.isChecked()) {
            this.isShake = true;
            setImage();
        } else {
            this.isShake = false;
            setImage();
        }
    }

    private void initRB() {
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.setOrientation(0);
        this.rfRecyclerView.setLayoutManager(linearLayoutManager);
        this.writeAdapter = new WriteAdapter(this);
        this.rfRecyclerView.setAdapter(this.writeAdapter);
        final List<String> colorBySize = BadgeSpecificationUtils.getColorBySize(this.writeSize);
        WriteAdapter writeAdapter = this.writeAdapter;
        writeAdapter.selectColor = this.writeColor;
        writeAdapter.setDataList(colorBySize);
        this.writeAdapter.setOnItemClickListener(new WriteAdapter.OnItemClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$WriteActivity$zNvYP3NsiRHbb9k_cujmcVtBYIs
            @Override // cn.highlight.work_card_write.adapter.WriteAdapter.OnItemClickListener
            public final void onClick(int i) {
                this.f$0.lambda$initRB$1$WriteActivity(colorBySize, i);
            }
        });
    }

    public /* synthetic */ void lambda$initRB$1$WriteActivity(List list, int i) {
        if (this.isRead || this.isSearch || this.isConnect || this.isStart || this.isWrite) {
            this.writeAdapter.notifyDataSetChanged();
            return;
        }
        this.writeColor = (String) list.get(i);
        this.writeAdapter.selectColor = (String) list.get(i);
        this.writeAdapter.notifyDataSetChanged();
        setImage();
    }

    private void initImage() {
        if (Constants.editModelImage == null || Constants.editModelImage.isRecycled()) {
            return;
        }
        this.bitmap = ScaleBitmapUtils.scaleBitmap(Constants.editModelImage, this.writeWidth, this.writeHeight);
        setImage();
    }

    private void setImage() {
        if (this.bitmap == null) {
            return;
        }
        String str = this.writeAdapter.selectColor;
        char c = 65535;
        int iHashCode = str.hashCode();
        int i = 0;
        if (iHashCode != 1290700) {
            if (iHashCode != 40044118) {
                if (iHashCode == 1241408302 && str.equals("黑白红黄")) {
                    c = 2;
                }
            } else if (str.equals("黑白红")) {
                c = 1;
            }
        } else if (str.equals("黑白")) {
            c = 0;
        }
        if (c != 0) {
            if (c == 1) {
                i = 1;
            } else if (c == 2) {
                i = 6;
            }
        }
        if (!this.isShake) {
            this.writeBitmap = EPaperPicture.createIndexedImage(this.bitmap, true, this.writeWidth, this.writeHeight, i);
        } else {
            this.writeBitmap = EPaperPicture.createIndexedImage2(this.bitmap, this.writeWidth, this.writeHeight, i);
        }
        Bitmap bitmap = this.writeBitmap;
        if (bitmap != null) {
            this.image.setImageBitmap(bitmap);
        }
    }

    private void showTipToast(final String str) {
        runOnUiThread(new Runnable() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$WriteActivity$JbxQatAvM-QLDMMvo7UbGvr5x4Y
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showTipToast$2$WriteActivity(str);
            }
        });
    }

    public /* synthetic */ void lambda$showTipToast$2$WriteActivity(String str) {
        ToastUtil.showToast(this, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showErrorDialog(final String str, final String str2, final boolean z) {
        if (isFinishing()) {
            return;
        }
        runOnUiThread(new Runnable() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$WriteActivity$DdryM7rlMD2JhmuGsIa1KaAJyVM
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showErrorDialog$6$WriteActivity(str, str2, z);
            }
        });
    }

    public /* synthetic */ void lambda$showErrorDialog$6$WriteActivity(String str, String str2, boolean z) {
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_error_note, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tv_title);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_info);
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.linearError);
        Button button = (Button) viewInflate.findViewById(R.id.bt_ok);
        LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(R.id.linearError1);
        Button button2 = (Button) viewInflate.findViewById(R.id.bt_cancel);
        Button button3 = (Button) viewInflate.findViewById(R.id.bt_sure);
        final Dialog dialog = new Dialog(this, R.style.BaseDialog);
        dialog.setContentView(viewInflate);
        dialog.setCanceledOnTouchOutside(false);
        Window window = dialog.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        getWindowManager().getDefaultDisplay().getSize(new Point());
        attributes.width = (int) (r12.x * 0.75f);
        attributes.height = -2;
        window.setAttributes(attributes);
        dialog.show();
        textView.setText(str);
        textView2.setText(str2);
        if (z) {
            linearLayout.setVisibility(0);
            linearLayout2.setVisibility(8);
        } else {
            linearLayout.setVisibility(8);
            linearLayout2.setVisibility(0);
        }
        button.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$WriteActivity$I_OsDV1pNLqMj34apbwuCnV0C_w
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialog.dismiss();
            }
        });
        button2.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$WriteActivity$eYnJaLqTBI8oRXyk8gB5040OJR4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialog.dismiss();
            }
        });
        button3.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$WriteActivity$rfLn5LUt5aWdXBk_M3IMAsmuI0Y
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$null$5$WriteActivity(dialog, view);
            }
        });
    }

    public /* synthetic */ void lambda$null$5$WriteActivity(Dialog dialog, View view) {
        dialog.dismiss();
        backHome(true);
    }

    private void setImageData() {
        Bitmap bitmap = this.writeBitmap;
        if (bitmap == null) {
            return;
        }
        this.writeImgData = ImgUtil.gray2Binary(bitmap, this.badgeColor);
    }

    private void initTX() {
        if (this.txManager == null) {
            this.txManager = new BaseTxManager();
        }
        if (this.nfcAdapter == null) {
            this.nfcAdapter = NfcAdapter.getDefaultAdapter(this);
        }
        if (this.bluetoothAdapter == null) {
            this.txManager.initBle(getApplication());
            this.bluetoothAdapter = BleManager.getInstance().getBluetoothAdapter();
        }
        if (this.locationManager == null && ContextCompat.checkSelfPermission(this, Permission.ACCESS_FINE_LOCATION) == 0) {
            this.locationManager = (LocationManager) getSystemService("location");
        }
    }

    @OnClick({R.id.imgBack, R.id.imgHome, R.id.btnSave, R.id.btnWrite})
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.btnSave /* 2131296402 */:
                if (this.isRead || this.isSearch || this.isConnect || this.isStart || this.isWrite) {
                    showTipToast(getString(R.string.write_error_hint1));
                    break;
                } else {
                    AsyncTask.execute(new Runnable() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$WriteActivity$3-OjadH3sQo3ZHpXkDLcacQpj6g
                        @Override // java.lang.Runnable
                        public final void run() throws Throwable {
                            this.f$0.lambda$onViewClicked$9$WriteActivity();
                        }
                    });
                    break;
                }
                break;
            case R.id.btnWrite /* 2131296404 */:
                if (this.isRead || this.isSearch || this.isConnect || this.isStart || this.isWrite) {
                    showTipToast(getString(R.string.write_error_hint1));
                    break;
                } else {
                    AsyncTask.execute(new Runnable() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$WriteActivity$ecRB4SP3meLQAqqIEzEbX5nKCm8
                        @Override // java.lang.Runnable
                        public final void run() throws Throwable {
                            this.f$0.lambda$onViewClicked$12$WriteActivity();
                        }
                    });
                    break;
                }
                break;
            case R.id.imgBack /* 2131296583 */:
                if (this.isRead || this.isSearch || this.isConnect || this.isStart || this.isWrite) {
                    showTipToast(getString(R.string.write_error_hint));
                    break;
                } else {
                    finishActivity();
                    break;
                }
            case R.id.imgHome /* 2131296585 */:
                if (this.isRead || this.isSearch || this.isConnect || this.isStart || this.isWrite) {
                    showTipToast(getString(R.string.write_error_hint));
                    break;
                } else if (this.isImageSave) {
                    backHome(true);
                    break;
                } else {
                    showErrorDialog(getString(R.string.dialog_tip), getString(R.string.dialog_tip_info1), false);
                    break;
                }
        }
    }

    public /* synthetic */ void lambda$null$7$WriteActivity() {
        ApiUtil.getInstance().getLoadingUtil().showProgressDialog(this, "");
    }

    public /* synthetic */ void lambda$onViewClicked$9$WriteActivity() throws Throwable {
        runOnUiThread(new Runnable() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$WriteActivity$EPfdRsqbpWFXchPyNUD8igDN3Zs
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$null$7$WriteActivity();
            }
        });
        saveModelData(true);
        runOnUiThread(new Runnable() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$WriteActivity$_BDOZ9bscbXtHajg0zPkfKcsjR4
            @Override // java.lang.Runnable
            public final void run() {
                ApiUtil.getInstance().getLoadingUtil().dismissProgressDialog();
            }
        });
    }

    public /* synthetic */ void lambda$null$10$WriteActivity() {
        ApiUtil.getInstance().getLoadingUtil().showProgressDialog(this, "");
    }

    public /* synthetic */ void lambda$onViewClicked$12$WriteActivity() throws Throwable {
        runOnUiThread(new Runnable() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$WriteActivity$v2gY2WXerq9AlIlQvTQ3SvfjaYk
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$null$10$WriteActivity();
            }
        });
        saveModelData(false);
        runOnUiThread(new Runnable() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$WriteActivity$XiY5tkdl8EmhTVDKHekGCtXBMx4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$null$11$WriteActivity();
            }
        });
    }

    public /* synthetic */ void lambda$null$11$WriteActivity() {
        ApiUtil.getInstance().getLoadingUtil().dismissProgressDialog();
        checkPermission();
    }

    private void backHome(boolean z) {
        if (z) {
            AppManager.getAppManager().finishAllActivity();
            launchActivity(HomeActivity.class);
        } else {
            AppManager.getAppManager().appExitLogin(HomeActivity.class);
        }
    }

    private void saveModelData(boolean z) throws Throwable {
        if (Constants.editSaveModel == null) {
            showTipToast(getString(R.string.write_save_error));
            return;
        }
        if (!this.isImageSave) {
            List<IDoodleItem> allItem = Constants.editSaveModel.getAllItem();
            if (allItem == null) {
                showTipToast(getString(R.string.write_save_error));
                return;
            }
            Bitmap bitmapScaleBitmap = ScaleBitmapUtils.scaleBitmap(((DoodleBg) Constants.editSaveModel.getAllItem().get(0)).getBitmap(), this.writeWidth * 4, this.writeHeight * 4);
            String str = System.currentTimeMillis() + ".png";
            byte[] bitmapToDatabase = FileCompressUtil.getInstance().getBitmapToDatabase(FileCompressUtil.getInstance().getBitmapFromPath(FileCompressUtil.getInstance().compressImgSync(this, FileCompressUtil.getInstance().saveBitmapToPath(this, bitmapScaleBitmap, str), 100, str)));
            Bitmap bitmapScaleBitmap2 = ScaleBitmapUtils.scaleBitmap(Constants.editModelImage, this.writeWidth * 4, this.writeHeight * 4);
            String str2 = System.currentTimeMillis() + ".png";
            byte[] bitmapToDatabase2 = FileCompressUtil.getInstance().getBitmapToDatabase(FileCompressUtil.getInstance().getBitmapFromPath(FileCompressUtil.getInstance().compressImgSync(this, FileCompressUtil.getInstance().saveBitmapToPath(this, bitmapScaleBitmap2, str2), 100, str2)));
            if (Constants.editSelectModel == null || !Constants.IsModelThemeIn.booleanValue()) {
                BadgeBean badgeBean = this.baseBadgeBean;
                if (badgeBean == null) {
                    saveDoodleLists(allItem, "");
                    BadgeBean badgeBean2 = new BadgeBean();
                    badgeBean2.setImageName(this.imageName);
                    badgeBean2.setSize(this.writeSize);
                    badgeBean2.setColor(this.writeColor);
                    badgeBean2.setBitmapStart(bitmapToDatabase);
                    badgeBean2.setBitmapEnd(bitmapToDatabase2);
                    badgeBean2.setTime(String.valueOf(System.currentTimeMillis()));
                    BadgeBeanDaoUse.insert(badgeBean2);
                } else {
                    DoodleBeanDaoUse.deleteAllByName(badgeBean.getImageName());
                    saveDoodleLists(allItem, this.baseBadgeBean.getImageName());
                    this.baseBadgeBean.setBitmapStart(bitmapToDatabase);
                    this.baseBadgeBean.setBitmapEnd(bitmapToDatabase2);
                    this.baseBadgeBean.setTime(String.valueOf(System.currentTimeMillis()));
                    BadgeBeanDaoUse.update(this.baseBadgeBean);
                }
            } else {
                BadgeBean badgeBean3 = Constants.editSelectModel;
                if (this.modify) {
                    DoodleBeanDaoUse.deleteAllByName(badgeBean3.getImageName());
                    saveDoodleLists(allItem, badgeBean3.getImageName());
                    badgeBean3.setBitmapStart(bitmapToDatabase);
                    badgeBean3.setBitmapEnd(bitmapToDatabase2);
                    badgeBean3.setTime(String.valueOf(System.currentTimeMillis()));
                    BadgeBeanDaoUse.update(badgeBean3);
                } else {
                    badgeBean3.setTime(String.valueOf(System.currentTimeMillis()));
                    BadgeBeanDaoUse.update(badgeBean3);
                }
            }
        }
        this.isImageSave = true;
        showTipToast(getString(R.string.write_save_success));
        EventBus.getDefault().post(new MessageEvent("刷新主题"));
        if (z) {
            backHome(false);
        }
        FileCompressUtil.getInstance().clearCompressPath();
    }

    private void saveDoodleLists(List<IDoodleItem> list, String str) {
        if (Tools.isNull(str)) {
            str = this.imageName;
        }
        for (IDoodleItem iDoodleItem : list) {
            if (iDoodleItem.getPen() != DoodlePen.BG) {
                DoodleBean doodleBean = new DoodleBean();
                doodleBean.setImageName(str);
                doodleBean.setMSize(iDoodleItem.getSize());
                doodleBean.setMColor(iDoodleItem.getColor() == null ? -1 : ((DoodleColor) iDoodleItem.getColor()).getColor());
                doodleBean.setMLocationX(iDoodleItem.getLocation().x);
                doodleBean.setMLocationY(iDoodleItem.getLocation().y);
                doodleBean.setMPivotX(iDoodleItem.getPivotX());
                doodleBean.setMPivotY(iDoodleItem.getPivotY());
                doodleBean.setMRotate(iDoodleItem.getItemRotate());
                doodleBean.setMIsNeedClipOutside(iDoodleItem.isNeedClipOutside());
                doodleBean.setMScale(iDoodleItem.getScale());
                if (iDoodleItem.getPen() == DoodlePen.TEXT) {
                    doodleBean.setMIDoodlePen(1);
                    DoodleText doodleText = (DoodleText) iDoodleItem;
                    doodleBean.setMText(doodleText.getText1());
                    doodleBean.setMText0(doodleText.getText0());
                    doodleBean.setMTextStyle(doodleText.getTypeface());
                    doodleBean.setMTextBgColor(doodleText.getBgColor());
                    doodleBean.setMTextBold(doodleText.getBold());
                    doodleBean.setMTextItalic(doodleText.getItalic());
                    doodleBean.setMTextUnderline(doodleText.getUnderline());
                } else if (iDoodleItem.getPen() == DoodlePen.BITMAP) {
                    doodleBean.setMIDoodlePen(2);
                    String str2 = System.currentTimeMillis() + ".png";
                    doodleBean.setMBitmap(FileCompressUtil.getInstance().getBitmapToDatabase(FileCompressUtil.getInstance().getBitmapFromPath(FileCompressUtil.getInstance().compressImgSync(this, FileCompressUtil.getInstance().saveBitmapToPath(this, ((DoodleBitmap) iDoodleItem).getBitmap(), str2), 100, str2))));
                } else if (iDoodleItem.getPen() == DoodlePen.QRCODE) {
                    doodleBean.setMIDoodlePen(3);
                    String str3 = System.currentTimeMillis() + ".png";
                    DoodleQRCode doodleQRCode = (DoodleQRCode) iDoodleItem;
                    doodleBean.setMBitmap(FileCompressUtil.getInstance().getBitmapToDatabase(FileCompressUtil.getInstance().getBitmapFromPath(FileCompressUtil.getInstance().compressImgSync(this, FileCompressUtil.getInstance().saveBitmapToPath(this, doodleQRCode.getBitmap(), str3), 100, str3))));
                    doodleBean.setMText(doodleQRCode.getText());
                    doodleBean.setBgColor(doodleQRCode.getBgColor());
                    doodleBean.setFgColor(doodleQRCode.getFgColor());
                } else if (iDoodleItem.getPen() == DoodlePen.BARCODE) {
                    doodleBean.setMIDoodlePen(4);
                    String str4 = System.currentTimeMillis() + ".png";
                    DoodleBarCode doodleBarCode = (DoodleBarCode) iDoodleItem;
                    doodleBean.setMBitmap(FileCompressUtil.getInstance().getBitmapToDatabase(FileCompressUtil.getInstance().getBitmapFromPath(FileCompressUtil.getInstance().compressImgSync(this, FileCompressUtil.getInstance().saveBitmapToPath(this, doodleBarCode.getBitmap(), str4), 100, str4))));
                    doodleBean.setMText(doodleBarCode.getText());
                    doodleBean.setBgColor(doodleBarCode.getBgColor());
                    doodleBean.setFgColor(doodleBarCode.getFgColor());
                } else if (iDoodleItem.getPen() == DoodlePen.SHAPE) {
                    doodleBean.setMIDoodlePen(5);
                    String str5 = System.currentTimeMillis() + ".png";
                    DoodleShape1 doodleShape1 = (DoodleShape1) iDoodleItem;
                    doodleBean.setMBitmap(FileCompressUtil.getInstance().getBitmapToDatabase(FileCompressUtil.getInstance().getBitmapFromPath(FileCompressUtil.getInstance().compressImgSync(this, FileCompressUtil.getInstance().saveBitmapToPath(this, doodleShape1.getBitmap(), str5), 100, str5))));
                    doodleBean.setFgColor(doodleShape1.getFgColor());
                    doodleBean.setShape1(doodleShape1.getShape1());
                    doodleBean.setWidth(doodleShape1.getWidth());
                    doodleBean.setHeight(doodleShape1.getHeight());
                    doodleBean.setEffects(doodleShape1.getEffects());
                }
                DoodleBeanDaoUse.insert(doodleBean);
            }
        }
    }

    private void checkPermission() {
        StringBuilder sb = new StringBuilder();
        NfcAdapter nfcAdapter = this.nfcAdapter;
        if (nfcAdapter == null || !nfcAdapter.isEnabled()) {
            sb.append(getString(R.string.write_nfc));
            sb.append("、");
        }
        BluetoothAdapter bluetoothAdapter = this.bluetoothAdapter;
        if (bluetoothAdapter == null || !bluetoothAdapter.isEnabled()) {
            sb.append(getString(R.string.write_bluetooth));
            sb.append("、");
        }
        LocationManager locationManager = this.locationManager;
        if (locationManager == null || (!locationManager.isProviderEnabled("gps") && !this.locationManager.isProviderEnabled("network"))) {
            sb.append(getString(R.string.write_location));
            sb.append("、");
        }
        if (!Tools.isNull(sb.toString())) {
            showTipToast(sb.toString().substring(0, sb.toString().length() - 1) + getString(R.string.write_not_available));
            return;
        }
        showStartNFCDialog();
        readNFC();
    }

    private void showStartNFCDialog() {
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_start_nfc_item, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tvCancel);
        this.nfcDialog = new BottomSheetDialog(this, R.style.CustomBottomSheetStyle);
        this.nfcDialog.setContentView(viewInflate);
        this.nfcDialog.setCanceledOnTouchOutside(false);
        this.nfcDialog.setCancelable(false);
        this.nfcDialog.show();
        textView.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$WriteActivity$zx77wKvhzuTEQqwvUUIDEocYtXA
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showStartNFCDialog$13$WriteActivity(view);
            }
        });
    }

    public /* synthetic */ void lambda$showStartNFCDialog$13$WriteActivity(View view) {
        this.nfcDialog.dismiss();
        clearNFCCallback();
    }

    private void dismissNFCDialog() {
        BottomSheetDialog bottomSheetDialog = this.nfcDialog;
        if (bottomSheetDialog != null) {
            bottomSheetDialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearNFCCallback() {
        if (this.readerCallback != null) {
            this.readerCallback = null;
            this.nfcAdapter.enableReaderMode(this, null, 1, new Bundle());
        }
    }

    private void initBLETXReceive() {
        this.onDataReceivedTag = new OnDataReceivedTag() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$WriteActivity$h5fuse2w8mW2LTE1hlzESuNBHIU
            @Override // cn.highlight.tx.listener.OnDataReceivedTag
            public final void onData(byte[] bArr) {
                this.f$0.lambda$initBLETXReceive$15$WriteActivity(bArr);
            }
        };
    }

    public /* synthetic */ void lambda$initBLETXReceive$15$WriteActivity(byte[] bArr) {
        String strByte2HexStr;
        String strByte2HexStr2 = HexUtils.byte2HexStr(bArr) == null ? "" : HexUtils.byte2HexStr(bArr);
        if (strByte2HexStr2 == null) {
            return;
        }
        String strSubstring = strByte2HexStr2.substring(4, 6);
        String strSubstring2 = strByte2HexStr2.substring(6, 8);
        char c = 65535;
        int iHashCode = strSubstring.hashCode();
        if (iHashCode != 1568) {
            if (iHashCode != 1570) {
                if (iHashCode == 1571 && strSubstring.equals(NDCMD.M14)) {
                    c = 2;
                }
            } else if (strSubstring.equals(NDCMD.M13)) {
                c = 1;
            }
        } else if (strSubstring.equals(NDCMD.M11)) {
            c = 0;
        }
        if (c == 0) {
            if (strSubstring2.equals("00")) {
                this.isStart = false;
                addInfo(getResources().getString(R.string.write_send_data));
                Thread thread = this.thread;
                if (thread != null) {
                    thread.interrupt();
                }
                this.thread = new Thread(new Runnable() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$WriteActivity$Xs-7if-sH7fJOqB40PE_UCI7UdQ
                    @Override // java.lang.Runnable
                    public final void run() throws InterruptedException {
                        this.f$0.lambda$null$14$WriteActivity();
                    }
                });
                this.thread.start();
                return;
            }
            this.isStart = false;
            addInfo(getResources().getString(R.string.write_unknown_Card));
            new Handler().postDelayed(new Runnable() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$WriteActivity$l7bH2cqpt2hztStgm_zXZKnPBu8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.disConnectBLE();
                }
            }, 1500L);
            return;
        }
        if (c != 1) {
            if (c != 2) {
                return;
            }
            refreshUI(0);
            this.isExit = true;
            return;
        }
        if (this.badgeColor.equals("黑白红")) {
            strByte2HexStr = HexUtils.byte2HexStr(CRC32Utils.toByteArray(CRC32Utils.crc32(this.writeImgData[1], CRC32Utils.crc32(this.writeImgData[0]))));
        } else {
            strByte2HexStr = HexUtils.byte2HexStr(CRC32Utils.toByteArray(CRC32Utils.crc32(this.writeImgData[0])));
        }
        String strSubstring3 = strByte2HexStr2.substring(8, 16);
        Log.e("TAG", "initBLETXReceive: " + strSubstring3 + "--" + strByte2HexStr);
        if (this.sendError >= 2) {
            this.sendError = 0;
            refreshUI(1);
            this.isExit = true;
        } else if (strByte2HexStr != null && strByte2HexStr.equals(strSubstring3)) {
            this.sendError = 0;
            sendEndData();
        } else {
            this.sendError++;
            runOnUiThread(new Runnable() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$WriteActivity$3a-X46KiqZUUGGSlOr_rNvA-4Ls
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.sendStatrData();
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$null$14$WriteActivity() throws java.lang.InterruptedException {
        /*
            r6 = this;
            r0 = 0
            r6.isExit = r0
            java.lang.String r1 = r6.badgeColor
            int r2 = r1.hashCode()
            r3 = 1290700(0x13b1cc, float:1.808656E-39)
            r4 = 2
            r5 = 1
            if (r2 == r3) goto L2f
            r0 = 40044118(0x2630656, float:1.6679144E-37)
            if (r2 == r0) goto L25
            r0 = 1241408302(0x49fe632e, float:2083941.8)
            if (r2 == r0) goto L1b
            goto L38
        L1b:
            java.lang.String r0 = "黑白红黄"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L38
            r0 = 2
            goto L39
        L25:
            java.lang.String r0 = "黑白红"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L38
            r0 = 1
            goto L39
        L2f:
            java.lang.String r2 = "黑白"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L38
            goto L39
        L38:
            r0 = -1
        L39:
            if (r0 == 0) goto L48
            if (r0 == r5) goto L44
            if (r0 == r4) goto L40
            goto L4b
        L40:
            r6.sendImageDataBWYR()
            goto L4b
        L44:
            r6.sendImageDataBWR()
            goto L4b
        L48:
            r6.sendImageDataBW()
        L4b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.highlight.work_card_write.activity.WriteActivity.lambda$null$14$WriteActivity():void");
    }

    private void readNFC() {
        this.readerCallback = new NfcAdapter.ReaderCallback() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$WriteActivity$Sk08qk88tYuIxowI2ab4lBP-TQc
            @Override // android.nfc.NfcAdapter.ReaderCallback
            public final void onTagDiscovered(Tag tag) throws IOException {
                this.f$0.lambda$readNFC$16$WriteActivity(tag);
            }
        };
        NfcAdapter nfcAdapter = this.nfcAdapter;
        if (nfcAdapter == null) {
            return;
        }
        nfcAdapter.enableReaderMode(this, this.readerCallback, 1, new Bundle());
    }

    public /* synthetic */ void lambda$readNFC$16$WriteActivity(Tag tag) throws IOException {
        try {
            if (!this.isRead && !this.isSearch && !this.isConnect && !this.isStart && !this.isWrite) {
                this.isRead = true;
                IsoDep isoDep = IsoDep.get(tag);
                isoDep.connect();
                String specificationByHardware = BadgeSpecificationUtils.getSpecificationByHardware(((String) Objects.requireNonNull(HexUtils.byte2HexStr(isoDep.transceive(new byte[]{-48, -47, 3, 0, 1})))).substring(0, 2));
                if (Tools.isNull(specificationByHardware)) {
                    return;
                }
                String[] strArrSplit = specificationByHardware.split("-");
                String str = strArrSplit[0];
                String str2 = strArrSplit[1];
                this.badgeColor = strArrSplit[2];
                Log.e("TAG", "readNFC: " + specificationByHardware);
                if (!str2.equals(this.writeSize)) {
                    this.isRead = false;
                    dismissNFCDialog();
                    clearNFCCallback();
                    showErrorDialog(getString(R.string.write_error_hint2), getString(R.string.dialog_tip_info2), true);
                    return;
                }
                setImageData();
                if (this.writeImgData == null) {
                    return;
                }
                if (str.equals("无源")) {
                    this.isRead = false;
                    dismissNFCDialog();
                    addInfo("");
                    sendData(isoDep);
                    return;
                }
                this.isNormal = false;
                this.isRead = false;
                dismissNFCDialog();
                clearNFCCallback();
                addInfo("");
                serachBLE(tag);
                return;
            }
            showTipToast(getString(R.string.write_error_hint1));
        } catch (Exception e) {
            e.printStackTrace();
            this.isRead = false;
        }
    }

    private void serachBLE(Tag tag) {
        if (this.isRead || this.isSearch || this.isConnect || this.isWrite) {
            return;
        }
        addInfo(getResources().getString(R.string.write_search_for_bluetooth_devices));
        this.isSearch = true;
        final String strByte2HexStr = Tools.isNull(HexUtils.byte2HexStr(tag.getId())) ? "" : HexUtils.byte2HexStr(tag.getId());
        this.txManager.startScanBle(new BleScanCallback() { // from class: cn.highlight.work_card_write.activity.WriteActivity.1
            @Override // cn.highlight.tx.ble.callback.BleScanPresenterImp
            public void onScanStarted(boolean z) {
            }

            @Override // cn.highlight.tx.ble.callback.BleScanCallback
            public void onScanFinished(List<BleDevice> list) {
                String str;
                WriteActivity.this.isSearch = false;
                Iterator<BleDevice> it = list.iterator();
                boolean z = false;
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    BleDevice next = it.next();
                    String strByte2HexStr2 = HexUtils.byte2HexStr(next.getScanRecord());
                    String strSubstring = Tools.isNull(strByte2HexStr2) ? "" : strByte2HexStr2.substring(14, 28);
                    String name = next.getDevice().getName();
                    if (!Tools.isNull(name) && name.equals("TAG_SR9837") && (str = strByte2HexStr) != null && str.equals(strSubstring)) {
                        z = true;
                    }
                }
                if (z) {
                    return;
                }
                WriteActivity.this.addInfo("");
                WriteActivity writeActivity = WriteActivity.this;
                writeActivity.showErrorDialog(writeActivity.getString(R.string.write_no_device_found), WriteActivity.this.getString(R.string.dialog_tip_info3), true);
                WriteActivity.this.handler.removeMessages(0);
            }

            @Override // cn.highlight.tx.ble.callback.BleScanPresenterImp
            public void onScanning(BleDevice bleDevice) {
                String str;
                String strByte2HexStr2 = HexUtils.byte2HexStr(bleDevice.getScanRecord());
                String strSubstring = strByte2HexStr2 == null ? "" : strByte2HexStr2.substring(14, 28);
                if (bleDevice.getDevice().getName().equals("TAG_SR9837") && (str = strByte2HexStr) != null && str.equals(strSubstring)) {
                    WriteActivity.this.txManager.cancelScan();
                    WriteActivity.this.connectBLE(bleDevice);
                }
            }
        });
        Handler handler = this.handler;
        if (handler != null) {
            handler.sendEmptyMessageDelayed(0, OkHttpUtils.DEFAULT_MILLISECONDS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void connectBLE(BleDevice bleDevice) {
        addInfo(getResources().getString(R.string.write_connecting_devices));
        this.isConnect = true;
        this.txManager.conn(bleDevice, new OnConnStatus() { // from class: cn.highlight.work_card_write.activity.WriteActivity.2
            @Override // cn.highlight.tx.listener.OnConnStatus
            public void connSuccess() {
                WriteActivity.this.isSearch = false;
                WriteActivity.this.isConnect = true;
                WriteActivity writeActivity = WriteActivity.this;
                writeActivity.addInfo(writeActivity.getResources().getString(R.string.write_connection_successful));
                WriteActivity.this.sendStatrData();
            }

            @Override // cn.highlight.tx.listener.OnConnStatus
            public void connFail() {
                WriteActivity.this.isSearch = false;
                WriteActivity.this.isConnect = false;
                WriteActivity writeActivity = WriteActivity.this;
                writeActivity.showErrorDialog(writeActivity.getString(R.string.write_connection_failed), WriteActivity.this.getString(R.string.write_connection_failed), true);
                WriteActivity.this.txManager.disConn();
                WriteActivity.this.addInfo("");
            }

            @Override // cn.highlight.tx.listener.OnConnStatus
            public void disConnected() {
                WriteActivity.this.isSearch = false;
                WriteActivity.this.isConnect = false;
                WriteActivity.this.isStart = false;
                if (!WriteActivity.this.isNormal) {
                    WriteActivity.this.clearHandler();
                    WriteActivity writeActivity = WriteActivity.this;
                    writeActivity.showErrorDialog(writeActivity.getString(R.string.write_connection_disconnected), WriteActivity.this.getString(R.string.dialog_tip_info4), true);
                    WriteActivity.this.addInfo("", 1000);
                }
                WriteActivity.this.isWrite = false;
                WriteActivity.this.isExit = true;
                WriteActivity.this.exitProgress();
                WriteActivity.this.addInfo("");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendStatrData() {
        this.isStart = true;
        this.txManager.setOnDataReceivedTag(this.onDataReceivedTag);
        final byte[] bArr = {-91, 0, CmdCenter.CMD_getCabinetLockStatus, CmdCenter.CMD_getCabinetLockStatus};
        new Handler().postDelayed(new Runnable() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$WriteActivity$99RMnWfrtRtdp6FQRWp0IJeQhUQ
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendStatrData$17$WriteActivity(bArr);
            }
        }, 300L);
        new Handler().postDelayed(new Runnable() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$WriteActivity$3HRYHzo7PJFFviuqUX-HgukwwXg
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.checkWrite();
            }
        }, 2300L);
    }

    public /* synthetic */ void lambda$sendStatrData$17$WriteActivity(byte[] bArr) {
        this.txManager.writeData(bArr, new BleWriteCallbackHighlight() { // from class: cn.highlight.work_card_write.activity.WriteActivity.3
            @Override // cn.highlight.tx.ble.callback.BleWriteCallbackHighlight
            public void onWriteFailure(BleException bleException) {
            }

            @Override // cn.highlight.tx.ble.callback.BleWriteCallbackHighlight
            public void onWriteSuccess(int i, int i2, byte[] bArr2) {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkWrite() {
        if (this.isWrite) {
            return;
        }
        disConnectBLE();
    }

    private void sendImageDataBW() throws InterruptedException {
        if (this.isExits) {
            return;
        }
        Log.e("TAG", "sendImageDataBW: 黑白数据");
        final CopyOnWriteArrayList<byte[]> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        this.isWrite = true;
        int[] iArr = {0};
        initProcess();
        byte[] bArr = this.writeImgData[0];
        int length = bArr.length % 220 == 0 ? bArr.length / 220 : (bArr.length / 220) + 1;
        int i = 0;
        while (i < length) {
            if (this.isExit) {
                return;
            }
            int i2 = length - 1;
            int length2 = i < i2 ? 220 : bArr.length - (i2 * 220);
            final byte[] bArr2 = new byte[length2 + 7];
            bArr2[0] = -91;
            bArr2[1] = (byte) (length2 + 3);
            bArr2[2] = CmdCenter.CMD_setCabinetSensor;
            bArr2[3] = 0;
            int i3 = 220 * i;
            bArr2[4] = HexUtils.intToBytes(i3)[0];
            bArr2[5] = HexUtils.intToBytes(i3)[1];
            for (int i4 = 6; i4 < bArr2.length - 1; i4++) {
                int i5 = (i4 - 6) + i3;
                if (i5 < bArr.length) {
                    bArr2[i4] = bArr[i5];
                }
            }
            bArr2[bArr2.length - 1] = HexUtils.GetCheckSum(bArr2);
            iArr[0] = iArr[0] + bArr2.length;
            setCurrentProcess(iArr[0]);
            Log.e("TAG", "sendImageDataBW: " + HexUtils.byte2HexStr(bArr2));
            this.txManager.writeData(bArr2, new BleWriteCallbackHighlight() { // from class: cn.highlight.work_card_write.activity.WriteActivity.4
                @Override // cn.highlight.tx.ble.callback.BleWriteCallbackHighlight
                public void onWriteSuccess(int i6, int i7, byte[] bArr3) {
                    Log.e("TAG", "sendImageDataBW: true");
                }

                @Override // cn.highlight.tx.ble.callback.BleWriteCallbackHighlight
                public void onWriteFailure(BleException bleException) {
                    Log.e("TAG", "sendImageDataBW: false");
                    copyOnWriteArrayList.add(bArr2);
                }
            });
            try {
                Thread.sleep(30L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            i++;
        }
        this.isWrite = false;
        dataReSend(copyOnWriteArrayList);
    }

    private void sendImageDataBWR() throws InterruptedException {
        if (this.isExits) {
            return;
        }
        Log.e("TAG", "sendImageDataBWR: 黑白红数据");
        final CopyOnWriteArrayList<byte[]> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        this.isWrite = true;
        int i = 220;
        int[] iArr = {0};
        initProcess();
        byte[] bArr = this.writeImgData[0];
        int length = bArr.length % 220 == 0 ? bArr.length / 220 : (bArr.length / 220) + 1;
        int i2 = 0;
        while (i2 < length) {
            if (this.isExit) {
                return;
            }
            int i3 = length - 1;
            int length2 = i2 < i3 ? 220 : bArr.length - (i3 * 220);
            final byte[] bArr2 = new byte[length2 + 7];
            bArr2[0] = -91;
            bArr2[1] = (byte) (length2 + 3);
            bArr2[2] = CmdCenter.CMD_setCabinetSensor;
            bArr2[3] = 0;
            int i4 = 220 * i2;
            bArr2[4] = HexUtils.intToBytes(i4)[0];
            bArr2[5] = HexUtils.intToBytes(i4)[1];
            for (int i5 = 6; i5 < bArr2.length - 1; i5++) {
                int i6 = (i5 - 6) + i4;
                if (i6 < bArr.length) {
                    bArr2[i5] = bArr[i6];
                }
            }
            bArr2[bArr2.length - 1] = HexUtils.GetCheckSum(bArr2);
            iArr[0] = iArr[0] + bArr2.length;
            setCurrentProcess(iArr[0]);
            Log.e("TAG", "sendImageDataBWR: " + HexUtils.byte2HexStr(bArr2));
            this.txManager.writeData(bArr2, new BleWriteCallbackHighlight() { // from class: cn.highlight.work_card_write.activity.WriteActivity.5
                @Override // cn.highlight.tx.ble.callback.BleWriteCallbackHighlight
                public void onWriteSuccess(int i7, int i8, byte[] bArr3) {
                    Log.e("TAG", "sendImageDataBWR: true");
                }

                @Override // cn.highlight.tx.ble.callback.BleWriteCallbackHighlight
                public void onWriteFailure(BleException bleException) {
                    Log.e("TAG", "sendImageDataBWR: false");
                    copyOnWriteArrayList.add(bArr2);
                }
            });
            try {
                Thread.sleep(30L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            i2++;
        }
        byte[] bArr3 = this.writeImgData[1];
        int length3 = bArr3.length % 220 == 0 ? bArr3.length / 220 : (bArr3.length / 220) + 1;
        int i7 = 0;
        while (i7 < length3) {
            if (this.isExit) {
                return;
            }
            int i8 = length3 - 1;
            int length4 = i7 < i8 ? 220 : bArr3.length - (i8 * 220);
            final byte[] bArr4 = new byte[length4 + 7];
            bArr4[0] = -91;
            bArr4[1] = (byte) (length4 + 3);
            bArr4[2] = CmdCenter.CMD_setCabinetSensor;
            bArr4[3] = 1;
            int i9 = i * i7;
            bArr4[4] = HexUtils.intToBytes(i9)[0];
            bArr4[5] = HexUtils.intToBytes(i9)[1];
            for (int i10 = 6; i10 < bArr4.length - 1; i10++) {
                int i11 = (i10 - 6) + i9;
                if (i11 < bArr3.length) {
                    bArr4[i10] = bArr3[i11];
                }
            }
            bArr4[bArr4.length - 1] = HexUtils.GetCheckSum(bArr4);
            iArr[0] = iArr[0] + bArr4.length;
            setCurrentProcess(iArr[0]);
            this.txManager.writeData(bArr4, new BleWriteCallbackHighlight() { // from class: cn.highlight.work_card_write.activity.WriteActivity.6
                @Override // cn.highlight.tx.ble.callback.BleWriteCallbackHighlight
                public void onWriteSuccess(int i12, int i13, byte[] bArr5) {
                }

                @Override // cn.highlight.tx.ble.callback.BleWriteCallbackHighlight
                public void onWriteFailure(BleException bleException) {
                    copyOnWriteArrayList.add(bArr4);
                }
            });
            try {
                Thread.sleep(30L);
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            }
            i7++;
            i = 220;
        }
        this.isWrite = false;
        dataReSend(copyOnWriteArrayList);
    }

    private void sendImageDataBWYR() throws InterruptedException {
        if (this.isExits) {
            return;
        }
        Log.e("TAG", "sendImageDataBWYR: 黑白红黄数据");
        final CopyOnWriteArrayList<byte[]> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        this.isWrite = true;
        int[] iArr = {0};
        initProcess();
        byte[] bArr = this.writeImgData[0];
        int length = bArr.length % BuildConfig.VERSION_CODE == 0 ? bArr.length / BuildConfig.VERSION_CODE : (bArr.length / BuildConfig.VERSION_CODE) + 1;
        int i = 0;
        while (i < length) {
            if (this.isExit) {
                return;
            }
            int i2 = length - 1;
            int length2 = i < i2 ? BuildConfig.VERSION_CODE : bArr.length - (i2 * BuildConfig.VERSION_CODE);
            final byte[] bArr2 = new byte[length2 + 7];
            bArr2[0] = -91;
            bArr2[1] = (byte) (length2 + 3);
            bArr2[2] = CmdCenter.CMD_setCabinetSensor;
            bArr2[3] = 0;
            int i3 = BuildConfig.VERSION_CODE * i;
            bArr2[4] = HexUtils.intToBytes(i3)[0];
            bArr2[5] = HexUtils.intToBytes(i3)[1];
            for (int i4 = 6; i4 < bArr2.length - 1; i4++) {
                int i5 = (i4 - 6) + i3;
                if (i5 < bArr.length) {
                    bArr2[i4] = bArr[i5];
                }
            }
            bArr2[bArr2.length - 1] = HexUtils.GetCheckSum(bArr2);
            iArr[0] = iArr[0] + bArr2.length;
            setCurrentProcess(iArr[0]);
            Log.e("TAG", "sendImageDataBWYR: " + HexUtils.byte2HexStr(bArr2));
            this.txManager.writeData(bArr2, new BleWriteCallbackHighlight() { // from class: cn.highlight.work_card_write.activity.WriteActivity.7
                @Override // cn.highlight.tx.ble.callback.BleWriteCallbackHighlight
                public void onWriteSuccess(int i6, int i7, byte[] bArr3) {
                    Log.e("TAG", "sendImageDataBWYR: true");
                }

                @Override // cn.highlight.tx.ble.callback.BleWriteCallbackHighlight
                public void onWriteFailure(BleException bleException) {
                    Log.e("TAG", "sendImageDataBWYR: false");
                    copyOnWriteArrayList.add(bArr2);
                }
            });
            try {
                Thread.sleep(30L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            i++;
        }
        this.isWrite = false;
        dataReSend(copyOnWriteArrayList);
    }

    private void dataReSend(CopyOnWriteArrayList<byte[]> copyOnWriteArrayList) throws InterruptedException {
        Log.e("TAG", "dataReSend: 数据补发" + copyOnWriteArrayList.size());
        if (this.isExits) {
            return;
        }
        Iterator<byte[]> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            this.txManager.writeData(it.next(), new BleWriteCallbackHighlight() { // from class: cn.highlight.work_card_write.activity.WriteActivity.8
                @Override // cn.highlight.tx.ble.callback.BleWriteCallbackHighlight
                public void onWriteFailure(BleException bleException) {
                }

                @Override // cn.highlight.tx.ble.callback.BleWriteCallbackHighlight
                public void onWriteSuccess(int i, int i2, byte[] bArr) {
                }
            });
            try {
                Thread.sleep(30L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        setCurrentProcess(this.progressBar.getMax());
        CheckData();
    }

    private void CheckData() {
        Log.e("TAG", "CheckData: 数据校验");
        if (this.isExits) {
            return;
        }
        this.txManager.writeData(new byte[]{-91, 0, 19, 19}, new AnonymousClass9());
    }

    /* renamed from: cn.highlight.work_card_write.activity.WriteActivity$9, reason: invalid class name */
    class AnonymousClass9 extends BleWriteCallbackHighlight {
        AnonymousClass9() {
        }

        @Override // cn.highlight.tx.ble.callback.BleWriteCallbackHighlight
        public void onWriteSuccess(int i, int i2, byte[] bArr) {
            Log.e("TAG", "CheckData: true");
        }

        @Override // cn.highlight.tx.ble.callback.BleWriteCallbackHighlight
        public void onWriteFailure(BleException bleException) {
            Log.e("TAG", "CheckData: false");
            WriteActivity.this.runOnUiThread(new Runnable() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$WriteActivity$9$c_Y_iBEGz0ZEjdoLSxDvsHjtxx0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onWriteFailure$0$WriteActivity$9();
                }
            });
        }

        public /* synthetic */ void lambda$onWriteFailure$0$WriteActivity$9() {
            WriteActivity.this.reSend();
        }
    }

    private void sendEndData() {
        Log.e("TAG", "sendEndData: 刷图");
        if (this.isExits) {
            return;
        }
        this.txManager.writeData(new byte[]{-91, 0, 20, 20}, new AnonymousClass10());
        refreshUI(0);
    }

    /* renamed from: cn.highlight.work_card_write.activity.WriteActivity$10, reason: invalid class name */
    class AnonymousClass10 extends BleWriteCallbackHighlight {
        AnonymousClass10() {
        }

        @Override // cn.highlight.tx.ble.callback.BleWriteCallbackHighlight
        public void onWriteSuccess(int i, int i2, byte[] bArr) {
            Log.e("TAG", "sendEndData: true");
        }

        @Override // cn.highlight.tx.ble.callback.BleWriteCallbackHighlight
        public void onWriteFailure(BleException bleException) {
            Log.e("TAG", "sendEndData: false");
            WriteActivity.this.runOnUiThread(new Runnable() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$WriteActivity$10$TaWJrQvZR187_rmWx4uv6FXSyKE
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onWriteFailure$0$WriteActivity$10();
                }
            });
        }

        public /* synthetic */ void lambda$onWriteFailure$0$WriteActivity$10() {
            WriteActivity.this.reSend();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reSend() {
        int i = this.sendError;
        if (i >= 2) {
            this.sendError = 0;
            refreshUI(1);
        } else {
            this.sendError = i + 1;
            sendStatrData();
        }
    }

    private void refreshUI(int i) {
        Handler handler = this.handler;
        if (handler != null) {
            if (i == 0) {
                handler.sendEmptyMessageDelayed(1, 2000L);
            } else {
                handler.sendEmptyMessageDelayed(3, 2000L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void disConnectBLE() {
        runOnUiThread(new Runnable() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$WriteActivity$J-IhwFuf5CgwP7UY1A3wALXAy60
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$disConnectBLE$18$WriteActivity();
            }
        });
    }

    public /* synthetic */ void lambda$disConnectBLE$18$WriteActivity() {
        this.txManager.disConn();
        this.isConnect = false;
    }

    private void sendData(IsoDep isoDep) throws InterruptedException, IOException {
        try {
            if (this.isExits) {
                return;
            }
            this.isWrite = true;
            char c = 3;
            char c2 = 4;
            String strByte2HexStr = HexUtils.byte2HexStr(isoDep.transceive(new byte[]{-48, -47, 0, 0, 0}));
            if (strByte2HexStr != null && strByte2HexStr.equals("9000")) {
                addInfo(getResources().getString(R.string.write_send_data));
                byte[] bArr = this.writeImgData[0];
                initProcess();
                int length = bArr.length % 248 == 0 ? bArr.length / 248 : (bArr.length / 248) + 1;
                int i = 0;
                int length2 = 0;
                while (i < length) {
                    byte[] bArr2 = new byte[253];
                    bArr2[0] = -48;
                    bArr2[1] = -47;
                    int i2 = length - 1;
                    bArr2[2] = i < i2 ? (byte) 1 : (byte) 2;
                    bArr2[c] = 0;
                    bArr2[c2] = (byte) (i < i2 ? 248 : bArr.length - (i2 * 248));
                    for (int i3 = 5; i3 < bArr2.length; i3++) {
                        int i4 = (i * 248) + (i3 - 5);
                        if (i4 < bArr.length) {
                            bArr2[i3] = bArr[i4];
                        }
                    }
                    isoDep.transceive(bArr2);
                    length2 += bArr2.length;
                    setCurrentProcess(length2);
                    i++;
                    c = 3;
                    c2 = 4;
                }
                byte[] bArr3 = this.writeImgData[1];
                int length3 = bArr3.length % 248 == 0 ? bArr3.length / 248 : (bArr3.length / 248) + 1;
                int i5 = 0;
                while (i5 < length3) {
                    byte[] bArr4 = new byte[253];
                    bArr4[0] = -48;
                    bArr4[1] = -47;
                    int i6 = length3 - 1;
                    bArr4[2] = i5 < i6 ? (byte) 4 : (byte) 5;
                    bArr4[3] = 0;
                    bArr4[4] = (byte) (i5 < i6 ? 248 : bArr3.length - (i6 * 248));
                    for (int i7 = 5; i7 < bArr4.length; i7++) {
                        int i8 = (i5 * 248) + (i7 - 5);
                        if (i8 < bArr3.length) {
                            bArr4[i7] = bArr3[i8];
                        }
                    }
                    isoDep.transceive(bArr4);
                    length2 += bArr4.length;
                    setCurrentProcess(length2);
                    i5++;
                }
                Thread.sleep(50L);
                isoDep.transceive(new byte[]{-48, -47, 3, 0, 0});
                this.handler.sendEmptyMessage(5);
                exitProgress();
                return;
            }
            addInfo(getResources().getString(R.string.write_unknown_Card));
        } catch (Exception e) {
            try {
                isoDep.close();
            } catch (IOException | SecurityException e2) {
                e2.printStackTrace();
            }
            e.printStackTrace();
            Log.e("ssss", e.getMessage());
            showErrorDialog(getString(R.string.write_send_error), getString(R.string.dialog_tip_info5), true);
            this.isWrite = false;
            exitProgress();
            addInfo("");
            stopSwipe();
            clearNFCCallback();
        }
    }

    private void stopTimer() {
        TimerTask timerTask = this.timerTask;
        if (timerTask != null) {
            timerTask.cancel();
            this.timerTask = null;
        }
        Timer timer = this.timer;
        if (timer != null) {
            timer.cancel();
            this.timer = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearHandler() {
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addInfo(final String str) {
        runOnUiThread(new Runnable() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$WriteActivity$tEN90Fo5ocMHBwmdIfih2ZKcbW4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$addInfo$19$WriteActivity(str);
            }
        });
    }

    public /* synthetic */ void lambda$addInfo$19$WriteActivity(String str) {
        TextView textView = this.tvProgress;
        if (textView != null) {
            textView.setVisibility(0);
            this.tvProgress.setText(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addInfo(final String str, final int i) {
        runOnUiThread(new Runnable() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$WriteActivity$vxavto3l-0O9qocdBwe3WK38NGY
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$addInfo$21$WriteActivity(str, i);
            }
        });
    }

    public /* synthetic */ void lambda$addInfo$21$WriteActivity(final String str, int i) {
        new Handler().postDelayed(new Runnable() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$WriteActivity$rhqhbjK8B7We4LDEOadT9m4924M
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$null$20$WriteActivity(str);
            }
        }, i);
    }

    public /* synthetic */ void lambda$null$20$WriteActivity(String str) {
        TextView textView = this.tvProgress;
        if (textView != null) {
            textView.setVisibility(0);
            this.tvProgress.setText(str);
        }
    }

    private void initProcess() {
        runOnUiThread(new Runnable() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$WriteActivity$e7mhoJyjOlANPdviL3mikvveIN8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$initProcess$22$WriteActivity();
            }
        });
    }

    public /* synthetic */ void lambda$initProcess$22$WriteActivity() {
        ZzHorizontalProgressBar zzHorizontalProgressBar;
        int length;
        if (this.tvProgress == null || (zzHorizontalProgressBar = this.progressBar) == null) {
            return;
        }
        zzHorizontalProgressBar.setVisibility(0);
        String str = this.badgeColor;
        char c = 65535;
        int iHashCode = str.hashCode();
        if (iHashCode != 1290700) {
            if (iHashCode != 40044118) {
                if (iHashCode == 1241408302 && str.equals("黑白红黄")) {
                    c = 1;
                }
            } else if (str.equals("黑白红")) {
                c = 2;
            }
        } else if (str.equals("黑白")) {
            c = 0;
        }
        if (c == 0 || c == 1) {
            length = this.writeImgData[0].length;
        } else if (c != 2) {
            length = 0;
        } else {
            byte[][] bArr = this.writeImgData;
            length = bArr[1].length + bArr[0].length;
        }
        this.progressBar.setMax(length + 1);
        this.progressBar.setProgress(0);
    }

    private void setCurrentProcess(final int i) {
        runOnUiThread(new Runnable() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$WriteActivity$n1QY2NJ5ovkBBJv7K0DdW6XMhSE
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setCurrentProcess$23$WriteActivity(i);
            }
        });
    }

    public /* synthetic */ void lambda$setCurrentProcess$23$WriteActivity(int i) {
        ZzHorizontalProgressBar zzHorizontalProgressBar;
        if (this.tvProgress == null || (zzHorizontalProgressBar = this.progressBar) == null) {
            return;
        }
        zzHorizontalProgressBar.setProgress(i);
        this.tvProgress.setText(getPercent2(this.progressBar.getProgress(), this.progressBar.getMax()));
    }

    public String getPercent2(int i, int i2) {
        double d = i * 1.0d;
        double d2 = i2 * 1.0d;
        return (d == 0.0d || d2 == 0.0d) ? "0%" : this.decimalFormat.format(d / d2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void exitProgress() {
        runOnUiThread(new Runnable() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$WriteActivity$pJ9UnK6Hov2Mc3V5AcQshVUiCG8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$exitProgress$24$WriteActivity();
            }
        });
    }

    public /* synthetic */ void lambda$exitProgress$24$WriteActivity() {
        ZzHorizontalProgressBar zzHorizontalProgressBar = this.progressBar;
        if (zzHorizontalProgressBar != null) {
            zzHorizontalProgressBar.setMax(0);
            this.progressBar.setProgress(0);
            this.progressBar.setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r6v0, types: [cn.highlight.work_card_write.activity.WriteActivity$12] */
    public void swipe() {
        stopSwipe();
        this.countDownTimer = new CountDownTimer(18000L, 1000L) { // from class: cn.highlight.work_card_write.activity.WriteActivity.12
            @Override // android.os.CountDownTimer
            public void onTick(long j) {
                WriteActivity writeActivity = WriteActivity.this;
                writeActivity.addInfo(String.format(writeActivity.getString(R.string.write_send_finished1), Long.valueOf(j / 1000)));
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                WriteActivity.this.addInfo("");
                WriteActivity.this.isWrite = false;
                WriteActivity.this.clearNFCCallback();
            }
        }.start();
    }

    private void stopSwipe() {
        CountDownTimer countDownTimer = this.countDownTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
            this.countDownTimer = null;
        }
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4 && keyEvent.getAction() == 0) {
            if (this.isRead || this.isSearch || this.isConnect || this.isStart || this.isWrite) {
                showTipToast(getString(R.string.write_error_hint));
                return true;
            }
            finishActivity();
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        NfcAdapter nfcAdapter = this.nfcAdapter;
        if (nfcAdapter != null) {
            nfcAdapter.disableForegroundDispatch(this);
        }
        disConnectBLE();
        this.isExits = true;
        this.isExit = true;
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.txManager.free();
        stopTimer();
    }
}
