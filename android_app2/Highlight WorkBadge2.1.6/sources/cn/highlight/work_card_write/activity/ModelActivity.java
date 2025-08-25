package cn.highlight.work_card_write.activity;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import cn.highlight.core.utils.CodeUtils;
import cn.highlight.core.utils.Tools;
import cn.highlight.lib_doodle.DoodleBitmap;
import cn.highlight.lib_doodle.DoodleColor;
import cn.highlight.lib_doodle.DoodleOnTouchGestureListener;
import cn.highlight.lib_doodle.DoodlePen;
import cn.highlight.lib_doodle.DoodleText;
import cn.highlight.lib_doodle.DoodleTouchDetector;
import cn.highlight.lib_doodle.DoodleView;
import cn.highlight.lib_doodle.IDoodle;
import cn.highlight.lib_doodle.IDoodleColor;
import cn.highlight.lib_doodle.IDoodleListener;
import cn.highlight.lib_doodle.IDoodlePen;
import cn.highlight.lib_doodle.IDoodleSelectableItem;
import cn.highlight.work_card_write.Constants;
import cn.highlight.work_card_write.R;
import cn.highlight.work_card_write.adapter.ModelBgAdapter;
import cn.highlight.work_card_write.adapter.ModelTextFontAdapter;
import cn.highlight.work_card_write.adapter.ModelTextStyleColorAdapter;
import cn.highlight.work_card_write.base.BaseActivity;
import cn.highlight.work_card_write.sp.ConfigSp;
import cn.highlight.work_card_write.util.BadgeSpecificationUtils;
import cn.highlight.work_card_write.util.ScaleBitmapUtils;
import com.gg.reader.api.protocol.gx.EnumG;
import com.google.android.material.tabs.TabLayout;
import java.io.File;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public class ModelActivity extends BaseActivity {

    @BindView(R.id.bgCancel)
    ImageView bgCancel;

    @BindView(R.id.bgRecyclerView)
    RecyclerView bgRecyclerView;

    @BindView(R.id.bgSure)
    ImageView bgSure;
    private Bitmap bitmap;

    @BindView(R.id.codeCancel)
    ImageView codeCancel;

    @BindView(R.id.codeName)
    TextView codeName;

    @BindView(R.id.codeSure)
    ImageView codeSure;

    @BindView(R.id.codeText)
    EditText codeText;

    @BindView(R.id.edit_color_black)
    TextView editColorBlack;

    @BindView(R.id.editColorLinear)
    LinearLayout editColorLinear;

    @BindView(R.id.edit_color_red)
    TextView editColorRed;

    @BindView(R.id.edit_color_white)
    TextView editColorWhite;

    @BindView(R.id.edit_color_yellow)
    TextView editColorYellow;

    @BindView(R.id.edit_size)
    TextView editSize;

    @BindView(R.id.imageAlbum)
    LinearLayout imageAlbum;

    @BindView(R.id.imageBarCode)
    LinearLayout imageBarCode;

    @BindView(R.id.imageCancel)
    ImageView imageCancel;

    @BindView(R.id.imageCodeView)
    LinearLayout imageCodeView;

    @BindView(R.id.imagePhoto)
    LinearLayout imagePhoto;

    @BindView(R.id.imageQrcode)
    LinearLayout imageQrcode;

    @BindView(R.id.image_back)
    ImageView image_back;

    @BindView(R.id.image_bottom)
    ImageView image_bottom;

    @BindView(R.id.image_delete)
    ImageView image_delete;

    @BindView(R.id.image_forward)
    ImageView image_forward;

    @BindView(R.id.image_top)
    ImageView image_top;

    @BindView(R.id.img_back)
    ImageView img_back;
    private IDoodle mDoodle;
    private DoodleView mDoodleView;

    @BindView(R.id.doodle_container)
    FrameLayout mFrameLayout;
    private DoodleOnTouchGestureListener mTouchGestureListener;

    @BindView(R.id.mainSet)
    LinearLayout mainSet;

    @BindView(R.id.mainSetBg)
    LinearLayout mainSetBg;

    @BindView(R.id.mainSetImage)
    LinearLayout mainSetImage;

    @BindView(R.id.mainSetText)
    LinearLayout mainSetText;
    private String modelColor;
    private String modelSize;

    @BindView(R.id.setBg)
    LinearLayout setBg;

    @BindView(R.id.setImage)
    LinearLayout setImage;

    @BindView(R.id.setText)
    LinearLayout setText;
    private ModelTextStyleColorAdapter styleAdapter;

    @BindView(R.id.textCancel)
    ImageView textCancel;

    @BindView(R.id.textEdit)
    EditText textEdit;

    @BindView(R.id.textEditView)
    LinearLayout textEditView;
    private ModelTextFontAdapter textFontAdapter;

    @BindView(R.id.textFontRecyclerView)
    RecyclerView textFontRecyclerView;

    @BindView(R.id.textFontView)
    LinearLayout textFontView;

    @BindView(R.id.textStyleRecyclerView)
    RecyclerView textStyleRecyclerView;

    @BindView(R.id.textStyleSeekBar)
    SeekBar textStyleSeekBar;

    @BindView(R.id.textStyleSeekBarProgress)
    TextView textStyleSeekBarProgress;

    @BindView(R.id.textStyleView)
    LinearLayout textStyleView;

    @BindView(R.id.textSure)
    ImageView textSure;

    @BindView(R.id.textTabLayout)
    TabLayout textTabLayout;

    @BindView(R.id.tv_preview)
    TextView tv_preview;
    private int type;
    public int DEFAULT_TEXT_SIZE = 340;
    public int MIN_TEXT_SIZE = EnumG.BaseMid_InventoryHybrid;
    public int DEFAULT_BITMAP_SIZE = 400;
    public int MIN_BITMAP_SIZE = 300;

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected void initViews(Bundle bundle) {
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected int setLayoutId() {
        return R.layout.activity_model;
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected void initData() {
        this.type = getIntent().getIntExtra("type", 0);
        initModel();
        initBitmap();
        initLayout();
    }

    private void initModel() {
        int i = this.type;
        if (i == 0 || i == 1 || i == 2) {
            this.modelSize = Constants.editSize;
            this.modelColor = Constants.editColor;
            this.editColorLinear.setVisibility(0);
        } else {
            this.modelSize = Constants.editSize;
            this.modelColor = "黑白红黄";
            this.editColorLinear.setVisibility(4);
        }
        this.editSize.setText(this.modelSize);
        this.editColorBlack.setVisibility(8);
        this.editColorWhite.setVisibility(8);
        this.editColorRed.setVisibility(8);
        this.editColorYellow.setVisibility(8);
        if (this.modelColor.contains("黑白")) {
            this.editColorBlack.setVisibility(0);
            this.editColorWhite.setVisibility(0);
        }
        if (this.modelColor.contains("红")) {
            this.editColorRed.setVisibility(0);
        }
        if (this.modelColor.contains("黄")) {
            this.editColorYellow.setVisibility(0);
        }
    }

    private void initBitmap() {
        if (Constants.editCropImage == null) {
            initBitmap(getResources().getString(R.string.model_bg_white));
            return;
        }
        this.bitmap = ScaleBitmapUtils.scaleBitmap(Constants.editCropImage, BadgeSpecificationUtils.getWidthBySzie(this.modelSize) * 5, BadgeSpecificationUtils.getHeightBySzie(this.modelSize) * 5);
    }

    private void initBitmap(String str) {
        int color;
        int widthBySzie = BadgeSpecificationUtils.getWidthBySzie(this.modelSize) * 5;
        int heightBySzie = BadgeSpecificationUtils.getHeightBySzie(this.modelSize) * 5;
        this.bitmap = Bitmap.createBitmap(widthBySzie, heightBySzie, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(this.bitmap);
        Paint paint = new Paint();
        if (getResources().getString(R.string.model_bg_black).equals(str)) {
            color = ViewCompat.MEASURED_STATE_MASK;
        } else if (getResources().getString(R.string.model_bg_yellow).equals(str)) {
            color = Color.parseColor("#FFC000");
        } else {
            color = getResources().getString(R.string.model_bg_red).equals(str) ? SupportMenu.CATEGORY_MASK : -1;
        }
        paint.setColor(color);
        canvas.drawRect(0.0f, 0.0f, widthBySzie, heightBySzie, paint);
    }

    private void initLayout() {
        Bitmap bitmap = this.bitmap;
        if (bitmap == null) {
            return;
        }
        DoodleViewWrapper doodleViewWrapper = new DoodleViewWrapper(this, bitmap, true, new IDoodleListener() { // from class: cn.highlight.work_card_write.activity.ModelActivity.1
            @Override // cn.highlight.lib_doodle.IDoodleListener
            public void onSaved(IDoodle iDoodle, Bitmap bitmap2, Runnable runnable) {
            }

            @Override // cn.highlight.lib_doodle.IDoodleListener
            public void onReady(IDoodle iDoodle) {
                ModelActivity.this.mDoodle.setPen(DoodlePen.BRUSH);
                ModelActivity.this.mTouchGestureListener.setSupportScaleItem(true);
            }
        });
        this.mDoodleView = doodleViewWrapper;
        this.mDoodle = doodleViewWrapper;
        this.mTouchGestureListener = new DoodleOnTouchGestureListener(this.mDoodleView, new DoodleOnTouchGestureListener.ISelectionListener() { // from class: cn.highlight.work_card_write.activity.ModelActivity.2
            @Override // cn.highlight.lib_doodle.DoodleOnTouchGestureListener.ISelectionListener
            public void onCreateSelectableItem(IDoodle iDoodle, float f, float f2) {
            }

            @Override // cn.highlight.lib_doodle.DoodleOnTouchGestureListener.ISelectionListener
            public void onOperationItem() {
            }

            @Override // cn.highlight.lib_doodle.DoodleOnTouchGestureListener.ISelectionListener
            public void onSelectedItem(IDoodle iDoodle, IDoodleSelectableItem iDoodleSelectableItem, boolean z) {
                if (z) {
                    ModelActivity.this.mDoodleView.setEditMode(true);
                    ModelActivity.this.mDoodle.setPen(iDoodleSelectableItem.getPen());
                    ModelActivity.this.mDoodle.setColor(iDoodleSelectableItem.getColor());
                    ModelActivity.this.mDoodle.setSize(iDoodleSelectableItem.getSize());
                    if (iDoodleSelectableItem.getPen() == DoodlePen.TEXT) {
                        if (ModelActivity.this.mTouchGestureListener.getSelectedItem() instanceof DoodleText) {
                            ModelActivity modelActivity = ModelActivity.this;
                            modelActivity.initText((DoodleText) modelActivity.mTouchGestureListener.getSelectedItem());
                        }
                        ModelActivity.this.showSet(2);
                        return;
                    }
                    if (iDoodleSelectableItem.getPen() == DoodlePen.BITMAP) {
                        if (ModelActivity.this.mTouchGestureListener.getSelectedItem() instanceof DoodleBitmap) {
                            ModelActivity.this.initImage();
                        }
                        ModelActivity.this.showSet(3);
                        return;
                    }
                    return;
                }
                if (ModelActivity.this.mTouchGestureListener.getSelectedItem() == null) {
                    ModelActivity.this.mDoodle.setPen(DoodlePen.BRUSH);
                    ModelActivity.this.showSet(0);
                }
            }
        }) { // from class: cn.highlight.work_card_write.activity.ModelActivity.3
            @Override // cn.highlight.lib_doodle.DoodleOnTouchGestureListener
            public void setSupportScaleItem(boolean z) {
                super.setSupportScaleItem(z);
            }
        };
        this.mDoodleView.setDefaultTouchDetector(new DoodleTouchDetector(getApplicationContext(), this.mTouchGestureListener));
        this.mFrameLayout.addView(this.mDoodleView, -1, -1);
    }

    private class DoodleViewWrapper extends DoodleView {
        public DoodleViewWrapper(Context context, Bitmap bitmap, boolean z, IDoodleListener iDoodleListener) {
            super(context, bitmap, z, iDoodleListener);
        }

        @Override // cn.highlight.lib_doodle.DoodleView, cn.highlight.lib_doodle.IDoodle
        public void setPen(IDoodlePen iDoodlePen) {
            super.setPen(iDoodlePen);
            if (iDoodlePen == DoodlePen.TEXT) {
                ModelActivity.this.mDoodle.setSize(ModelActivity.this.DEFAULT_TEXT_SIZE);
            } else if (iDoodlePen == DoodlePen.BITMAP) {
                ModelActivity.this.mDoodle.setSize(ModelActivity.this.DEFAULT_BITMAP_SIZE);
            }
        }

        @Override // cn.highlight.lib_doodle.DoodleView, cn.highlight.lib_doodle.IDoodle
        public void setColor(IDoodleColor iDoodleColor) {
            super.setColor(iDoodleColor);
            if ((iDoodleColor instanceof DoodleColor ? (DoodleColor) iDoodleColor : null) == null || ModelActivity.this.mTouchGestureListener.getSelectedItem() == null) {
                return;
            }
            ModelActivity.this.mTouchGestureListener.getSelectedItem().setColor(getColor().copy());
        }

        @Override // cn.highlight.lib_doodle.DoodleView, cn.highlight.lib_doodle.IDoodle
        public boolean undo() {
            ModelActivity.this.mTouchGestureListener.setSelectedItem(null);
            return super.undo();
        }

        @Override // cn.highlight.lib_doodle.DoodleView, cn.highlight.lib_doodle.IDoodle
        public boolean redo(int i) {
            ModelActivity.this.mTouchGestureListener.setSelectedItem(null);
            return super.redo(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showSet(int i) {
        this.mainSet.setVisibility(8);
        this.mainSetBg.setVisibility(8);
        this.mainSetText.setVisibility(8);
        this.mainSetImage.setVisibility(8);
        if (i == 0) {
            this.mainSet.setVisibility(0);
            return;
        }
        if (i == 1) {
            this.mainSetBg.setVisibility(0);
        } else if (i == 2) {
            this.mainSetText.setVisibility(0);
        } else {
            if (i != 3) {
                return;
            }
            this.mainSetImage.setVisibility(0);
        }
    }

    @OnClick({R.id.img_back, R.id.image_back, R.id.image_forward, R.id.tv_preview, R.id.image_top, R.id.image_bottom, R.id.image_delete, R.id.setBg, R.id.setText, R.id.setImage})
    public void onViewClicked(View view) {
        int id = view.getId();
        if (id == R.id.image_top) {
            if (this.mTouchGestureListener.getSelectedItem() != null) {
                this.mDoodle.topItem(this.mTouchGestureListener.getSelectedItem());
                return;
            }
            return;
        }
        if (id == R.id.img_back) {
            finishActivity();
            return;
        }
        if (id != R.id.tv_preview) {
            switch (id) {
                case R.id.image_back /* 2131296574 */:
                    this.mDoodle.undo();
                    break;
                case R.id.image_bottom /* 2131296575 */:
                    if (this.mTouchGestureListener.getSelectedItem() != null) {
                        this.mDoodle.bottomItem(this.mTouchGestureListener.getSelectedItem());
                        break;
                    }
                    break;
                case R.id.image_delete /* 2131296576 */:
                    if (this.mTouchGestureListener.getSelectedItem() != null) {
                        this.mDoodle.getAllRedoItem(true).add(0, this.mTouchGestureListener.getSelectedItem());
                        this.mDoodle.removeItem(this.mTouchGestureListener.getSelectedItem());
                        this.mTouchGestureListener.setSelectedItem(null);
                        break;
                    }
                    break;
                case R.id.image_forward /* 2131296577 */:
                    this.mDoodle.redo(1);
                    break;
                default:
                    switch (id) {
                        case R.id.setBg /* 2131296814 */:
                            this.mDoodle.setPen(DoodlePen.BRUSH);
                            initTheme();
                            showSet(1);
                            break;
                        case R.id.setImage /* 2131296815 */:
                            this.mDoodle.setPen(DoodlePen.BITMAP);
                            initImage();
                            showSet(3);
                            break;
                        case R.id.setText /* 2131296816 */:
                            this.mDoodle.setPen(DoodlePen.TEXT);
                            initText(null);
                            showSet(2);
                            break;
                    }
            }
            return;
        }
        this.mTouchGestureListener.setSelectedItem(null);
        this.mDoodle.setPen(DoodlePen.BRUSH);
        new Handler().postDelayed(new Runnable() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$ModelActivity$8H3ajCQftxDUPlWgdvUhA5ftiDw
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onViewClicked$0$ModelActivity();
            }
        }, 300L);
    }

    public /* synthetic */ void lambda$onViewClicked$0$ModelActivity() {
        Constants.editModelImage = this.mDoodle.getDoodleBitmap();
        Intent intent = new Intent(this, (Class<?>) WriteActivity.class);
        intent.putExtra("type", this.type);
        startActivity(intent);
    }

    private void initTheme() {
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.setOrientation(0);
        this.bgRecyclerView.setLayoutManager(linearLayoutManager);
        final ModelBgAdapter modelBgAdapter = new ModelBgAdapter(this);
        this.bgRecyclerView.setAdapter(modelBgAdapter);
        ArrayList arrayList = new ArrayList();
        if (this.modelColor.contains("黑白")) {
            arrayList.add(getResources().getString(R.string.model_bg_black));
            arrayList.add(getResources().getString(R.string.model_bg_white));
        }
        if (this.modelColor.contains("红")) {
            arrayList.add(getResources().getString(R.string.model_bg_red));
        }
        if (this.modelColor.contains("黄")) {
            arrayList.add(getResources().getString(R.string.model_bg_yellow));
        }
        modelBgAdapter.setDataList(arrayList);
        modelBgAdapter.setOnClickSelectViewBG(new ModelBgAdapter.OnClickSelectViewBg() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$ModelActivity$xVqGGThkXIAgu4Kj9vop37NJFHU
            @Override // cn.highlight.work_card_write.adapter.ModelBgAdapter.OnClickSelectViewBg
            public final void onClickSelectBg(String str) {
                ModelActivity.lambda$initTheme$1(modelBgAdapter, str);
            }
        });
        this.bgCancel.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$ModelActivity$IxzJVl1A5Oh-gYax5QRX_trrYyM
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$initTheme$2$ModelActivity(view);
            }
        });
        this.bgSure.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$ModelActivity$WwdSxyMlNOnKjA_9Y-R3q8nC2ag
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$initTheme$3$ModelActivity(modelBgAdapter, view);
            }
        });
    }

    static /* synthetic */ void lambda$initTheme$1(ModelBgAdapter modelBgAdapter, String str) {
        modelBgAdapter.type = str;
        modelBgAdapter.notifyDataSetChanged();
    }

    public /* synthetic */ void lambda$initTheme$2$ModelActivity(View view) {
        this.mDoodle.refresh();
        showSet(0);
    }

    public /* synthetic */ void lambda$initTheme$3$ModelActivity(ModelBgAdapter modelBgAdapter, View view) {
        showTipDialog(modelBgAdapter.type);
    }

    private void showTipDialog(final String str) {
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_add_note, (ViewGroup) null);
        Button button = (Button) viewInflate.findViewById(R.id.bt_cancel);
        Button button2 = (Button) viewInflate.findViewById(R.id.bt_sure);
        final Dialog dialog = new Dialog(this, R.style.BaseDialog);
        dialog.setContentView(viewInflate);
        dialog.setCanceledOnTouchOutside(false);
        dialog.show();
        button.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$ModelActivity$e_18ddNj8PPpfDbC4jRlh0H4ebY
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialog.dismiss();
            }
        });
        button2.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$ModelActivity$cJxOgJ9KAVivS6g-mPSJrZExgDI
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showTipDialog$5$ModelActivity(dialog, str, view);
            }
        });
    }

    public /* synthetic */ void lambda$showTipDialog$5$ModelActivity(Dialog dialog, String str, View view) {
        dialog.dismiss();
        this.mFrameLayout.removeAllViews();
        initBitmap(str);
        initLayout();
        showSet(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initText(final DoodleText doodleText) {
        int width = this.mFrameLayout.getWidth();
        int height = this.mFrameLayout.getHeight();
        final float x = this.mDoodleView.toX(width / 2);
        final float y = this.mDoodleView.toY(height / 2);
        ((TabLayout.Tab) Objects.requireNonNull(this.textTabLayout.getTabAt(0))).select();
        this.textEditView.setVisibility(0);
        this.textEdit.setText(doodleText == null ? "" : doodleText.getText1());
        this.textEdit.addTextChangedListener(new TextWatcher() { // from class: cn.highlight.work_card_write.activity.ModelActivity.4
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                int length = charSequence.length();
                int i4 = 0;
                int i5 = 1;
                int i6 = -1;
                while (true) {
                    if (i4 >= length) {
                        break;
                    }
                    if (charSequence.charAt(i4) == '\n') {
                        i5++;
                        if (i5 > 3) {
                            if (i6 != -1) {
                                ModelActivity.this.textEdit.setText(ModelActivity.this.textEdit.getText().subSequence(0, i6));
                            }
                        }
                    } else {
                        i6 = i4 + 1;
                    }
                    i4++;
                }
                ModelActivity.this.textEdit.setSelection(ModelActivity.this.textEdit.length());
            }
        });
        this.textFontView.setVisibility(8);
        final AtomicReference atomicReference = new AtomicReference("默认");
        this.textFontRecyclerView.setLayoutManager(new GridLayoutManager(this, 4));
        this.textFontAdapter = new ModelTextFontAdapter(this);
        this.textFontRecyclerView.setAdapter(this.textFontAdapter);
        ArrayList arrayList = new ArrayList();
        String lang = ConfigSp.getLang();
        char c = 65535;
        int iHashCode = lang.hashCode();
        if (iHashCode != 3241) {
            if (iHashCode == 3886 && lang.equals("zh")) {
                c = 1;
            }
        } else if (lang.equals("en")) {
            c = 0;
        }
        if (c == 0) {
            arrayList.add(getResources().getString(R.string.model_text_font_default));
            arrayList.add("Roboto");
            arrayList.add("OpenSans");
            arrayList.add("NanumGothic");
        } else if (c == 1) {
            arrayList.add(getResources().getString(R.string.model_text_font_default));
            arrayList.add("黑体");
            arrayList.add("楷体");
            arrayList.add("宋体");
        }
        this.textFontAdapter.setDataList(arrayList);
        this.textFontAdapter.setOnClickSelectViewTextFont(new ModelTextFontAdapter.OnClickSelectViewTextFont() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$ModelActivity$DgmPml3NQQUbgzsJbNzVOifpmE8
            @Override // cn.highlight.work_card_write.adapter.ModelTextFontAdapter.OnClickSelectViewTextFont
            public final void onClickSelectFont(String str) {
                this.f$0.lambda$initText$6$ModelActivity(atomicReference, str);
            }
        });
        this.textStyleView.setVisibility(8);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.setOrientation(0);
        this.textStyleRecyclerView.setLayoutManager(linearLayoutManager);
        this.styleAdapter = new ModelTextStyleColorAdapter(this);
        this.textStyleRecyclerView.setAdapter(this.styleAdapter);
        ArrayList arrayList2 = new ArrayList();
        if (this.modelColor.contains("黑白")) {
            arrayList2.add("黑色");
            arrayList2.add("白色");
        }
        if (this.modelColor.contains("红")) {
            arrayList2.add("红色");
        }
        if (this.modelColor.contains("黄")) {
            arrayList2.add("黄色");
        }
        this.styleAdapter.setDataList(arrayList2);
        this.styleAdapter.setOnClickSelectViewBG(new ModelTextStyleColorAdapter.OnClickSelectViewBg() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$ModelActivity$nUFjcDwVr913soWHTpJND2kMtos
            @Override // cn.highlight.work_card_write.adapter.ModelTextStyleColorAdapter.OnClickSelectViewBg
            public final void onClickSelectBg(String str) {
                this.f$0.lambda$initText$7$ModelActivity(str);
            }
        });
        this.textStyleSeekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: cn.highlight.work_card_write.activity.ModelActivity.5
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                ModelActivity.this.textStyleSeekBarProgress.setText(i + "");
            }
        });
        this.textTabLayout.addOnTabSelectedListener(new TabLayout.OnTabSelectedListener() { // from class: cn.highlight.work_card_write.activity.ModelActivity.6
            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabReselected(TabLayout.Tab tab) {
            }

            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabUnselected(TabLayout.Tab tab) {
            }

            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabSelected(TabLayout.Tab tab) {
                int position = tab.getPosition();
                ModelActivity.this.textEditView.setVisibility(8);
                ModelActivity.this.textFontView.setVisibility(8);
                ModelActivity.this.textStyleView.setVisibility(8);
                if (position == 0) {
                    ModelActivity.this.textEditView.setVisibility(0);
                } else if (position == 1) {
                    ModelActivity.this.textFontView.setVisibility(0);
                } else {
                    if (position != 2) {
                        return;
                    }
                    ModelActivity.this.textStyleView.setVisibility(0);
                }
            }
        });
        this.textCancel.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$ModelActivity$9vQLxFbiuct0LSTivUcaH3devmQ
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$initText$8$ModelActivity(view);
            }
        });
        this.textSure.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$ModelActivity$qj1t-szWK1WxPZv0nuLi0xTrW-A
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws NumberFormatException {
                this.f$0.lambda$initText$9$ModelActivity(doodleText, x, y, atomicReference, view);
            }
        });
    }

    public /* synthetic */ void lambda$initText$6$ModelActivity(AtomicReference atomicReference, String str) {
        this.textFontAdapter.type = str;
        atomicReference.set(str);
        this.textFontAdapter.notifyDataSetChanged();
    }

    public /* synthetic */ void lambda$initText$7$ModelActivity(String str) {
        ModelTextStyleColorAdapter modelTextStyleColorAdapter = this.styleAdapter;
        modelTextStyleColorAdapter.type = str;
        modelTextStyleColorAdapter.notifyDataSetChanged();
    }

    public /* synthetic */ void lambda$initText$8$ModelActivity(View view) {
        this.mDoodle.refresh();
        showSet(0);
        hideSoftKeyBoard(this.textEdit);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$initText$9$ModelActivity(DoodleText doodleText, float f, float f2, AtomicReference atomicReference, View view) throws NumberFormatException {
        char c;
        String string = this.textEdit.getText().toString();
        int i = Integer.parseInt(this.textStyleSeekBarProgress.getText().toString());
        String str = this.styleAdapter.type;
        int iHashCode = str.hashCode();
        int color = -1;
        if (iHashCode != 1038352) {
            if (iHashCode != 1293358) {
                c = (iHashCode == 1293761 && str.equals("黑色")) ? (char) 0 : (char) 65535;
            } else if (str.equals("黄色")) {
                c = 2;
            }
        } else if (str.equals("红色")) {
            c = 1;
        }
        if (c == 0) {
            color = ViewCompat.MEASURED_STATE_MASK;
        } else if (c == 1) {
            color = SupportMenu.CATEGORY_MASK;
        } else if (c == 2) {
            color = Color.parseColor("#FFC000");
        }
        if (TextUtils.isEmpty(string)) {
            return;
        }
        if (doodleText == null) {
            this.mDoodle.setColor(new DoodleColor(color));
            IDoodle iDoodle = this.mDoodle;
            DoodleText doodleText2 = new DoodleText(iDoodle, string, this.MIN_TEXT_SIZE + i, iDoodle.getColor().copy(), f, f2);
            this.mDoodle.addItem(doodleText2);
            this.mTouchGestureListener.setSelectedItem(doodleText2);
        } else {
            doodleText.setText1(string);
            doodleText.setColor(new DoodleColor(color));
        }
        if (this.mTouchGestureListener.getSelectedItem() instanceof DoodleText) {
            ((DoodleText) this.mTouchGestureListener.getSelectedItem()).setTypeface(this, (String) atomicReference.get());
            this.mTouchGestureListener.getSelectedItem().setSize(i + this.MIN_TEXT_SIZE);
        }
        this.mDoodle.refresh();
        showSet(0);
        hideSoftKeyBoard(this.textEdit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initImage() {
        this.imageCodeView.setVisibility(8);
        this.imageCancel.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$ModelActivity$3L9YSFoG-Wtk07hZaa-SV5E4On0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$initImage$10$ModelActivity(view);
            }
        });
        this.imagePhoto.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$ModelActivity$X66CYCVsURWjzc_9pKNvuk8XJCo
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$initImage$11$ModelActivity(view);
            }
        });
        this.imageAlbum.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$ModelActivity$GR44Fh-2s1enJERzQ9Xu_L5Ecuc
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$initImage$12$ModelActivity(view);
            }
        });
        this.imageQrcode.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$ModelActivity$IBwvzMfelFfpDLuAOPeCKV_3Ebg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$initImage$15$ModelActivity(view);
            }
        });
        this.imageBarCode.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$ModelActivity$mVMWSDV3U2CeVqNiidueXS1YJoo
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$initImage$18$ModelActivity(view);
            }
        });
    }

    public /* synthetic */ void lambda$initImage$10$ModelActivity(View view) {
        this.mDoodle.refresh();
        showSet(0);
    }

    public /* synthetic */ void lambda$initImage$11$ModelActivity(View view) {
        Intent intent = new Intent(this, (Class<?>) PhotoTakeActivity.class);
        intent.putExtra("type", 8);
        startActivityForResult(intent, 0);
    }

    public /* synthetic */ void lambda$initImage$12$ModelActivity(View view) {
        Intent intent = new Intent(this, (Class<?>) PhotoTakeActivity.class);
        intent.putExtra("type", 9);
        startActivityForResult(intent, 0);
    }

    public /* synthetic */ void lambda$initImage$15$ModelActivity(View view) {
        this.imageCodeView.setVisibility(0);
        this.codeText.setInputType(1);
        this.codeText.setText("");
        this.codeName.setText(getResources().getString(R.string.model_qrcode));
        this.codeCancel.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$ModelActivity$qTSGH3qullb_BDH-E_2bnf5OfGM
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$null$13$ModelActivity(view2);
            }
        });
        this.codeSure.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$ModelActivity$75u5cZPfFuR1Fzphe4ytYl24uug
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$null$14$ModelActivity(view2);
            }
        });
    }

    public /* synthetic */ void lambda$null$13$ModelActivity(View view) {
        this.imageCodeView.setVisibility(8);
        hideSoftKeyBoard(this.codeText);
    }

    public /* synthetic */ void lambda$null$14$ModelActivity(View view) {
        String string = this.codeText.getText().toString();
        if (Tools.isNull(string)) {
            return;
        }
        Bitmap bitmapGenerateQRCodeWithoutMargin = CodeUtils.generateQRCodeWithoutMargin(string, this.MIN_BITMAP_SIZE, -1, ViewCompat.MEASURED_STATE_MASK);
        if (this.mTouchGestureListener.getSelectedItem() instanceof DoodleBitmap) {
            createDoodleBitmap((DoodleBitmap) this.mTouchGestureListener.getSelectedItem(), bitmapGenerateQRCodeWithoutMargin);
        } else {
            createDoodleBitmap(null, bitmapGenerateQRCodeWithoutMargin);
        }
        this.imageCodeView.setVisibility(8);
        hideSoftKeyBoard(this.codeText);
    }

    public /* synthetic */ void lambda$initImage$18$ModelActivity(View view) {
        this.imageCodeView.setVisibility(0);
        this.codeText.setInputType(145);
        this.codeText.setText("");
        this.codeName.setText(getResources().getString(R.string.model_barcode));
        this.codeCancel.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$ModelActivity$uqch7xhECTTraPaDbn06Gc2XDiM
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$null$16$ModelActivity(view2);
            }
        });
        this.codeSure.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$ModelActivity$ODO6hnvQlyCdSHC07gHNchT3oTc
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$null$17$ModelActivity(view2);
            }
        });
    }

    public /* synthetic */ void lambda$null$16$ModelActivity(View view) {
        this.imageCodeView.setVisibility(8);
        hideSoftKeyBoard(this.codeText);
    }

    public /* synthetic */ void lambda$null$17$ModelActivity(View view) {
        String string = this.codeText.getText().toString();
        if (Tools.isNull(string)) {
            return;
        }
        int i = this.MIN_BITMAP_SIZE;
        Bitmap bitmapGenerateBarcodeWithoutMargin = CodeUtils.generateBarcodeWithoutMargin(string, i * 8, i * 2, -1, ViewCompat.MEASURED_STATE_MASK);
        if (this.mTouchGestureListener.getSelectedItem() instanceof DoodleBitmap) {
            createDoodleBitmap((DoodleBitmap) this.mTouchGestureListener.getSelectedItem(), bitmapGenerateBarcodeWithoutMargin);
        } else {
            createDoodleBitmap(null, bitmapGenerateBarcodeWithoutMargin);
        }
        this.imageCodeView.setVisibility(8);
        hideSoftKeyBoard(this.codeText);
    }

    private void createDoodleBitmap(DoodleBitmap doodleBitmap, Bitmap bitmap) {
        int width = this.mFrameLayout.getWidth();
        int height = this.mFrameLayout.getHeight();
        float x = this.mDoodleView.toX(width / 2);
        float y = this.mDoodleView.toY(height / 2);
        if (doodleBitmap == null) {
            IDoodle iDoodle = this.mDoodle;
            DoodleBitmap doodleBitmap2 = new DoodleBitmap(iDoodle, bitmap, iDoodle.getSize(), x, y);
            this.mDoodle.addItem(doodleBitmap2);
            this.mTouchGestureListener.setSelectedItem(doodleBitmap2);
        } else {
            doodleBitmap.setBitmap(bitmap);
        }
        this.mDoodle.refresh();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 0 && i2 == -1) {
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(intent.getStringExtra("imageFile"));
            this.mDoodle.setPen(DoodlePen.BITMAP);
            if (this.mTouchGestureListener.getSelectedItem() instanceof DoodleBitmap) {
                createDoodleBitmap((DoodleBitmap) this.mTouchGestureListener.getSelectedItem(), bitmapDecodeFile);
            } else {
                createDoodleBitmap(null, bitmapDecodeFile);
            }
            File file = new File(intent.getStringExtra("imageFile"));
            if (file.exists()) {
                Log.e("TAG", "deleteTakePhoto: " + file.delete());
            }
        }
    }
}
