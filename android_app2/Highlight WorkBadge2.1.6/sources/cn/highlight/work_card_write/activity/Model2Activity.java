package cn.highlight.work_card_write.activity;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Point;
import android.nfc.NfcAdapter;
import android.os.Bundle;
import android.os.Handler;
import android.text.InputFilter;
import android.text.Spanned;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
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
import cn.forward.androids.utils.ImageUtils;
import cn.highlight.core.utils.CodeUtils;
import cn.highlight.core.utils.ToastUtil;
import cn.highlight.core.utils.Tools;
import cn.highlight.lib_doodle.DoodleBarCode;
import cn.highlight.lib_doodle.DoodleBg;
import cn.highlight.lib_doodle.DoodleBitmap;
import cn.highlight.lib_doodle.DoodleColor;
import cn.highlight.lib_doodle.DoodleOnTouchGestureListener;
import cn.highlight.lib_doodle.DoodlePen;
import cn.highlight.lib_doodle.DoodleQRCode;
import cn.highlight.lib_doodle.DoodleRotatableItemBase;
import cn.highlight.lib_doodle.DoodleShape;
import cn.highlight.lib_doodle.DoodleShape1;
import cn.highlight.lib_doodle.DoodleText;
import cn.highlight.lib_doodle.DoodleTouchDetector;
import cn.highlight.lib_doodle.DoodleView;
import cn.highlight.lib_doodle.IDoodle;
import cn.highlight.lib_doodle.IDoodleItem;
import cn.highlight.lib_doodle.IDoodleListener;
import cn.highlight.lib_doodle.IDoodlePen;
import cn.highlight.lib_doodle.IDoodleSelectableItem;
import cn.highlight.work_card_write.Constants;
import cn.highlight.work_card_write.R;
import cn.highlight.work_card_write.adapter.ModelBgAdapter;
import cn.highlight.work_card_write.adapter.ModelBgLibraryAdapter;
import cn.highlight.work_card_write.adapter.ModelCodeStyleBgAdapter;
import cn.highlight.work_card_write.adapter.ModelMainAdapter;
import cn.highlight.work_card_write.adapter.ModelTextFontAdapter;
import cn.highlight.work_card_write.adapter.ModelTextStyleBgAdapter;
import cn.highlight.work_card_write.adapter.ModelTextStyleColorAdapter;
import cn.highlight.work_card_write.adapter.ModelimageLibraryAdapter;
import cn.highlight.work_card_write.adapter.ModelimageLibraryIconAdapter;
import cn.highlight.work_card_write.base.BaseActivity;
import cn.highlight.work_card_write.greendao.dao.DoodleBeanDaoUse;
import cn.highlight.work_card_write.greendao.table.DoodleBean;
import cn.highlight.work_card_write.util.BadgeSpecificationUtils;
import cn.highlight.work_card_write.util.ScaleBitmapUtils;
import cn.highlight.work_card_write.util.ShapeUtil;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.google.android.material.tabs.TabLayout;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public class Model2Activity extends BaseActivity {
    private Bitmap bitmap;
    private float cy;

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

    @BindView(R.id.editOperationLinear)
    LinearLayout editOperationLinear;

    @BindView(R.id.edit_size)
    TextView editSize;
    private String imageName;

    @BindView(R.id.image_back)
    ImageView image_back;

    @BindView(R.id.image_bottom)
    ImageView image_bottom;

    @BindView(R.id.image_forward)
    ImageView image_forward;

    @BindView(R.id.image_left)
    ImageView image_left;

    @BindView(R.id.image_right)
    ImageView image_right;

    @BindView(R.id.image_top)
    ImageView image_top;

    @BindView(R.id.img_back)
    ImageView img_back;
    private IDoodle mDoodle;
    private DoodleView mDoodleView;

    @BindView(R.id.doodle_container)
    FrameLayout mFrameLayout;
    private DoodleOnTouchGestureListener mTouchGestureListener;

    @BindView(R.id.mainSetRecyclerView)
    RecyclerView mainSetRecyclerView;
    private String modelColor;
    private String modelSize;
    private EditText textEdit;

    @BindView(R.id.tv_preview)
    TextView tv_preview;
    private int type;
    public int MIN_TEXT_SIZE = 120;
    public int DEFAULT_BITMAP_SIZE = 485;
    private int operationNum = 1;
    private boolean isOperation = false;

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected void initViews(Bundle bundle) {
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected int setLayoutId() {
        return R.layout.activity_model2;
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected void initData() throws Resources.NotFoundException {
        NfcAdapter defaultAdapter = NfcAdapter.getDefaultAdapter(this);
        if (defaultAdapter != null) {
            defaultAdapter.enableReaderMode(this, null, 8, new Bundle());
        }
        this.type = getIntent().getIntExtra("type", 0);
        this.imageName = System.currentTimeMillis() + ".png";
        initModel();
        initBitmap();
        initLayout();
        initBitmapBG();
        initDoodle();
        initMainSet();
        refreshImage();
        refreshButton(false);
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
        int widthBySzie = BadgeSpecificationUtils.getWidthBySzie(this.modelSize) * 5;
        int heightBySzie = BadgeSpecificationUtils.getHeightBySzie(this.modelSize) * 5;
        this.bitmap = Bitmap.createBitmap(widthBySzie, heightBySzie, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(this.bitmap);
        Paint paint = new Paint();
        paint.setColor(-1);
        canvas.drawRect(0.0f, 0.0f, widthBySzie, heightBySzie, paint);
    }

    private void initLayout() {
        Bitmap bitmap = this.bitmap;
        if (bitmap == null) {
            return;
        }
        DoodleViewWrapper doodleViewWrapper = new DoodleViewWrapper(this, bitmap, false, new IDoodleListener() { // from class: cn.highlight.work_card_write.activity.Model2Activity.1
            @Override // cn.highlight.lib_doodle.IDoodleListener
            public void onSaved(IDoodle iDoodle, Bitmap bitmap2, Runnable runnable) {
            }

            @Override // cn.highlight.lib_doodle.IDoodleListener
            public void onReady(IDoodle iDoodle) {
                Model2Activity.this.mDoodle.setPen(DoodlePen.BRUSH);
                Model2Activity.this.mTouchGestureListener.setSupportScaleItem(true);
            }
        });
        this.mDoodleView = doodleViewWrapper;
        this.mDoodle = doodleViewWrapper;
        this.mTouchGestureListener = new DoodleOnTouchGestureListener(this.mDoodleView, new DoodleOnTouchGestureListener.ISelectionListener() { // from class: cn.highlight.work_card_write.activity.Model2Activity.2
            @Override // cn.highlight.lib_doodle.DoodleOnTouchGestureListener.ISelectionListener
            public void onCreateSelectableItem(IDoodle iDoodle, float f, float f2) {
            }

            @Override // cn.highlight.lib_doodle.DoodleOnTouchGestureListener.ISelectionListener
            public void onSelectedItem(IDoodle iDoodle, IDoodleSelectableItem iDoodleSelectableItem, boolean z) {
                if (z) {
                    Model2Activity.this.mDoodleView.setEditMode(true);
                    Model2Activity.this.mDoodle.setPen(iDoodleSelectableItem.getPen());
                    Model2Activity.this.mDoodle.setColor(iDoodleSelectableItem.getColor());
                    Model2Activity.this.mDoodle.setSize(iDoodleSelectableItem.getSize());
                    Model2Activity.this.refreshButton(true);
                    if (Model2Activity.this.mTouchGestureListener.getSelectedItem() instanceof DoodleBg) {
                        Model2Activity.this.refreshButton(false);
                    }
                    if (Model2Activity.this.mTouchGestureListener.getSelectedItem() instanceof DoodleQRCode) {
                        ((DoodleQRCode) Model2Activity.this.mTouchGestureListener.getSelectedItem()).setIsRotating(false);
                    }
                    if (Model2Activity.this.mTouchGestureListener.getSelectedItem() instanceof DoodleBarCode) {
                        ((DoodleBarCode) Model2Activity.this.mTouchGestureListener.getSelectedItem()).setIsRotating(false);
                        return;
                    }
                    return;
                }
                if (Model2Activity.this.mTouchGestureListener.getSelectedItem() == null) {
                    Model2Activity.this.mDoodle.setPen(DoodlePen.BRUSH);
                    Model2Activity.this.refreshButton(false);
                }
            }

            @Override // cn.highlight.lib_doodle.DoodleOnTouchGestureListener.ISelectionListener
            public void onOperationItem() {
                Model2Activity.this.refreshImage();
            }
        }) { // from class: cn.highlight.work_card_write.activity.Model2Activity.3
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
    }

    private void initBitmapBG() throws Resources.NotFoundException {
        String string;
        int widthBySzie = BadgeSpecificationUtils.getWidthBySzie(this.modelSize) * 5;
        int heightBySzie = BadgeSpecificationUtils.getHeightBySzie(this.modelSize) * 5;
        string = "其他";
        if (Constants.editSelectModel != null) {
            this.bitmap = BitmapFactory.decodeByteArray(Constants.editSelectModel.getBitmapStart(), 0, Constants.editSelectModel.getBitmapStart().length, new BitmapFactory.Options());
            this.bitmap = ScaleBitmapUtils.scaleBitmap(this.bitmap, widthBySzie, heightBySzie);
            boolean zIsBitmapPureColor = ScaleBitmapUtils.isBitmapPureColor(this.bitmap, ViewCompat.MEASURED_STATE_MASK);
            boolean zIsBitmapPureColor2 = ScaleBitmapUtils.isBitmapPureColor(this.bitmap, -1);
            boolean zIsBitmapPureColor3 = ScaleBitmapUtils.isBitmapPureColor(this.bitmap, SupportMenu.CATEGORY_MASK);
            boolean zIsBitmapPureColor4 = ScaleBitmapUtils.isBitmapPureColor(this.bitmap, Color.parseColor("#FFC000"));
            string = zIsBitmapPureColor ? getResources().getString(R.string.model_bg_black) : "其他";
            if (zIsBitmapPureColor2) {
                string = getResources().getString(R.string.model_bg_white);
            }
            if (zIsBitmapPureColor3) {
                string = getResources().getString(R.string.model_bg_red);
            }
            if (zIsBitmapPureColor4) {
                string = getResources().getString(R.string.model_bg_yellow);
            }
        } else if (Constants.editCropImage != null) {
            this.bitmap = ScaleBitmapUtils.scaleBitmap(Constants.editCropImage, widthBySzie, heightBySzie);
        } else {
            this.bitmap = Bitmap.createBitmap(widthBySzie, heightBySzie, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(this.bitmap);
            Paint paint = new Paint();
            paint.setColor(-1);
            canvas.drawRect(0.0f, 0.0f, widthBySzie, heightBySzie, paint);
            string = getResources().getString(R.string.model_bg_white);
        }
        DoodleBg doodleBg = new DoodleBg(this.mDoodle, this.bitmap, string, 1200.0f, 0.0f, 0.0f);
        this.mDoodle.addItem(doodleBg);
        this.mTouchGestureListener.setSelectedItem(doodleBg);
        this.mTouchGestureListener.getSelectedItem().setSelected(false);
        IDoodle iDoodle = this.mDoodle;
        iDoodle.addItemRecord(iDoodle.getAllItem(true).get(0), 1);
        refreshImage();
    }

    private void initDoodle() {
        ArrayList arrayList;
        Model2Activity model2Activity;
        DoodleRotatableItemBase doodleShape1;
        Model2Activity model2Activity2 = this;
        if (Constants.editSelectModel != null) {
            Log.e("sss", Constants.editSelectModel.getImageName());
            ArrayList arrayList2 = new ArrayList();
            List<DoodleBean> listQueryAllByName = DoodleBeanDaoUse.queryAllByName(Constants.editSelectModel.getImageName());
            int i = 1;
            if (listQueryAllByName != null && listQueryAllByName.size() > 0) {
                for (DoodleBean doodleBean : listQueryAllByName) {
                    if (doodleBean.getMIDoodlePen() == i) {
                        IDoodlePen iDoodlePen = DoodlePen.TEXT;
                        arrayList = arrayList2;
                        DoodleRotatableItemBase doodleText = new DoodleText(model2Activity2.mDoodle, this, doodleBean.getMText0(), doodleBean.getMText(), doodleBean.getMTextStyle(), doodleBean.getMTextBgColor(), doodleBean.getMTextBold(), doodleBean.getMTextItalic(), doodleBean.getMTextUnderline(), doodleBean.getMSize(), new DoodleColor(doodleBean.getMColor()), doodleBean.getMLocationX(), doodleBean.getMLocationY());
                        doodleText.setPen(iDoodlePen);
                        doodleText.setSize(doodleBean.getMSize());
                        doodleText.setColor(new DoodleColor(doodleBean.getMColor()));
                        doodleText.setLocation(doodleBean.getMLocationX(), doodleBean.getMLocationY());
                        doodleText.setPivotX(doodleBean.getMPivotX());
                        doodleText.setPivotY(doodleBean.getMPivotY());
                        doodleText.setItemRotate(doodleBean.getMRotate());
                        doodleText.setNeedClipOutside(doodleBean.getMIsNeedClipOutside());
                        doodleText.setScale(doodleBean.getMScale());
                        model2Activity = this;
                        doodleShape1 = doodleText;
                    } else {
                        arrayList = arrayList2;
                        if (doodleBean.getMIDoodlePen() == 2) {
                            IDoodlePen iDoodlePen2 = DoodlePen.BITMAP;
                            model2Activity = this;
                            doodleShape1 = new DoodleBitmap(model2Activity.mDoodle, BitmapFactory.decodeByteArray(doodleBean.getMBitmap(), 0, doodleBean.getMBitmap().length, new BitmapFactory.Options()), doodleBean.getMSize(), doodleBean.getMLocationX(), doodleBean.getMLocationY());
                            doodleShape1.setPen(iDoodlePen2);
                            doodleShape1.setSize(doodleBean.getMSize());
                            doodleShape1.setColor(new DoodleColor(doodleBean.getMColor()));
                            doodleShape1.setLocation(doodleBean.getMLocationX(), doodleBean.getMLocationY());
                            doodleShape1.setPivotX(doodleBean.getMPivotX());
                            doodleShape1.setPivotY(doodleBean.getMPivotY());
                            doodleShape1.setItemRotate(doodleBean.getMRotate());
                            doodleShape1.setNeedClipOutside(doodleBean.getMIsNeedClipOutside());
                            doodleShape1.setScale(doodleBean.getMScale());
                        } else {
                            model2Activity = this;
                            if (doodleBean.getMIDoodlePen() == 3) {
                                IDoodlePen iDoodlePen3 = DoodlePen.QRCODE;
                                doodleShape1 = new DoodleQRCode(model2Activity.mDoodle, BitmapFactory.decodeByteArray(doodleBean.getMBitmap(), 0, doodleBean.getMBitmap().length, new BitmapFactory.Options()), doodleBean.getMText(), doodleBean.getBgColor(), doodleBean.getFgColor(), doodleBean.getMSize(), doodleBean.getMLocationX(), doodleBean.getMLocationY());
                                doodleShape1.setPen(iDoodlePen3);
                                doodleShape1.setSize(doodleBean.getMSize());
                                doodleShape1.setColor(new DoodleColor(doodleBean.getMColor()));
                                doodleShape1.setLocation(doodleBean.getMLocationX(), doodleBean.getMLocationY());
                                doodleShape1.setPivotX(doodleBean.getMPivotX());
                                doodleShape1.setPivotY(doodleBean.getMPivotY());
                                doodleShape1.setItemRotate(doodleBean.getMRotate());
                                doodleShape1.setNeedClipOutside(doodleBean.getMIsNeedClipOutside());
                                doodleShape1.setScale(doodleBean.getMScale());
                            } else if (doodleBean.getMIDoodlePen() == 4) {
                                IDoodlePen iDoodlePen4 = DoodlePen.BARCODE;
                                doodleShape1 = new DoodleBarCode(model2Activity.mDoodle, BitmapFactory.decodeByteArray(doodleBean.getMBitmap(), 0, doodleBean.getMBitmap().length, new BitmapFactory.Options()), doodleBean.getMText(), doodleBean.getBgColor(), doodleBean.getFgColor(), doodleBean.getMSize(), doodleBean.getMLocationX(), doodleBean.getMLocationY());
                                doodleShape1.setPen(iDoodlePen4);
                                doodleShape1.setSize(doodleBean.getMSize());
                                doodleShape1.setColor(new DoodleColor(doodleBean.getMColor()));
                                doodleShape1.setLocation(doodleBean.getMLocationX(), doodleBean.getMLocationY());
                                doodleShape1.setPivotX(doodleBean.getMPivotX());
                                doodleShape1.setPivotY(doodleBean.getMPivotY());
                                doodleShape1.setItemRotate(doodleBean.getMRotate());
                                doodleShape1.setNeedClipOutside(doodleBean.getMIsNeedClipOutside());
                                doodleShape1.setScale(doodleBean.getMScale());
                            } else if (doodleBean.getMIDoodlePen() == 5) {
                                IDoodlePen iDoodlePen5 = DoodlePen.SHAPE;
                                doodleShape1 = new DoodleShape1(model2Activity.mDoodle, BitmapFactory.decodeByteArray(doodleBean.getMBitmap(), 0, doodleBean.getMBitmap().length, new BitmapFactory.Options()), doodleBean.getFgColor(), doodleBean.getShape1(), doodleBean.getWidth(), doodleBean.getHeight(), doodleBean.getEffects(), doodleBean.getMLocationX(), doodleBean.getMLocationY());
                                doodleShape1.setPen(iDoodlePen5);
                                doodleShape1.setSize(doodleBean.getMSize());
                                doodleShape1.setColor(new DoodleColor(doodleBean.getMColor()));
                                doodleShape1.setLocation(doodleBean.getMLocationX(), doodleBean.getMLocationY());
                                doodleShape1.setPivotX(doodleBean.getMPivotX());
                                doodleShape1.setPivotY(doodleBean.getMPivotY());
                                doodleShape1.setItemRotate(doodleBean.getMRotate());
                                doodleShape1.setNeedClipOutside(doodleBean.getMIsNeedClipOutside());
                                doodleShape1.setScale(doodleBean.getMScale());
                            } else {
                                doodleShape1 = null;
                            }
                        }
                    }
                    ArrayList arrayList3 = arrayList;
                    if (doodleShape1 != null) {
                        arrayList3.add(doodleShape1);
                    }
                    arrayList2 = arrayList3;
                    model2Activity2 = model2Activity;
                    i = 1;
                }
            }
            Model2Activity model2Activity3 = model2Activity2;
            ArrayList<IDoodleItem> arrayList4 = arrayList2;
            if (arrayList4.size() > 0) {
                model2Activity3.operationNum = arrayList4.size() + 1;
                for (IDoodleItem iDoodleItem : arrayList4) {
                    model2Activity3.mDoodle.addItem(iDoodleItem);
                    model2Activity3.mTouchGestureListener.setSelectedItem((IDoodleSelectableItem) iDoodleItem);
                    model2Activity3.mDoodle.addItemRecord(iDoodleItem, 1);
                }
                model2Activity3.mTouchGestureListener.setSelectedItem(null);
                model2Activity3.mDoodle.refresh();
            }
        }
    }

    private int getColorByValues(String str) {
        if (getResources().getString(R.string.model_bg_black).equals(str)) {
            return ViewCompat.MEASURED_STATE_MASK;
        }
        if (getResources().getString(R.string.model_bg_red).equals(str)) {
            return SupportMenu.CATEGORY_MASK;
        }
        if (getResources().getString(R.string.model_bg_yellow).equals(str)) {
            return Color.parseColor("#FFC000");
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getColorByValue(java.lang.String r7) {
        /*
            r6 = this;
            int r0 = r7.hashCode()
            r1 = 0
            r2 = 3
            r3 = 2
            r4 = 1
            r5 = -1
            switch(r0) {
                case 973717: goto L2b;
                case 1038352: goto L21;
                case 1293358: goto L17;
                case 1293761: goto Ld;
                default: goto Lc;
            }
        Lc:
            goto L35
        Ld:
            java.lang.String r0 = "黑色"
            boolean r7 = r7.equals(r0)
            if (r7 == 0) goto L35
            r7 = 0
            goto L36
        L17:
            java.lang.String r0 = "黄色"
            boolean r7 = r7.equals(r0)
            if (r7 == 0) goto L35
            r7 = 2
            goto L36
        L21:
            java.lang.String r0 = "红色"
            boolean r7 = r7.equals(r0)
            if (r7 == 0) goto L35
            r7 = 1
            goto L36
        L2b:
            java.lang.String r0 = "白色"
            boolean r7 = r7.equals(r0)
            if (r7 == 0) goto L35
            r7 = 3
            goto L36
        L35:
            r7 = -1
        L36:
            if (r7 == 0) goto L4b
            if (r7 == r4) goto L48
            if (r7 == r3) goto L41
            if (r7 == r2) goto L3f
            goto L4d
        L3f:
            r1 = -1
            goto L4d
        L41:
            java.lang.String r7 = "#FFC000"
            int r1 = android.graphics.Color.parseColor(r7)
            goto L4d
        L48:
            r1 = -65536(0xffffffffffff0000, float:NaN)
            goto L4d
        L4b:
            r1 = -16777216(0xffffffffff000000, float:-1.7014118E38)
        L4d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.highlight.work_card_write.activity.Model2Activity.getColorByValue(java.lang.String):int");
    }

    private String getValueByColor(int i) {
        return i == -16777216 ? "黑色" : i == -65536 ? "红色" : i == Color.parseColor("#FFC000") ? "黄色" : i == -1 ? "白色" : "透明";
    }

    @OnClick({R.id.img_back, R.id.image_back, R.id.image_forward, R.id.tv_preview, R.id.image_top, R.id.image_bottom, R.id.image_left, R.id.image_right, R.id.image_delete})
    public void onViewClicked(View view) {
        int id = view.getId();
        if (id == R.id.img_back) {
            showErrorDialog(getString(R.string.dialog_tip), getString(R.string.dialog_tip_info1));
            return;
        }
        if (id != R.id.tv_preview) {
            switch (id) {
                case R.id.image_back /* 2131296574 */:
                    this.mDoodle.undoRecord(this.operationNum);
                    refreshImage();
                    this.mTouchGestureListener.setSelectedItem(null);
                    break;
                case R.id.image_bottom /* 2131296575 */:
                    if (this.mTouchGestureListener.getSelectedItem() != null) {
                        this.mDoodle.downItem(this.mTouchGestureListener.getSelectedItem());
                        this.mDoodle.addItemRecord(this.mTouchGestureListener.getSelectedItem(), 4);
                    }
                    IDoodleSelectableItem selectedItem = this.mTouchGestureListener.getSelectedItem();
                    this.mTouchGestureListener.setSelectedItem(null);
                    this.mTouchGestureListener.setSelectedItem(selectedItem);
                    refreshImage();
                    break;
                case R.id.image_delete /* 2131296576 */:
                    if (this.mTouchGestureListener.getSelectedItem() != null) {
                        this.mDoodle.getAllRedoItem(true).add(0, this.mTouchGestureListener.getSelectedItem());
                        this.mDoodle.removeItem(this.mTouchGestureListener.getSelectedItem());
                        this.mDoodle.addItemRecord(this.mTouchGestureListener.getSelectedItem(), 2);
                        this.mDoodle.clearRedoRecord();
                        this.mTouchGestureListener.setSelectedItem(null);
                    }
                    refreshImage();
                    break;
                case R.id.image_forward /* 2131296577 */:
                    this.mDoodle.redoRecord();
                    refreshImage();
                    this.mTouchGestureListener.setSelectedItem(null);
                    break;
                case R.id.image_left /* 2131296578 */:
                    if (this.mTouchGestureListener.getSelectedItem() != null) {
                        float itemRotate = this.mTouchGestureListener.getSelectedItem().getItemRotate() % 360.0f;
                        if (itemRotate < 0.0f) {
                            itemRotate += 360.0f;
                        }
                        if (itemRotate > 270.0f && itemRotate <= 360.0f) {
                            this.mTouchGestureListener.getSelectedItem().setItemRotate(270.0f);
                        } else if (itemRotate > 180.0f && itemRotate <= 270.0f) {
                            this.mTouchGestureListener.getSelectedItem().setItemRotate(180.0f);
                        } else if (itemRotate > 90.0f && itemRotate <= 180.0f) {
                            this.mTouchGestureListener.getSelectedItem().setItemRotate(90.0f);
                        } else if (itemRotate > 0.0f && itemRotate <= 90.0f) {
                            this.mTouchGestureListener.getSelectedItem().setItemRotate(0.0f);
                        } else if (itemRotate == 0.0f) {
                            this.mTouchGestureListener.getSelectedItem().setItemRotate(270.0f);
                        }
                        this.mDoodle.addItemRecord(this.mTouchGestureListener.getSelectedItem(), 1);
                        refreshImage();
                        break;
                    }
                    break;
                case R.id.image_right /* 2131296579 */:
                    if (this.mTouchGestureListener.getSelectedItem() != null) {
                        float itemRotate2 = this.mTouchGestureListener.getSelectedItem().getItemRotate() % 360.0f;
                        if (itemRotate2 < 0.0f) {
                            itemRotate2 += 360.0f;
                        }
                        if (itemRotate2 >= 270.0f && itemRotate2 < 360.0f) {
                            this.mTouchGestureListener.getSelectedItem().setItemRotate(0.0f);
                        } else if (itemRotate2 >= 180.0f && itemRotate2 < 270.0f) {
                            this.mTouchGestureListener.getSelectedItem().setItemRotate(270.0f);
                        } else if (itemRotate2 >= 90.0f && itemRotate2 < 180.0f) {
                            this.mTouchGestureListener.getSelectedItem().setItemRotate(180.0f);
                        } else if ((itemRotate2 >= 0.0f && itemRotate2 < 90.0f) || itemRotate2 == 360.0f) {
                            this.mTouchGestureListener.getSelectedItem().setItemRotate(90.0f);
                        }
                        this.mDoodle.addItemRecord(this.mTouchGestureListener.getSelectedItem(), 1);
                        refreshImage();
                        break;
                    }
                    break;
                case R.id.image_top /* 2131296580 */:
                    if (this.mTouchGestureListener.getSelectedItem() != null) {
                        this.mDoodle.upItem(this.mTouchGestureListener.getSelectedItem());
                        this.mDoodle.addItemRecord(this.mTouchGestureListener.getSelectedItem(), 3);
                    }
                    IDoodleSelectableItem selectedItem2 = this.mTouchGestureListener.getSelectedItem();
                    this.mTouchGestureListener.setSelectedItem(null);
                    this.mTouchGestureListener.setSelectedItem(selectedItem2);
                    refreshImage();
                    break;
            }
            return;
        }
        try {
            this.mTouchGestureListener.setSelectedItem(null);
            this.mDoodle.setPen(DoodlePen.BRUSH);
            new Handler().postDelayed(new Runnable() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$Model2Activity$iREcsoXxBwpLBkaY3doeD1pxoiE
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onViewClicked$0$Model2Activity();
                }
            }, 300L);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public /* synthetic */ void lambda$onViewClicked$0$Model2Activity() {
        Bitmap bitmapCopy = this.mDoodle.getBitmap().copy(this.mDoodle.getBitmap().getConfig(), true);
        Canvas canvas = new Canvas(bitmapCopy);
        Iterator<IDoodleItem> it = this.mDoodle.getAllItem().iterator();
        while (it.hasNext()) {
            it.next().draw(canvas);
        }
        Constants.editModelImage = ImageUtils.rotate(bitmapCopy, this.mDoodle.getDoodleRotation(), true);
        Constants.editSaveModel = this.mDoodle;
        Intent intent = new Intent(this, (Class<?>) WriteActivity.class);
        intent.putExtra("type", this.type);
        intent.putExtra("modify", this.isOperation);
        intent.putExtra("name", this.imageName);
        startActivity(intent);
    }

    private void showErrorDialog(final String str, final String str2) {
        runOnUiThread(new Runnable() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$Model2Activity$QeoiUI-4DSjbKgc_WmLGB7vCLUU
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showErrorDialog$4$Model2Activity(str, str2);
            }
        });
    }

    public /* synthetic */ void lambda$showErrorDialog$4$Model2Activity(String str, String str2) {
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
        attributes.width = (int) (r11.x * 0.75f);
        attributes.height = -2;
        window.setAttributes(attributes);
        dialog.show();
        textView.setText(str);
        textView2.setText(str2);
        linearLayout.setVisibility(8);
        linearLayout2.setVisibility(0);
        button.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$Model2Activity$EJzm16gv7Clxg0UgyWj0REMGfkI
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialog.dismiss();
            }
        });
        button2.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$Model2Activity$yaLhRQzbBDO5KHeYuQUYnX6_cY4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialog.dismiss();
            }
        });
        button3.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$Model2Activity$Tz3R68qwos0729kgM-MZ3LDtWqQ
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$null$3$Model2Activity(dialog, view);
            }
        });
    }

    public /* synthetic */ void lambda$null$3$Model2Activity(Dialog dialog, View view) {
        dialog.dismiss();
        finishActivity();
    }

    private void initMainSet() {
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.setOrientation(0);
        this.mainSetRecyclerView.setLayoutManager(linearLayoutManager);
        ModelMainAdapter modelMainAdapter = new ModelMainAdapter(this);
        this.mainSetRecyclerView.setAdapter(modelMainAdapter);
        ArrayList arrayList = new ArrayList();
        arrayList.add(getString(R.string.model_bg));
        arrayList.add(getString(R.string.model_text));
        arrayList.add(getString(R.string.model_image));
        arrayList.add(getString(R.string.model_qrcode));
        arrayList.add(getString(R.string.model_barcode));
        arrayList.add(getString(R.string.model_shape));
        modelMainAdapter.setDataList(arrayList);
        modelMainAdapter.setOnItemClickListener(new ModelMainAdapter.OnItemClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$Model2Activity$WujVTR4oxmYonWUO77B0FjodhMo
            @Override // cn.highlight.work_card_write.adapter.ModelMainAdapter.OnItemClickListener
            public final void onClick(int i) {
                this.f$0.showSet(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showSet(int i) {
        if (i == 0) {
            this.mDoodle.setPen(DoodlePen.BG);
            if (this.mDoodle.getAllItem(true).get(0) != null) {
                this.mTouchGestureListener.setSelectedItem((IDoodleSelectableItem) this.mDoodle.getAllItem(true).get(0));
            }
            showMainSetBg();
            return;
        }
        if (i == 1) {
            this.mDoodle.setPen(DoodlePen.TEXT);
            showMainSetText();
            return;
        }
        if (i == 2) {
            this.mDoodle.setPen(DoodlePen.BITMAP);
            showMainSetImage();
            return;
        }
        if (i == 3) {
            this.mDoodle.setPen(DoodlePen.QRCODE);
            showMainSetQRCode();
        } else if (i == 4) {
            this.mDoodle.setPen(DoodlePen.BARCODE);
            showMainSetBarCode();
        } else {
            if (i != 5) {
                return;
            }
            this.mDoodle.setPen(DoodlePen.SHAPE);
            showMainSetShape();
        }
    }

    private void showMainSetBg() {
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_model_main_set_bg_item, (ViewGroup) null);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.bgCancel);
        ImageView imageView2 = (ImageView) viewInflate.findViewById(R.id.bgSure);
        TabLayout tabLayout = (TabLayout) viewInflate.findViewById(R.id.bgTabLayout);
        final LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.bgSetColor);
        final LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(R.id.bgSetLibrary);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.bgSetColorRecyclerView);
        final LinearLayout linearLayout3 = (LinearLayout) viewInflate.findViewById(R.id.bgSetImage);
        LinearLayout linearLayout4 = (LinearLayout) viewInflate.findViewById(R.id.bgImagePhoto);
        LinearLayout linearLayout5 = (LinearLayout) viewInflate.findViewById(R.id.bgImageAlbum);
        RecyclerView recyclerView2 = (RecyclerView) viewInflate.findViewById(R.id.bgSetLibraryRecyclerView);
        final BottomSheetDialog bottomSheetDialog = new BottomSheetDialog(this, R.style.CustomBottomSheetStyle1);
        bottomSheetDialog.setContentView(viewInflate);
        bottomSheetDialog.setCanceledOnTouchOutside(false);
        bottomSheetDialog.setCancelable(false);
        ((Window) Objects.requireNonNull(bottomSheetDialog.getWindow())).setDimAmount(0.0f);
        bottomSheetDialog.show();
        final Bitmap bitmap = ((DoodleBg) this.mDoodle.getAllItem(true).get(0)).getBitmap();
        final AtomicReference atomicReference = new AtomicReference();
        atomicReference.set(((DoodleBg) this.mDoodle.getAllItem(true).get(0)).getText());
        ((TabLayout.Tab) Objects.requireNonNull(tabLayout.getTabAt(0))).select();
        linearLayout.setVisibility(0);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.setOrientation(0);
        recyclerView.setLayoutManager(linearLayoutManager);
        final ModelBgAdapter modelBgAdapter = new ModelBgAdapter(this);
        recyclerView.setAdapter(modelBgAdapter);
        modelBgAdapter.type = (String) atomicReference.get();
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
        modelBgAdapter.setOnClickSelectViewBG(new ModelBgAdapter.OnClickSelectViewBg() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$Model2Activity$d9mugKa9OWN3wFnwyt_Lku6hLq4
            @Override // cn.highlight.work_card_write.adapter.ModelBgAdapter.OnClickSelectViewBg
            public final void onClickSelectBg(String str) {
                this.f$0.lambda$showMainSetBg$5$Model2Activity(modelBgAdapter, str);
            }
        });
        linearLayout3.setVisibility(8);
        linearLayout4.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$Model2Activity$nf6yzxFUDzSkvkTy-MBSFImgOro
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showMainSetBg$6$Model2Activity(view);
            }
        });
        linearLayout5.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$Model2Activity$ouMsJuF18oSejA7Sfm8slKVdCRI
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showMainSetBg$7$Model2Activity(view);
            }
        });
        linearLayout2.setVisibility(8);
        recyclerView2.setLayoutManager(new GridLayoutManager(this, 5));
        ModelBgLibraryAdapter modelBgLibraryAdapter = new ModelBgLibraryAdapter(this);
        recyclerView2.setAdapter(modelBgLibraryAdapter);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(Integer.valueOf(R.drawable.bg1));
        arrayList2.add(Integer.valueOf(R.drawable.bg2));
        arrayList2.add(Integer.valueOf(R.drawable.bg3));
        arrayList2.add(Integer.valueOf(R.drawable.bg4));
        arrayList2.add(Integer.valueOf(R.drawable.bg5));
        arrayList2.add(Integer.valueOf(R.drawable.bg6));
        arrayList2.add(Integer.valueOf(R.drawable.bg7));
        arrayList2.add(Integer.valueOf(R.drawable.bg8));
        arrayList2.add(Integer.valueOf(R.drawable.bg9));
        arrayList2.add(Integer.valueOf(R.drawable.bg10));
        modelBgLibraryAdapter.setDataList(arrayList2);
        modelBgLibraryAdapter.setOnClickSelectViewBG(new ModelBgLibraryAdapter.OnClickSelectViewBg() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$Model2Activity$ViqeY0a2iFKGR_WUvOt4R592UF8
            @Override // cn.highlight.work_card_write.adapter.ModelBgLibraryAdapter.OnClickSelectViewBg
            public final void onClickSelectBg(Integer num) {
                this.f$0.lambda$showMainSetBg$8$Model2Activity(num);
            }
        });
        tabLayout.addOnTabSelectedListener(new TabLayout.OnTabSelectedListener() { // from class: cn.highlight.work_card_write.activity.Model2Activity.4
            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabReselected(TabLayout.Tab tab) {
            }

            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabUnselected(TabLayout.Tab tab) {
            }

            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabSelected(TabLayout.Tab tab) {
                int position = tab.getPosition();
                linearLayout.setVisibility(8);
                linearLayout3.setVisibility(8);
                linearLayout2.setVisibility(8);
                if (position == 0) {
                    linearLayout.setVisibility(0);
                } else if (position == 1) {
                    linearLayout3.setVisibility(0);
                } else {
                    if (position != 2) {
                        return;
                    }
                    linearLayout2.setVisibility(0);
                }
            }
        });
        imageView.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$Model2Activity$ppxGtHoRPlbIpekU0l0oI34PvrE
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showMainSetBg$9$Model2Activity(bitmap, atomicReference, bottomSheetDialog, view);
            }
        });
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$Model2Activity$b_3Gh0dJ74wUJZDt_MWkBuqnlmM
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showMainSetBg$10$Model2Activity(bottomSheetDialog, view);
            }
        });
    }

    public /* synthetic */ void lambda$showMainSetBg$5$Model2Activity(ModelBgAdapter modelBgAdapter, String str) {
        modelBgAdapter.type = str;
        modelBgAdapter.notifyDataSetChanged();
        modifyBitmapBg(str);
    }

    public /* synthetic */ void lambda$showMainSetBg$6$Model2Activity(View view) {
        Intent intent = new Intent(this, (Class<?>) PhotoTakeActivity.class);
        intent.putExtra("type", 6);
        startActivityForResult(intent, 0);
    }

    public /* synthetic */ void lambda$showMainSetBg$7$Model2Activity(View view) {
        Intent intent = new Intent(this, (Class<?>) PhotoTakeActivity.class);
        intent.putExtra("type", 7);
        startActivityForResult(intent, 0);
    }

    public /* synthetic */ void lambda$showMainSetBg$8$Model2Activity(Integer num) {
        Constants.editCrop2Image = BitmapFactory.decodeResource(getResources(), num.intValue());
        this.bitmap = Constants.editCrop2Image;
        ((DoodleBg) this.mDoodle.getAllItem(true).get(0)).setBitmap(this.bitmap);
        ((DoodleBg) this.mDoodle.getAllItem(true).get(0)).setText("其他");
        this.mDoodle.refresh();
    }

    public /* synthetic */ void lambda$showMainSetBg$9$Model2Activity(Bitmap bitmap, AtomicReference atomicReference, BottomSheetDialog bottomSheetDialog, View view) {
        this.bitmap = bitmap;
        ((DoodleBg) this.mDoodle.getAllItem(true).get(0)).setBitmap(this.bitmap);
        ((DoodleBg) this.mDoodle.getAllItem(true).get(0)).setText((String) atomicReference.get());
        this.mDoodle.refresh();
        this.mTouchGestureListener.setSelectedItem(null);
        bottomSheetDialog.dismiss();
    }

    public /* synthetic */ void lambda$showMainSetBg$10$Model2Activity(BottomSheetDialog bottomSheetDialog, View view) {
        IDoodle iDoodle = this.mDoodle;
        iDoodle.addItemRecord(iDoodle.getAllItem(true).get(0), 1);
        refreshImage();
        bottomSheetDialog.dismiss();
        this.mTouchGestureListener.setSelectedItem(null);
    }

    private void modifyBitmapBg(String str) {
        int widthBySzie = BadgeSpecificationUtils.getWidthBySzie(this.modelSize) * 5;
        int heightBySzie = BadgeSpecificationUtils.getHeightBySzie(this.modelSize) * 5;
        this.bitmap = Bitmap.createBitmap(widthBySzie, heightBySzie, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(this.bitmap);
        int colorByValues = getColorByValues(str);
        Paint paint = new Paint();
        paint.setColor(colorByValues);
        canvas.drawRect(0.0f, 0.0f, widthBySzie, heightBySzie, paint);
        ((DoodleBg) this.mDoodle.getAllItem(true).get(0)).setBitmap(this.bitmap);
        ((DoodleBg) this.mDoodle.getAllItem(true).get(0)).setText(str);
        this.mDoodle.refresh();
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x04f3  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0451  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0453  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x045a  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0484  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x04c0  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x04c2  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x04c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void showMainSetText() {
        /*
            Method dump skipped, instructions count: 1377
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.highlight.work_card_write.activity.Model2Activity.showMainSetText():void");
    }

    public /* synthetic */ void lambda$showMainSetText$11$Model2Activity(ModelTextFontAdapter modelTextFontAdapter, String str) {
        modelTextFontAdapter.type = str;
        modelTextFontAdapter.notifyDataSetChanged();
        if (this.mTouchGestureListener.getSelectedItem() == null || !(this.mTouchGestureListener.getSelectedItem() instanceof DoodleText)) {
            return;
        }
        ((DoodleText) this.mTouchGestureListener.getSelectedItem()).setTypeface(this, str);
    }

    public /* synthetic */ void lambda$showMainSetText$12$Model2Activity(ModelTextStyleBgAdapter modelTextStyleBgAdapter, String str) {
        modelTextStyleBgAdapter.type = str;
        modelTextStyleBgAdapter.notifyDataSetChanged();
        int colorByValue = getColorByValue(str);
        if (this.mTouchGestureListener.getSelectedItem() == null || !(this.mTouchGestureListener.getSelectedItem() instanceof DoodleText)) {
            return;
        }
        ((DoodleText) this.mTouchGestureListener.getSelectedItem()).setBgColor(colorByValue);
    }

    public /* synthetic */ void lambda$showMainSetText$13$Model2Activity(ModelTextStyleColorAdapter modelTextStyleColorAdapter, String str) {
        modelTextStyleColorAdapter.type = str;
        modelTextStyleColorAdapter.notifyDataSetChanged();
        int colorByValue = getColorByValue(str);
        if (this.mTouchGestureListener.getSelectedItem() == null || !(this.mTouchGestureListener.getSelectedItem() instanceof DoodleText)) {
            return;
        }
        this.mTouchGestureListener.getSelectedItem().setColor(new DoodleColor(colorByValue));
    }

    public /* synthetic */ void lambda$showMainSetText$14$Model2Activity(boolean[] zArr, ImageView imageView, View view) {
        if (zArr[0]) {
            imageView.setImageResource(R.mipmap.cuti);
            imageView.setBackgroundResource(R.drawable.shape_so_bai2_st_0_co_5);
            if (this.mTouchGestureListener.getSelectedItem() != null && (this.mTouchGestureListener.getSelectedItem() instanceof DoodleText)) {
                ((DoodleText) this.mTouchGestureListener.getSelectedItem()).setBold(0);
            }
        } else {
            imageView.setImageResource(R.mipmap.cuti1);
            imageView.setBackgroundResource(R.drawable.shape_so_bai_st_hong_co_5);
            if (this.mTouchGestureListener.getSelectedItem() != null && (this.mTouchGestureListener.getSelectedItem() instanceof DoodleText)) {
                ((DoodleText) this.mTouchGestureListener.getSelectedItem()).setBold(1);
            }
        }
        zArr[0] = !zArr[0];
    }

    public /* synthetic */ void lambda$showMainSetText$15$Model2Activity(boolean[] zArr, ImageView imageView, View view) {
        if (zArr[0]) {
            imageView.setImageResource(R.mipmap.xieti);
            imageView.setBackgroundResource(R.drawable.shape_so_bai2_st_0_co_5);
            if (this.mTouchGestureListener.getSelectedItem() != null && (this.mTouchGestureListener.getSelectedItem() instanceof DoodleText)) {
                ((DoodleText) this.mTouchGestureListener.getSelectedItem()).setItalic(0);
            }
        } else {
            imageView.setImageResource(R.mipmap.xieti1);
            imageView.setBackgroundResource(R.drawable.shape_so_bai_st_hong_co_5);
            if (this.mTouchGestureListener.getSelectedItem() != null && (this.mTouchGestureListener.getSelectedItem() instanceof DoodleText)) {
                ((DoodleText) this.mTouchGestureListener.getSelectedItem()).setItalic(1);
            }
        }
        zArr[0] = !zArr[0];
    }

    public /* synthetic */ void lambda$showMainSetText$16$Model2Activity(boolean[] zArr, ImageView imageView, View view) {
        if (zArr[0]) {
            imageView.setImageResource(R.mipmap.xiahuaxian);
            imageView.setBackgroundResource(R.drawable.shape_so_bai2_st_0_co_5);
            if (this.mTouchGestureListener.getSelectedItem() != null && (this.mTouchGestureListener.getSelectedItem() instanceof DoodleText)) {
                ((DoodleText) this.mTouchGestureListener.getSelectedItem()).setUnderline(0);
            }
        } else {
            imageView.setImageResource(R.mipmap.xiahuaxian1);
            imageView.setBackgroundResource(R.drawable.shape_so_bai_st_hong_co_5);
            if (this.mTouchGestureListener.getSelectedItem() != null && (this.mTouchGestureListener.getSelectedItem() instanceof DoodleText)) {
                ((DoodleText) this.mTouchGestureListener.getSelectedItem()).setUnderline(1);
            }
        }
        zArr[0] = !zArr[0];
    }

    public /* synthetic */ void lambda$showMainSetText$17$Model2Activity(boolean z, String[] strArr, AtomicReference atomicReference, AtomicReference atomicReference2, AtomicReference atomicReference3, float[] fArr, int[] iArr, int[] iArr2, int[] iArr3, BottomSheetDialog bottomSheetDialog, View view) {
        if (z) {
            if (this.mTouchGestureListener.getSelectedItem() != null && (this.mTouchGestureListener.getSelectedItem() instanceof DoodleText)) {
                ((DoodleText) this.mTouchGestureListener.getSelectedItem()).setText1(strArr[0]);
                ((DoodleText) this.mTouchGestureListener.getSelectedItem()).setTypeface(this, (String) atomicReference.get());
                ((DoodleText) this.mTouchGestureListener.getSelectedItem()).setBgColor(getColorByValue((String) atomicReference2.get()));
                this.mTouchGestureListener.getSelectedItem().setColor(new DoodleColor(getColorByValue((String) atomicReference3.get())));
                this.mTouchGestureListener.getSelectedItem().setScale(fArr[0]);
                ((DoodleText) this.mTouchGestureListener.getSelectedItem()).setBold(iArr[0]);
                ((DoodleText) this.mTouchGestureListener.getSelectedItem()).setItalic(iArr2[0]);
                ((DoodleText) this.mTouchGestureListener.getSelectedItem()).setUnderline(iArr3[0]);
            }
        } else if (this.mTouchGestureListener.getSelectedItem() != null && (this.mTouchGestureListener.getSelectedItem() instanceof DoodleText)) {
            this.mDoodle.getAllRedoItem(true).add(0, this.mTouchGestureListener.getSelectedItem());
            this.mDoodle.removeItem(this.mTouchGestureListener.getSelectedItem());
            this.mTouchGestureListener.setSelectedItem(null);
        }
        this.mDoodle.refresh();
        bottomSheetDialog.dismiss();
        hideSoftKeyBoard(this.textEdit);
    }

    public /* synthetic */ void lambda$showMainSetText$18$Model2Activity(boolean z, BottomSheetDialog bottomSheetDialog, View view) {
        if (Tools.isNull(Tools.getText(this.textEdit)) && this.mTouchGestureListener.getSelectedItem() != null && (this.mTouchGestureListener.getSelectedItem() instanceof DoodleText)) {
            this.mDoodle.getAllRedoItem(true).add(0, this.mTouchGestureListener.getSelectedItem());
            this.mDoodle.removeItem(this.mTouchGestureListener.getSelectedItem());
            this.mTouchGestureListener.setSelectedItem(null);
        }
        if (this.mTouchGestureListener.getSelectedItem() != null && (this.mTouchGestureListener.getSelectedItem() instanceof DoodleText)) {
            ((DoodleText) this.mTouchGestureListener.getSelectedItem()).setText0(Tools.getText(this.textEdit));
            if (z) {
                this.mDoodle.addItemRecord(this.mTouchGestureListener.getSelectedItem(), 1);
            } else {
                this.mDoodle.addItemRecord(this.mTouchGestureListener.getSelectedItem(), 0);
                this.mDoodle.clearRedoRecord();
            }
        }
        this.mDoodle.refresh();
        bottomSheetDialog.dismiss();
        hideSoftKeyBoard(this.textEdit);
        refreshImage();
    }

    private void showMainSetImage() {
        ImageView imageView;
        int i;
        boolean z;
        Bitmap bitmap;
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_model_main_set_image_item, (ViewGroup) null);
        ImageView imageView2 = (ImageView) viewInflate.findViewById(R.id.imageCancel);
        TabLayout tabLayout = (TabLayout) viewInflate.findViewById(R.id.imageTabLayout);
        ImageView imageView3 = (ImageView) viewInflate.findViewById(R.id.imageSure);
        final LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.imageSetEdit);
        LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(R.id.imageEditPhoto);
        LinearLayout linearLayout3 = (LinearLayout) viewInflate.findViewById(R.id.imageEditAlbum);
        final LinearLayout linearLayout4 = (LinearLayout) viewInflate.findViewById(R.id.imageSetSize);
        SeekBar seekBar = (SeekBar) viewInflate.findViewById(R.id.imageSizeSeekBar);
        final TextView textView = (TextView) viewInflate.findViewById(R.id.imageSizeSeekBarProgress);
        final LinearLayout linearLayout5 = (LinearLayout) viewInflate.findViewById(R.id.imageSetLibrary);
        TabLayout tabLayout2 = (TabLayout) viewInflate.findViewById(R.id.imageLibraryTabLayout);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.imageSetLibraryRecyclerView);
        final BottomSheetDialog bottomSheetDialog = new BottomSheetDialog(this, R.style.CustomBottomSheetStyle1);
        bottomSheetDialog.setContentView(viewInflate);
        bottomSheetDialog.setCanceledOnTouchOutside(false);
        bottomSheetDialog.setCancelable(false);
        ((Window) Objects.requireNonNull(bottomSheetDialog.getWindow())).setDimAmount(0.0f);
        bottomSheetDialog.show();
        final float[] fArr = {1.0f};
        if (this.mTouchGestureListener.getSelectedItem() == null || !(this.mTouchGestureListener.getSelectedItem() instanceof DoodleBitmap)) {
            imageView = imageView3;
            i = 0;
            z = false;
            bitmap = null;
        } else {
            bitmap = ((DoodleBitmap) this.mTouchGestureListener.getSelectedItem()).getBitmap();
            imageView = imageView3;
            i = 0;
            fArr[0] = this.mTouchGestureListener.getSelectedItem().getScale();
            z = true;
        }
        linearLayout.setVisibility(i);
        linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$Model2Activity$QkRw007qKqlZdUzG4c2Gd_Bhjoc
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showMainSetImage$19$Model2Activity(view);
            }
        });
        linearLayout3.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$Model2Activity$erbvG9zXVbLxwuWQrgJqa1NM30g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showMainSetImage$20$Model2Activity(view);
            }
        });
        linearLayout5.setVisibility(8);
        ((TabLayout.Tab) Objects.requireNonNull(tabLayout2.getTabAt(0))).select();
        recyclerView.setLayoutManager(new GridLayoutManager(this, 5));
        ModelimageLibraryAdapter modelimageLibraryAdapter = new ModelimageLibraryAdapter(this);
        recyclerView.setAdapter(modelimageLibraryAdapter);
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(R.drawable.rm1));
        arrayList.add(Integer.valueOf(R.drawable.rm2));
        arrayList.add(Integer.valueOf(R.drawable.rm3));
        arrayList.add(Integer.valueOf(R.drawable.rm4));
        arrayList.add(Integer.valueOf(R.drawable.rm5));
        arrayList.add(Integer.valueOf(R.drawable.rm6));
        arrayList.add(Integer.valueOf(R.drawable.rm7));
        arrayList.add(Integer.valueOf(R.drawable.rm8));
        arrayList.add(Integer.valueOf(R.drawable.rm9));
        arrayList.add(Integer.valueOf(R.drawable.rm10));
        arrayList.add(Integer.valueOf(R.drawable.rm11));
        arrayList.add(Integer.valueOf(R.drawable.rm12));
        arrayList.add(Integer.valueOf(R.drawable.rm13));
        arrayList.add(Integer.valueOf(R.drawable.rm14));
        arrayList.add(Integer.valueOf(R.drawable.rm15));
        arrayList.add(Integer.valueOf(R.drawable.rm16));
        arrayList.add(Integer.valueOf(R.drawable.rm17));
        arrayList.add(Integer.valueOf(R.drawable.rm18));
        modelimageLibraryAdapter.setDataList(arrayList);
        modelimageLibraryAdapter.setOnClickSelectViewBG(new ModelimageLibraryAdapter.OnClickSelectViewBg() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$Model2Activity$4DcSe8zf1wkD-2cBeizMBN7AJeI
            @Override // cn.highlight.work_card_write.adapter.ModelimageLibraryAdapter.OnClickSelectViewBg
            public final void onClickSelectBg(Integer num) {
                this.f$0.lambda$showMainSetImage$21$Model2Activity(num);
            }
        });
        tabLayout2.addOnTabSelectedListener(new AnonymousClass8(recyclerView));
        linearLayout4.setVisibility(8);
        int iRound = Math.round((fArr[0] - 0.25f) / 0.0103124995f);
        seekBar.setProgress(iRound);
        textView.setText(String.valueOf(iRound + 20));
        seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: cn.highlight.work_card_write.activity.Model2Activity.9
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar2) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar2) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar2, int i2, boolean z2) {
                textView.setText(String.valueOf(i2 + 20));
                if (Model2Activity.this.mTouchGestureListener.getSelectedItem() != null && (Model2Activity.this.mTouchGestureListener.getSelectedItem() instanceof DoodleBitmap) && (Model2Activity.this.mTouchGestureListener.getSelectedItem() instanceof DoodleBitmap)) {
                    Model2Activity.this.mTouchGestureListener.getSelectedItem().setScale((i2 * 0.0103124995f) + 0.25f);
                }
            }
        });
        tabLayout.addOnTabSelectedListener(new TabLayout.OnTabSelectedListener() { // from class: cn.highlight.work_card_write.activity.Model2Activity.10
            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabReselected(TabLayout.Tab tab) {
            }

            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabUnselected(TabLayout.Tab tab) {
            }

            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabSelected(TabLayout.Tab tab) {
                int position = tab.getPosition();
                linearLayout.setVisibility(8);
                linearLayout4.setVisibility(8);
                linearLayout5.setVisibility(8);
                if (position == 0) {
                    linearLayout.setVisibility(0);
                } else if (position == 1) {
                    linearLayout5.setVisibility(0);
                } else {
                    if (position != 2) {
                        return;
                    }
                    linearLayout4.setVisibility(0);
                }
            }
        });
        final boolean z2 = z;
        final Bitmap bitmap2 = bitmap;
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$Model2Activity$T0wChzXdI7OB8lU8_pdktFvg-dI
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showMainSetImage$22$Model2Activity(z2, bitmap2, fArr, bottomSheetDialog, view);
            }
        });
        imageView.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$Model2Activity$CHg6ESTUYBTqtnHBwUe2ePKCXT0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showMainSetImage$23$Model2Activity(z2, bottomSheetDialog, view);
            }
        });
    }

    public /* synthetic */ void lambda$showMainSetImage$19$Model2Activity(View view) {
        Intent intent = new Intent(this, (Class<?>) PhotoTakeActivity.class);
        intent.putExtra("type", 8);
        startActivityForResult(intent, 1);
    }

    public /* synthetic */ void lambda$showMainSetImage$20$Model2Activity(View view) {
        Intent intent = new Intent(this, (Class<?>) PhotoTakeActivity.class);
        intent.putExtra("type", 9);
        startActivityForResult(intent, 1);
    }

    public /* synthetic */ void lambda$showMainSetImage$21$Model2Activity(Integer num) {
        Constants.editCrop2Image = BitmapFactory.decodeResource(getResources(), num.intValue());
        Bitmap bitmap = Constants.editCrop2Image;
        if (this.mTouchGestureListener.getSelectedItem() instanceof DoodleBitmap) {
            createDoodleBitmap((DoodleBitmap) this.mTouchGestureListener.getSelectedItem(), bitmap);
        } else {
            createDoodleBitmap(null, bitmap);
        }
    }

    /* renamed from: cn.highlight.work_card_write.activity.Model2Activity$8, reason: invalid class name */
    class AnonymousClass8 implements TabLayout.BaseOnTabSelectedListener {
        final /* synthetic */ RecyclerView val$imageSetLibraryRecyclerView;

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabReselected(TabLayout.Tab tab) {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(TabLayout.Tab tab) {
        }

        AnonymousClass8(RecyclerView recyclerView) {
            this.val$imageSetLibraryRecyclerView = recyclerView;
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabSelected(TabLayout.Tab tab) {
            if (tab.getPosition() == 0) {
                this.val$imageSetLibraryRecyclerView.setLayoutManager(new GridLayoutManager(Model2Activity.this, 5));
                ModelimageLibraryAdapter modelimageLibraryAdapter = new ModelimageLibraryAdapter(Model2Activity.this);
                this.val$imageSetLibraryRecyclerView.setAdapter(modelimageLibraryAdapter);
                ArrayList arrayList = new ArrayList();
                arrayList.add(Integer.valueOf(R.drawable.rm1));
                arrayList.add(Integer.valueOf(R.drawable.rm2));
                arrayList.add(Integer.valueOf(R.drawable.rm3));
                arrayList.add(Integer.valueOf(R.drawable.rm4));
                arrayList.add(Integer.valueOf(R.drawable.rm5));
                arrayList.add(Integer.valueOf(R.drawable.rm6));
                arrayList.add(Integer.valueOf(R.drawable.rm7));
                arrayList.add(Integer.valueOf(R.drawable.rm8));
                arrayList.add(Integer.valueOf(R.drawable.rm9));
                arrayList.add(Integer.valueOf(R.drawable.rm10));
                arrayList.add(Integer.valueOf(R.drawable.rm11));
                arrayList.add(Integer.valueOf(R.drawable.rm12));
                arrayList.add(Integer.valueOf(R.drawable.rm13));
                arrayList.add(Integer.valueOf(R.drawable.rm14));
                arrayList.add(Integer.valueOf(R.drawable.rm15));
                arrayList.add(Integer.valueOf(R.drawable.rm16));
                arrayList.add(Integer.valueOf(R.drawable.rm17));
                arrayList.add(Integer.valueOf(R.drawable.rm18));
                modelimageLibraryAdapter.setDataList(arrayList);
                modelimageLibraryAdapter.setOnClickSelectViewBG(new ModelimageLibraryAdapter.OnClickSelectViewBg() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$Model2Activity$8$LQbYXG5BQgfopPl9mA2Gy_rBAqw
                    @Override // cn.highlight.work_card_write.adapter.ModelimageLibraryAdapter.OnClickSelectViewBg
                    public final void onClickSelectBg(Integer num) {
                        this.f$0.lambda$onTabSelected$0$Model2Activity$8(num);
                    }
                });
                return;
            }
            this.val$imageSetLibraryRecyclerView.setLayoutManager(new GridLayoutManager(Model2Activity.this, 5));
            ModelimageLibraryIconAdapter modelimageLibraryIconAdapter = new ModelimageLibraryIconAdapter(Model2Activity.this);
            this.val$imageSetLibraryRecyclerView.setAdapter(modelimageLibraryIconAdapter);
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(Integer.valueOf(R.drawable.icon0));
            arrayList2.add(Integer.valueOf(R.drawable.icon1));
            arrayList2.add(Integer.valueOf(R.drawable.icon2));
            arrayList2.add(Integer.valueOf(R.drawable.icon3));
            arrayList2.add(Integer.valueOf(R.drawable.icon4));
            arrayList2.add(Integer.valueOf(R.drawable.icon5));
            arrayList2.add(Integer.valueOf(R.drawable.icon6));
            arrayList2.add(Integer.valueOf(R.drawable.icon7));
            arrayList2.add(Integer.valueOf(R.drawable.icon8));
            arrayList2.add(Integer.valueOf(R.drawable.icon9));
            arrayList2.add(Integer.valueOf(R.drawable.icon10));
            arrayList2.add(Integer.valueOf(R.drawable.icon11));
            arrayList2.add(Integer.valueOf(R.drawable.icon12));
            arrayList2.add(Integer.valueOf(R.drawable.icon13));
            arrayList2.add(Integer.valueOf(R.drawable.icon14));
            arrayList2.add(Integer.valueOf(R.drawable.icon15));
            arrayList2.add(Integer.valueOf(R.drawable.icon16));
            arrayList2.add(Integer.valueOf(R.drawable.icon17));
            arrayList2.add(Integer.valueOf(R.drawable.icon18));
            arrayList2.add(Integer.valueOf(R.drawable.icon19));
            modelimageLibraryIconAdapter.setDataList(arrayList2);
            modelimageLibraryIconAdapter.setOnClickSelectViewBG(new ModelimageLibraryIconAdapter.OnClickSelectViewBg() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$Model2Activity$8$7Rmx5dmRJS13NNYaJvjbezMiPX0
                @Override // cn.highlight.work_card_write.adapter.ModelimageLibraryIconAdapter.OnClickSelectViewBg
                public final void onClickSelectBg(Integer num) {
                    this.f$0.lambda$onTabSelected$1$Model2Activity$8(num);
                }
            });
        }

        public /* synthetic */ void lambda$onTabSelected$0$Model2Activity$8(Integer num) {
            Constants.editCrop2Image = BitmapFactory.decodeResource(Model2Activity.this.getResources(), num.intValue());
            Bitmap bitmap = Constants.editCrop2Image;
            if (!(Model2Activity.this.mTouchGestureListener.getSelectedItem() instanceof DoodleBitmap)) {
                Model2Activity.this.createDoodleBitmap(null, bitmap);
            } else {
                Model2Activity model2Activity = Model2Activity.this;
                model2Activity.createDoodleBitmap((DoodleBitmap) model2Activity.mTouchGestureListener.getSelectedItem(), bitmap);
            }
        }

        public /* synthetic */ void lambda$onTabSelected$1$Model2Activity$8(Integer num) {
            Constants.editCrop2Image = BitmapFactory.decodeResource(Model2Activity.this.getResources(), num.intValue());
            Bitmap bitmap = Constants.editCrop2Image;
            if (!(Model2Activity.this.mTouchGestureListener.getSelectedItem() instanceof DoodleBitmap)) {
                Model2Activity.this.createDoodleBitmap(null, bitmap);
            } else {
                Model2Activity model2Activity = Model2Activity.this;
                model2Activity.createDoodleBitmap((DoodleBitmap) model2Activity.mTouchGestureListener.getSelectedItem(), bitmap);
            }
        }
    }

    public /* synthetic */ void lambda$showMainSetImage$22$Model2Activity(boolean z, Bitmap bitmap, float[] fArr, BottomSheetDialog bottomSheetDialog, View view) {
        if (z) {
            if (this.mTouchGestureListener.getSelectedItem() != null && (this.mTouchGestureListener.getSelectedItem() instanceof DoodleBitmap)) {
                ((DoodleBitmap) this.mTouchGestureListener.getSelectedItem()).setBitmap(bitmap);
                this.mTouchGestureListener.getSelectedItem().setScale(fArr[0]);
            }
        } else if (this.mTouchGestureListener.getSelectedItem() != null && (this.mTouchGestureListener.getSelectedItem() instanceof DoodleBitmap)) {
            this.mDoodle.getAllRedoItem(true).add(0, this.mTouchGestureListener.getSelectedItem());
            this.mDoodle.removeItem(this.mTouchGestureListener.getSelectedItem());
            this.mTouchGestureListener.setSelectedItem(null);
        }
        this.mDoodle.refresh();
        bottomSheetDialog.dismiss();
    }

    public /* synthetic */ void lambda$showMainSetImage$23$Model2Activity(boolean z, BottomSheetDialog bottomSheetDialog, View view) {
        if (this.mTouchGestureListener.getSelectedItem() != null && (this.mTouchGestureListener.getSelectedItem() instanceof DoodleBitmap)) {
            if (z) {
                this.mDoodle.addItemRecord(this.mTouchGestureListener.getSelectedItem(), 1);
            } else {
                this.mDoodle.addItemRecord(this.mTouchGestureListener.getSelectedItem(), 0);
                this.mDoodle.clearRedoRecord();
            }
        }
        bottomSheetDialog.dismiss();
        refreshImage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createDoodleBitmap(DoodleBitmap doodleBitmap, Bitmap bitmap) {
        if (bitmap == null) {
            return;
        }
        float f = getResources().getDisplayMetrics().density * 30.0f;
        int width = this.mFrameLayout.getWidth() - Math.round(f);
        int height = (this.mFrameLayout.getHeight() - Math.round(f)) - ((this.DEFAULT_BITMAP_SIZE * bitmap.getHeight()) / bitmap.getWidth());
        float x = this.mDoodleView.toX((width - (r0 / 2)) / 2);
        float y = this.mDoodleView.toY(height / 2);
        if (doodleBitmap == null) {
            DoodleBitmap doodleBitmap2 = new DoodleBitmap(this.mDoodle, bitmap, this.DEFAULT_BITMAP_SIZE, x, y);
            this.mDoodle.addItem(doodleBitmap2);
            this.mTouchGestureListener.setSelectedItem(doodleBitmap2);
        } else {
            doodleBitmap.setBitmap(bitmap);
        }
        this.mDoodle.refresh();
    }

    private void showMainSetQRCode() {
        int i;
        boolean z;
        Bitmap bitmap;
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_model_main_set_qrcode_item, (ViewGroup) null);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.qrCancel);
        ImageView imageView2 = (ImageView) viewInflate.findViewById(R.id.qrSure);
        TabLayout tabLayout = (TabLayout) viewInflate.findViewById(R.id.QCTabLayout);
        final LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.linearEdit);
        final EditText editText = (EditText) viewInflate.findViewById(R.id.qrEdit);
        final LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(R.id.linearStyle);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.bgRecyclerView);
        RecyclerView recyclerView2 = (RecyclerView) viewInflate.findViewById(R.id.fgRecyclerView);
        final BottomSheetDialog bottomSheetDialog = new BottomSheetDialog(this, R.style.CustomBottomSheetStyle1);
        bottomSheetDialog.setContentView(viewInflate);
        bottomSheetDialog.setCanceledOnTouchOutside(false);
        bottomSheetDialog.setCancelable(false);
        ((Window) Objects.requireNonNull(bottomSheetDialog.getWindow())).setDimAmount(0.0f);
        bottomSheetDialog.show();
        final String[] strArr = {""};
        final AtomicReference atomicReference = new AtomicReference("透明");
        final AtomicReference atomicReference2 = new AtomicReference("黑色");
        if (this.mTouchGestureListener.getSelectedItem() == null || !(this.mTouchGestureListener.getSelectedItem() instanceof DoodleQRCode)) {
            i = 0;
            z = false;
            bitmap = null;
        } else {
            Bitmap bitmap2 = ((DoodleQRCode) this.mTouchGestureListener.getSelectedItem()).getBitmap();
            strArr[0] = ((DoodleQRCode) this.mTouchGestureListener.getSelectedItem()).getText();
            int bgColor = ((DoodleQRCode) this.mTouchGestureListener.getSelectedItem()).getBgColor();
            bitmap = bitmap2;
            int fgColor = ((DoodleQRCode) this.mTouchGestureListener.getSelectedItem()).getFgColor();
            atomicReference.set(getValueByColor(bgColor));
            atomicReference2.set(getValueByColor(fgColor));
            i = 0;
            z = true;
        }
        linearLayout.setVisibility(i);
        editText.setInputType(1);
        if (this.mTouchGestureListener.getSelectedItem() != null && (this.mTouchGestureListener.getSelectedItem() instanceof DoodleQRCode)) {
            editText.setText(((DoodleQRCode) this.mTouchGestureListener.getSelectedItem()).getText());
        }
        linearLayout2.setVisibility(8);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.setOrientation(0);
        recyclerView.setLayoutManager(linearLayoutManager);
        final ModelCodeStyleBgAdapter modelCodeStyleBgAdapter = new ModelCodeStyleBgAdapter(this);
        recyclerView.setAdapter(modelCodeStyleBgAdapter);
        ArrayList arrayList = new ArrayList();
        arrayList.add("透明");
        if (this.modelColor.contains("黑白")) {
            arrayList.add("黑色");
            arrayList.add("白色");
        }
        final boolean z2 = z;
        if (this.modelColor.contains("红")) {
            arrayList.add("红色");
        }
        if (this.modelColor.contains("黄")) {
            arrayList.add("黄色");
        }
        modelCodeStyleBgAdapter.type = (String) atomicReference.get();
        modelCodeStyleBgAdapter.setDataList(arrayList, "黑色");
        LinearLayoutManager linearLayoutManager2 = new LinearLayoutManager(this);
        linearLayoutManager2.setOrientation(0);
        recyclerView2.setLayoutManager(linearLayoutManager2);
        final ModelCodeStyleBgAdapter modelCodeStyleBgAdapter2 = new ModelCodeStyleBgAdapter(this);
        recyclerView2.setAdapter(modelCodeStyleBgAdapter2);
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
        modelCodeStyleBgAdapter2.type = (String) atomicReference2.get();
        modelCodeStyleBgAdapter2.setDataList(arrayList2, "透明");
        modelCodeStyleBgAdapter.setOnClickSelectViewBG(new ModelCodeStyleBgAdapter.OnClickSelectViewBg() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$Model2Activity$lLtejV6zHIyLepA0zdWeG5y6FpQ
            @Override // cn.highlight.work_card_write.adapter.ModelCodeStyleBgAdapter.OnClickSelectViewBg
            public final void onClickSelectBg(String str) {
                this.f$0.lambda$showMainSetQRCode$24$Model2Activity(modelCodeStyleBgAdapter2, modelCodeStyleBgAdapter, editText, str);
            }
        });
        modelCodeStyleBgAdapter2.setOnClickSelectViewBG(new ModelCodeStyleBgAdapter.OnClickSelectViewBg() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$Model2Activity$wiC7oogV5gmUphFsVxNMW9okZXE
            @Override // cn.highlight.work_card_write.adapter.ModelCodeStyleBgAdapter.OnClickSelectViewBg
            public final void onClickSelectBg(String str) {
                this.f$0.lambda$showMainSetQRCode$25$Model2Activity(modelCodeStyleBgAdapter, modelCodeStyleBgAdapter2, editText, str);
            }
        });
        tabLayout.addOnTabSelectedListener(new TabLayout.OnTabSelectedListener() { // from class: cn.highlight.work_card_write.activity.Model2Activity.11
            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabReselected(TabLayout.Tab tab) {
            }

            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabUnselected(TabLayout.Tab tab) {
            }

            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabSelected(TabLayout.Tab tab) {
                int position = tab.getPosition();
                linearLayout.setVisibility(8);
                linearLayout2.setVisibility(8);
                if (position == 0) {
                    linearLayout.setVisibility(0);
                } else {
                    if (position != 1) {
                        return;
                    }
                    linearLayout2.setVisibility(0);
                }
            }
        });
        final Bitmap bitmap3 = bitmap;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$Model2Activity$L4npzjbKvHVOv5m3ICd3fqbtroc
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showMainSetQRCode$26$Model2Activity(z2, bitmap3, strArr, atomicReference, atomicReference2, bottomSheetDialog, editText, view);
            }
        });
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$Model2Activity$-xLLnTBdHhi1hQzVfCi-wjBbn3U
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showMainSetQRCode$27$Model2Activity(editText, modelCodeStyleBgAdapter, modelCodeStyleBgAdapter2, bottomSheetDialog, view);
            }
        });
    }

    public /* synthetic */ void lambda$showMainSetQRCode$24$Model2Activity(ModelCodeStyleBgAdapter modelCodeStyleBgAdapter, ModelCodeStyleBgAdapter modelCodeStyleBgAdapter2, EditText editText, String str) {
        if (str.equals(modelCodeStyleBgAdapter.type)) {
            ToastUtil.showToast(this, getResources().getString(R.string.model_barcode_style_select));
            return;
        }
        modelCodeStyleBgAdapter.otherType = str;
        modelCodeStyleBgAdapter.notifyDataSetChanged();
        modelCodeStyleBgAdapter2.type = str;
        modelCodeStyleBgAdapter2.notifyDataSetChanged();
        String string = editText.getText().toString();
        if (Tools.isNull(string) || this.mTouchGestureListener.getSelectedItem() == null || !(this.mTouchGestureListener.getSelectedItem() instanceof DoodleQRCode)) {
            return;
        }
        ((DoodleQRCode) this.mTouchGestureListener.getSelectedItem()).setBitmap(CodeUtils.generateQRCodeWithoutMargin(string, this.DEFAULT_BITMAP_SIZE, getColorByValue(modelCodeStyleBgAdapter2.type), getColorByValue(modelCodeStyleBgAdapter.type)), string, getColorByValue(modelCodeStyleBgAdapter2.type), getColorByValue(modelCodeStyleBgAdapter.type));
    }

    public /* synthetic */ void lambda$showMainSetQRCode$25$Model2Activity(ModelCodeStyleBgAdapter modelCodeStyleBgAdapter, ModelCodeStyleBgAdapter modelCodeStyleBgAdapter2, EditText editText, String str) {
        if (str.equals(modelCodeStyleBgAdapter.type)) {
            ToastUtil.showToast(this, getResources().getString(R.string.model_barcode_style_select));
            return;
        }
        modelCodeStyleBgAdapter.otherType = str;
        modelCodeStyleBgAdapter.notifyDataSetChanged();
        modelCodeStyleBgAdapter2.type = str;
        modelCodeStyleBgAdapter2.notifyDataSetChanged();
        String string = editText.getText().toString();
        if (Tools.isNull(string) || this.mTouchGestureListener.getSelectedItem() == null || !(this.mTouchGestureListener.getSelectedItem() instanceof DoodleQRCode)) {
            return;
        }
        ((DoodleQRCode) this.mTouchGestureListener.getSelectedItem()).setBitmap(CodeUtils.generateQRCodeWithoutMargin(string, this.DEFAULT_BITMAP_SIZE, getColorByValue(modelCodeStyleBgAdapter.type), getColorByValue(modelCodeStyleBgAdapter2.type)), string, getColorByValue(modelCodeStyleBgAdapter.type), getColorByValue(modelCodeStyleBgAdapter2.type));
    }

    public /* synthetic */ void lambda$showMainSetQRCode$26$Model2Activity(boolean z, Bitmap bitmap, String[] strArr, AtomicReference atomicReference, AtomicReference atomicReference2, BottomSheetDialog bottomSheetDialog, EditText editText, View view) {
        if (z && this.mTouchGestureListener.getSelectedItem() != null && (this.mTouchGestureListener.getSelectedItem() instanceof DoodleQRCode)) {
            ((DoodleQRCode) this.mTouchGestureListener.getSelectedItem()).setBitmap(bitmap, strArr[0], getColorByValue((String) atomicReference.get()), getColorByValue((String) atomicReference2.get()));
        }
        this.mDoodle.refresh();
        bottomSheetDialog.dismiss();
        hideSoftKeyBoard(editText);
    }

    public /* synthetic */ void lambda$showMainSetQRCode$27$Model2Activity(EditText editText, ModelCodeStyleBgAdapter modelCodeStyleBgAdapter, ModelCodeStyleBgAdapter modelCodeStyleBgAdapter2, BottomSheetDialog bottomSheetDialog, View view) {
        String string = editText.getText().toString();
        if (Tools.isNull(string)) {
            return;
        }
        Bitmap bitmapGenerateQRCodeWithoutMargin = CodeUtils.generateQRCodeWithoutMargin(string, this.DEFAULT_BITMAP_SIZE, getColorByValue(modelCodeStyleBgAdapter.type), getColorByValue(modelCodeStyleBgAdapter2.type));
        if (this.mTouchGestureListener.getSelectedItem() instanceof DoodleQRCode) {
            createDoodleQRCode((DoodleQRCode) this.mTouchGestureListener.getSelectedItem(), bitmapGenerateQRCodeWithoutMargin, string, getColorByValue(modelCodeStyleBgAdapter.type), getColorByValue(modelCodeStyleBgAdapter2.type));
            this.mDoodle.addItemRecord(this.mTouchGestureListener.getSelectedItem(), 1);
        } else {
            createDoodleQRCode(null, bitmapGenerateQRCodeWithoutMargin, string, getColorByValue(modelCodeStyleBgAdapter.type), getColorByValue(modelCodeStyleBgAdapter2.type));
            this.mDoodle.addItemRecord(this.mTouchGestureListener.getSelectedItem(), 0);
            this.mDoodle.clearRedoRecord();
        }
        bottomSheetDialog.dismiss();
        hideSoftKeyBoard(editText);
        refreshImage();
    }

    private void createDoodleQRCode(DoodleQRCode doodleQRCode, Bitmap bitmap, String str, int i, int i2) {
        if (bitmap == null) {
            return;
        }
        float f = getResources().getDisplayMetrics().density * 30.0f;
        int width = this.mFrameLayout.getWidth() - Math.round(f);
        int height = (this.mFrameLayout.getHeight() - Math.round(f)) - ((this.DEFAULT_BITMAP_SIZE * bitmap.getHeight()) / bitmap.getWidth());
        float x = this.mDoodleView.toX((width - (r1 / 2)) / 2);
        float y = this.mDoodleView.toY(height / 2);
        if (doodleQRCode == null) {
            DoodleQRCode doodleQRCode2 = new DoodleQRCode(this.mDoodle, bitmap, str, i, i2, this.DEFAULT_BITMAP_SIZE, x, y);
            this.mDoodle.addItem(doodleQRCode2);
            this.mTouchGestureListener.setSelectedItem(doodleQRCode2);
        } else {
            doodleQRCode.setBitmap(bitmap, str, i, i2);
        }
        this.mDoodle.refresh();
    }

    private void showMainSetBarCode() {
        int i;
        boolean z;
        Bitmap bitmap;
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_model_main_set_barcode_item, (ViewGroup) null);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.barCancel);
        ImageView imageView2 = (ImageView) viewInflate.findViewById(R.id.barSure);
        TabLayout tabLayout = (TabLayout) viewInflate.findViewById(R.id.BCTabLayout);
        final LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.linearEdit);
        final EditText editText = (EditText) viewInflate.findViewById(R.id.barEdit);
        final LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(R.id.linearStyle);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.bgRecyclerView);
        RecyclerView recyclerView2 = (RecyclerView) viewInflate.findViewById(R.id.fgRecyclerView);
        final BottomSheetDialog bottomSheetDialog = new BottomSheetDialog(this, R.style.CustomBottomSheetStyle1);
        bottomSheetDialog.setContentView(viewInflate);
        bottomSheetDialog.setCanceledOnTouchOutside(false);
        bottomSheetDialog.setCancelable(false);
        ((Window) Objects.requireNonNull(bottomSheetDialog.getWindow())).setDimAmount(0.0f);
        bottomSheetDialog.show();
        final String[] strArr = {""};
        final AtomicReference atomicReference = new AtomicReference("透明");
        final AtomicReference atomicReference2 = new AtomicReference("黑色");
        if (this.mTouchGestureListener.getSelectedItem() == null || !(this.mTouchGestureListener.getSelectedItem() instanceof DoodleBarCode)) {
            i = 0;
            z = false;
            bitmap = null;
        } else {
            Bitmap bitmap2 = ((DoodleBarCode) this.mTouchGestureListener.getSelectedItem()).getBitmap();
            strArr[0] = ((DoodleBarCode) this.mTouchGestureListener.getSelectedItem()).getText();
            int bgColor = ((DoodleBarCode) this.mTouchGestureListener.getSelectedItem()).getBgColor();
            bitmap = bitmap2;
            int fgColor = ((DoodleBarCode) this.mTouchGestureListener.getSelectedItem()).getFgColor();
            atomicReference.set(getValueByColor(bgColor));
            atomicReference2.set(getValueByColor(fgColor));
            i = 0;
            z = true;
        }
        linearLayout.setVisibility(i);
        InputFilter[] inputFilterArr = new InputFilter[1];
        inputFilterArr[i] = new InputFilter() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$Model2Activity$2fCV7wzjOhUsu0_szZG4q7wlNW8
            @Override // android.text.InputFilter
            public final CharSequence filter(CharSequence charSequence, int i2, int i3, Spanned spanned, int i4, int i5) {
                return Model2Activity.lambda$showMainSetBarCode$28(charSequence, i2, i3, spanned, i4, i5);
            }
        };
        editText.setFilters(inputFilterArr);
        editText.setInputType(145);
        if (this.mTouchGestureListener.getSelectedItem() != null && (this.mTouchGestureListener.getSelectedItem() instanceof DoodleBarCode)) {
            editText.setText(((DoodleBarCode) this.mTouchGestureListener.getSelectedItem()).getText());
        }
        linearLayout2.setVisibility(8);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.setOrientation(0);
        recyclerView.setLayoutManager(linearLayoutManager);
        final ModelCodeStyleBgAdapter modelCodeStyleBgAdapter = new ModelCodeStyleBgAdapter(this);
        recyclerView.setAdapter(modelCodeStyleBgAdapter);
        ArrayList arrayList = new ArrayList();
        arrayList.add("透明");
        if (this.modelColor.contains("黑白")) {
            arrayList.add("黑色");
            arrayList.add("白色");
        }
        final boolean z2 = z;
        if (this.modelColor.contains("红")) {
            arrayList.add("红色");
        }
        if (this.modelColor.contains("黄")) {
            arrayList.add("黄色");
        }
        modelCodeStyleBgAdapter.type = (String) atomicReference.get();
        modelCodeStyleBgAdapter.setDataList(arrayList, "黑色");
        LinearLayoutManager linearLayoutManager2 = new LinearLayoutManager(this);
        linearLayoutManager2.setOrientation(0);
        recyclerView2.setLayoutManager(linearLayoutManager2);
        final ModelCodeStyleBgAdapter modelCodeStyleBgAdapter2 = new ModelCodeStyleBgAdapter(this);
        recyclerView2.setAdapter(modelCodeStyleBgAdapter2);
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
        modelCodeStyleBgAdapter2.type = (String) atomicReference2.get();
        modelCodeStyleBgAdapter2.setDataList(arrayList2, "透明");
        modelCodeStyleBgAdapter.setOnClickSelectViewBG(new ModelCodeStyleBgAdapter.OnClickSelectViewBg() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$Model2Activity$CHA106vheCFFt5b_VDZL-x1rNRQ
            @Override // cn.highlight.work_card_write.adapter.ModelCodeStyleBgAdapter.OnClickSelectViewBg
            public final void onClickSelectBg(String str) {
                this.f$0.lambda$showMainSetBarCode$29$Model2Activity(modelCodeStyleBgAdapter2, modelCodeStyleBgAdapter, editText, str);
            }
        });
        modelCodeStyleBgAdapter2.setOnClickSelectViewBG(new ModelCodeStyleBgAdapter.OnClickSelectViewBg() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$Model2Activity$Vo9DFz2BeQu56H54BKjDxD2yDbI
            @Override // cn.highlight.work_card_write.adapter.ModelCodeStyleBgAdapter.OnClickSelectViewBg
            public final void onClickSelectBg(String str) {
                this.f$0.lambda$showMainSetBarCode$30$Model2Activity(modelCodeStyleBgAdapter, modelCodeStyleBgAdapter2, editText, str);
            }
        });
        tabLayout.addOnTabSelectedListener(new TabLayout.OnTabSelectedListener() { // from class: cn.highlight.work_card_write.activity.Model2Activity.12
            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabReselected(TabLayout.Tab tab) {
            }

            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabUnselected(TabLayout.Tab tab) {
            }

            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabSelected(TabLayout.Tab tab) {
                int position = tab.getPosition();
                linearLayout.setVisibility(8);
                linearLayout2.setVisibility(8);
                if (position == 0) {
                    linearLayout.setVisibility(0);
                } else {
                    if (position != 1) {
                        return;
                    }
                    linearLayout2.setVisibility(0);
                }
            }
        });
        final Bitmap bitmap3 = bitmap;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$Model2Activity$gPnlB3lZeX-agR3-hEGaUoriYYE
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showMainSetBarCode$31$Model2Activity(z2, bitmap3, strArr, atomicReference, atomicReference2, bottomSheetDialog, editText, view);
            }
        });
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$Model2Activity$tCVX9oGwDpYai0c2jsKrUuh1oUU
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showMainSetBarCode$32$Model2Activity(editText, modelCodeStyleBgAdapter, modelCodeStyleBgAdapter2, bottomSheetDialog, view);
            }
        });
    }

    static /* synthetic */ CharSequence lambda$showMainSetBarCode$28(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        while (i < i2) {
            char cCharAt = charSequence.charAt(i);
            if (cCharAt < ' ' || cCharAt > '~') {
                return "";
            }
            i++;
        }
        return null;
    }

    public /* synthetic */ void lambda$showMainSetBarCode$29$Model2Activity(ModelCodeStyleBgAdapter modelCodeStyleBgAdapter, ModelCodeStyleBgAdapter modelCodeStyleBgAdapter2, EditText editText, String str) {
        if (str.equals(modelCodeStyleBgAdapter.type)) {
            ToastUtil.showToast(this, getResources().getString(R.string.model_barcode_style_select));
            return;
        }
        modelCodeStyleBgAdapter.otherType = str;
        modelCodeStyleBgAdapter.notifyDataSetChanged();
        modelCodeStyleBgAdapter2.type = str;
        modelCodeStyleBgAdapter2.notifyDataSetChanged();
        String string = editText.getText().toString();
        if (Tools.isNull(string) || this.mTouchGestureListener.getSelectedItem() == null || !(this.mTouchGestureListener.getSelectedItem() instanceof DoodleBarCode)) {
            return;
        }
        int i = this.DEFAULT_BITMAP_SIZE;
        ((DoodleBarCode) this.mTouchGestureListener.getSelectedItem()).setBitmap(CodeUtils.generateBarcodeWithoutMargin(string, i, i / 4, getColorByValue(modelCodeStyleBgAdapter2.type), getColorByValue(modelCodeStyleBgAdapter.type)), string, getColorByValue(modelCodeStyleBgAdapter2.type), getColorByValue(modelCodeStyleBgAdapter.type));
    }

    public /* synthetic */ void lambda$showMainSetBarCode$30$Model2Activity(ModelCodeStyleBgAdapter modelCodeStyleBgAdapter, ModelCodeStyleBgAdapter modelCodeStyleBgAdapter2, EditText editText, String str) {
        if (str.equals(modelCodeStyleBgAdapter.type)) {
            ToastUtil.showToast(this, getResources().getString(R.string.model_barcode_style_select));
            return;
        }
        modelCodeStyleBgAdapter.otherType = str;
        modelCodeStyleBgAdapter.notifyDataSetChanged();
        modelCodeStyleBgAdapter2.type = str;
        modelCodeStyleBgAdapter2.notifyDataSetChanged();
        String string = editText.getText().toString();
        if (Tools.isNull(string) || this.mTouchGestureListener.getSelectedItem() == null || !(this.mTouchGestureListener.getSelectedItem() instanceof DoodleBarCode)) {
            return;
        }
        int i = this.DEFAULT_BITMAP_SIZE;
        ((DoodleBarCode) this.mTouchGestureListener.getSelectedItem()).setBitmap(CodeUtils.generateBarcodeWithoutMargin(string, i, i / 4, getColorByValue(modelCodeStyleBgAdapter.type), getColorByValue(modelCodeStyleBgAdapter2.type)), string, getColorByValue(modelCodeStyleBgAdapter.type), getColorByValue(modelCodeStyleBgAdapter2.type));
    }

    public /* synthetic */ void lambda$showMainSetBarCode$31$Model2Activity(boolean z, Bitmap bitmap, String[] strArr, AtomicReference atomicReference, AtomicReference atomicReference2, BottomSheetDialog bottomSheetDialog, EditText editText, View view) {
        if (z && this.mTouchGestureListener.getSelectedItem() != null && (this.mTouchGestureListener.getSelectedItem() instanceof DoodleBarCode)) {
            ((DoodleBarCode) this.mTouchGestureListener.getSelectedItem()).setBitmap(bitmap, strArr[0], getColorByValue((String) atomicReference.get()), getColorByValue((String) atomicReference2.get()));
        }
        this.mDoodle.refresh();
        bottomSheetDialog.dismiss();
        hideSoftKeyBoard(editText);
    }

    public /* synthetic */ void lambda$showMainSetBarCode$32$Model2Activity(EditText editText, ModelCodeStyleBgAdapter modelCodeStyleBgAdapter, ModelCodeStyleBgAdapter modelCodeStyleBgAdapter2, BottomSheetDialog bottomSheetDialog, View view) {
        String string = editText.getText().toString();
        if (Tools.isNull(string)) {
            return;
        }
        int i = this.DEFAULT_BITMAP_SIZE;
        Bitmap bitmapGenerateBarcodeWithoutMargin = CodeUtils.generateBarcodeWithoutMargin(string, i, i / 4, getColorByValue(modelCodeStyleBgAdapter.type), getColorByValue(modelCodeStyleBgAdapter2.type));
        if (this.mTouchGestureListener.getSelectedItem() instanceof DoodleBarCode) {
            createDoodleBarCode((DoodleBarCode) this.mTouchGestureListener.getSelectedItem(), bitmapGenerateBarcodeWithoutMargin, string, getColorByValue(modelCodeStyleBgAdapter.type), getColorByValue(modelCodeStyleBgAdapter2.type));
            this.mDoodle.addItemRecord(this.mTouchGestureListener.getSelectedItem(), 1);
        } else {
            createDoodleBarCode(null, bitmapGenerateBarcodeWithoutMargin, string, getColorByValue(modelCodeStyleBgAdapter.type), getColorByValue(modelCodeStyleBgAdapter2.type));
            this.mDoodle.addItemRecord(this.mTouchGestureListener.getSelectedItem(), 0);
            this.mDoodle.clearRedoRecord();
        }
        bottomSheetDialog.dismiss();
        hideSoftKeyBoard(editText);
        refreshImage();
    }

    private void createDoodleBarCode(DoodleBarCode doodleBarCode, Bitmap bitmap, String str, int i, int i2) {
        if (bitmap == null) {
            return;
        }
        float f = getResources().getDisplayMetrics().density * 30.0f;
        int width = this.mFrameLayout.getWidth() - Math.round(f);
        int height = (this.mFrameLayout.getHeight() - Math.round(f)) - ((this.DEFAULT_BITMAP_SIZE * bitmap.getHeight()) / bitmap.getWidth());
        float x = this.mDoodleView.toX((width - (r1 / 2)) / 2);
        float y = this.mDoodleView.toY(height / 2);
        if (doodleBarCode == null) {
            DoodleBarCode doodleBarCode2 = new DoodleBarCode(this.mDoodle, bitmap, str, i, i2, this.DEFAULT_BITMAP_SIZE, x, y);
            this.mDoodle.addItem(doodleBarCode2);
            this.mTouchGestureListener.setSelectedItem(doodleBarCode2);
        } else {
            doodleBarCode.setBitmap(bitmap, str, i, i2);
        }
        this.mDoodle.refresh();
    }

    private void showMainSetShape() {
        RecyclerView recyclerView;
        String str;
        int i;
        boolean z;
        Bitmap bitmap;
        int shape1;
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_model_main_set_shape_item, (ViewGroup) null);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.shapeCancel);
        ImageView imageView2 = (ImageView) viewInflate.findViewById(R.id.shapeSure);
        TabLayout tabLayout = (TabLayout) viewInflate.findViewById(R.id.shapeTabLayout);
        RecyclerView recyclerView2 = (RecyclerView) viewInflate.findViewById(R.id.shapeSetRecyclerView);
        RecyclerView recyclerView3 = (RecyclerView) viewInflate.findViewById(R.id.shapeStyleColorRecyclerView);
        final SeekBar seekBar = (SeekBar) viewInflate.findViewById(R.id.shapeWidthSeekBar);
        final TextView textView = (TextView) viewInflate.findViewById(R.id.shapeWidthSeekBarProgress);
        final SeekBar seekBar2 = (SeekBar) viewInflate.findViewById(R.id.shapeHeightSeekBar);
        final TextView textView2 = (TextView) viewInflate.findViewById(R.id.shapeHeightSeekBarProgress);
        final SeekBar seekBar3 = (SeekBar) viewInflate.findViewById(R.id.shapeRealVirtualSeekBar);
        final TextView textView3 = (TextView) viewInflate.findViewById(R.id.shapeRealVirtualSeekBarProgress);
        final LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.ll_shape_set);
        final LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(R.id.llshapeSetStyle);
        final LinearLayout linearLayout3 = (LinearLayout) viewInflate.findViewById(R.id.ll_model_shape_style_h);
        final LinearLayout linearLayout4 = (LinearLayout) viewInflate.findViewById(R.id.ll_model_shape_style_rv);
        final BottomSheetDialog bottomSheetDialog = new BottomSheetDialog(this, R.style.CustomBottomSheetStyle1);
        bottomSheetDialog.setContentView(viewInflate);
        bottomSheetDialog.setCanceledOnTouchOutside(false);
        bottomSheetDialog.setCancelable(false);
        ((Window) Objects.requireNonNull(bottomSheetDialog.getWindow())).setDimAmount(0.0f);
        bottomSheetDialog.show();
        final int[] iArr = {45};
        final int[] iArr2 = {45};
        final int[] iArr3 = {0};
        final AtomicReference atomicReference = new AtomicReference("黑色");
        if (this.mTouchGestureListener.getSelectedItem() == null || !(this.mTouchGestureListener.getSelectedItem() instanceof DoodleShape1)) {
            recyclerView = recyclerView2;
            str = "黑色";
            i = 0;
            z = false;
            bitmap = null;
            shape1 = 5;
        } else {
            float scale = this.mTouchGestureListener.getSelectedItem().getScale();
            bitmap = ((DoodleShape1) this.mTouchGestureListener.getSelectedItem()).getBitmap();
            shape1 = ((DoodleShape1) this.mTouchGestureListener.getSelectedItem()).getShape1();
            int fgColor = ((DoodleShape1) this.mTouchGestureListener.getSelectedItem()).getFgColor();
            str = "黑色";
            recyclerView = recyclerView2;
            iArr[0] = ((DoodleShape1) this.mTouchGestureListener.getSelectedItem()).getWidth();
            iArr2[0] = ((DoodleShape1) this.mTouchGestureListener.getSelectedItem()).getHeight();
            iArr3[0] = ((DoodleShape1) this.mTouchGestureListener.getSelectedItem()).getEffects();
            atomicReference.set(getValueByColor(fgColor));
            seekBar.setProgress(iArr[0]);
            textView.setText(((int) ((iArr[0] + 5) * scale)) + "");
            seekBar2.setProgress(iArr2[0]);
            textView2.setText(((int) (((float) (iArr2[0] + 5)) * scale)) + "");
            i = 0;
            seekBar3.setProgress(iArr3[0]);
            textView3.setText(iArr3[0] + "");
            z = true;
        }
        linearLayout.setVisibility(i);
        final ModelCodeStyleBgAdapter modelCodeStyleBgAdapter = new ModelCodeStyleBgAdapter(this);
        RecyclerView recyclerView4 = recyclerView;
        recyclerView4.setLayoutManager(new GridLayoutManager(this, 5));
        ModelimageLibraryIconAdapter modelimageLibraryIconAdapter = new ModelimageLibraryIconAdapter(this);
        recyclerView4.setAdapter(modelimageLibraryIconAdapter);
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(R.mipmap.model_shape_rectangle));
        arrayList.add(Integer.valueOf(R.mipmap.model_shape_oval));
        arrayList.add(Integer.valueOf(R.mipmap.model_shape_triangle));
        arrayList.add(Integer.valueOf(R.mipmap.model_shape_line));
        modelimageLibraryIconAdapter.setDataList(arrayList);
        final boolean z2 = z;
        modelimageLibraryIconAdapter.setOnClickSelectViewBG(new ModelimageLibraryIconAdapter.OnClickSelectViewBg() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$Model2Activity$EFLxdWnjL184ENlAei12ZpEByIk
            @Override // cn.highlight.work_card_write.adapter.ModelimageLibraryIconAdapter.OnClickSelectViewBg
            public final void onClickSelectBg(Integer num) {
                this.f$0.lambda$showMainSetShape$33$Model2Activity(modelCodeStyleBgAdapter, seekBar, seekBar2, seekBar3, num);
            }
        });
        seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: cn.highlight.work_card_write.activity.Model2Activity.13
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar4) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar4) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar4, int i2, boolean z3) {
                TextView textView4 = textView;
                StringBuilder sb = new StringBuilder();
                int i3 = i2 + 5;
                sb.append(i3);
                sb.append("");
                textView4.setText(sb.toString());
                if (Model2Activity.this.mTouchGestureListener.getSelectedItem() == null || !(Model2Activity.this.mTouchGestureListener.getSelectedItem() instanceof DoodleShape1)) {
                    return;
                }
                textView.setText(((int) (i3 * Model2Activity.this.mTouchGestureListener.getSelectedItem().getScale())) + "");
                ((DoodleShape1) Model2Activity.this.mTouchGestureListener.getSelectedItem()).setWidth(i2);
                int shape12 = ((DoodleShape1) Model2Activity.this.mTouchGestureListener.getSelectedItem()).getShape1();
                int fgColor2 = ((DoodleShape1) Model2Activity.this.mTouchGestureListener.getSelectedItem()).getFgColor();
                int width = ((DoodleShape1) Model2Activity.this.mTouchGestureListener.getSelectedItem()).getWidth();
                int height = ((DoodleShape1) Model2Activity.this.mTouchGestureListener.getSelectedItem()).getHeight();
                int effects = ((DoodleShape1) Model2Activity.this.mTouchGestureListener.getSelectedItem()).getEffects();
                Bitmap bitmapGenerateGraph = ShapeUtil.generateGraph(fgColor2, shape12, width + 5, height + 5, effects);
                Model2Activity model2Activity = Model2Activity.this;
                model2Activity.createDoodleShapeSize((DoodleShape1) model2Activity.mTouchGestureListener.getSelectedItem(), bitmapGenerateGraph, fgColor2, shape12, width, height, effects);
            }
        });
        seekBar2.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: cn.highlight.work_card_write.activity.Model2Activity.14
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar4) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar4) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar4, int i2, boolean z3) {
                TextView textView4 = textView2;
                StringBuilder sb = new StringBuilder();
                int i3 = i2 + 5;
                sb.append(i3);
                sb.append("");
                textView4.setText(sb.toString());
                if (Model2Activity.this.mTouchGestureListener.getSelectedItem() == null || !(Model2Activity.this.mTouchGestureListener.getSelectedItem() instanceof DoodleShape1)) {
                    return;
                }
                if (((DoodleShape1) Model2Activity.this.mTouchGestureListener.getSelectedItem()).getShape1() == DoodleShape.LINE.ordinal()) {
                    String str2 = new DecimalFormat("#0.0").format(((seekBar2.getProgress() + 5) * Model2Activity.this.mTouchGestureListener.getSelectedItem().getScale()) / 10.0f);
                    textView2.setText(str2 + "");
                } else {
                    textView2.setText(((int) (i3 * Model2Activity.this.mTouchGestureListener.getSelectedItem().getScale())) + "");
                }
                ((DoodleShape1) Model2Activity.this.mTouchGestureListener.getSelectedItem()).setHeight(i2);
                int shape12 = ((DoodleShape1) Model2Activity.this.mTouchGestureListener.getSelectedItem()).getShape1();
                int fgColor2 = ((DoodleShape1) Model2Activity.this.mTouchGestureListener.getSelectedItem()).getFgColor();
                int width = ((DoodleShape1) Model2Activity.this.mTouchGestureListener.getSelectedItem()).getWidth();
                int height = ((DoodleShape1) Model2Activity.this.mTouchGestureListener.getSelectedItem()).getHeight();
                int effects = ((DoodleShape1) Model2Activity.this.mTouchGestureListener.getSelectedItem()).getEffects();
                Bitmap bitmapGenerateGraph = ShapeUtil.generateGraph(fgColor2, shape12, width + 5, height + 5, effects);
                Model2Activity model2Activity = Model2Activity.this;
                model2Activity.createDoodleShapeSize((DoodleShape1) model2Activity.mTouchGestureListener.getSelectedItem(), bitmapGenerateGraph, fgColor2, shape12, width, height, effects);
            }
        });
        seekBar3.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: cn.highlight.work_card_write.activity.Model2Activity.15
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar4) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar4) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar4, int i2, boolean z3) {
                textView3.setText(i2 + "");
                if (Model2Activity.this.mTouchGestureListener.getSelectedItem() == null || !(Model2Activity.this.mTouchGestureListener.getSelectedItem() instanceof DoodleShape1)) {
                    return;
                }
                ((DoodleShape1) Model2Activity.this.mTouchGestureListener.getSelectedItem()).setEffects(i2);
                int shape12 = ((DoodleShape1) Model2Activity.this.mTouchGestureListener.getSelectedItem()).getShape1();
                int fgColor2 = ((DoodleShape1) Model2Activity.this.mTouchGestureListener.getSelectedItem()).getFgColor();
                int width = ((DoodleShape1) Model2Activity.this.mTouchGestureListener.getSelectedItem()).getWidth();
                int height = ((DoodleShape1) Model2Activity.this.mTouchGestureListener.getSelectedItem()).getHeight();
                int effects = ((DoodleShape1) Model2Activity.this.mTouchGestureListener.getSelectedItem()).getEffects();
                Bitmap bitmapGenerateGraph = ShapeUtil.generateGraph(fgColor2, shape12, width + 5, height + 5, effects);
                Model2Activity model2Activity = Model2Activity.this;
                model2Activity.createDoodleShapeSize((DoodleShape1) model2Activity.mTouchGestureListener.getSelectedItem(), bitmapGenerateGraph, fgColor2, shape12, width, height, effects);
            }
        });
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.setOrientation(0);
        recyclerView3.setLayoutManager(linearLayoutManager);
        recyclerView3.setAdapter(modelCodeStyleBgAdapter);
        ArrayList arrayList2 = new ArrayList();
        if (this.modelColor.contains("黑白")) {
            arrayList2.add(str);
            arrayList2.add("白色");
        }
        if (this.modelColor.contains("红")) {
            arrayList2.add("红色");
        }
        if (this.modelColor.contains("黄")) {
            arrayList2.add("黄色");
        }
        modelCodeStyleBgAdapter.type = (String) atomicReference.get();
        modelCodeStyleBgAdapter.setDataList(arrayList2, "透明");
        modelCodeStyleBgAdapter.setOnClickSelectViewBG(new ModelCodeStyleBgAdapter.OnClickSelectViewBg() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$Model2Activity$FMzGhnS70yxmx8C3QOO5pjsV-No
            @Override // cn.highlight.work_card_write.adapter.ModelCodeStyleBgAdapter.OnClickSelectViewBg
            public final void onClickSelectBg(String str2) {
                this.f$0.lambda$showMainSetShape$34$Model2Activity(modelCodeStyleBgAdapter, str2);
            }
        });
        tabLayout.addOnTabSelectedListener(new TabLayout.OnTabSelectedListener() { // from class: cn.highlight.work_card_write.activity.Model2Activity.16
            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabReselected(TabLayout.Tab tab) {
            }

            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabUnselected(TabLayout.Tab tab) {
            }

            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabSelected(TabLayout.Tab tab) {
                int position = tab.getPosition();
                linearLayout.setVisibility(8);
                linearLayout2.setVisibility(8);
                if (position == 0) {
                    linearLayout.setVisibility(0);
                    return;
                }
                if (position != 1) {
                    return;
                }
                linearLayout3.setVisibility(0);
                linearLayout4.setVisibility(0);
                if (Model2Activity.this.mTouchGestureListener.getSelectedItem() != null && (Model2Activity.this.mTouchGestureListener.getSelectedItem() instanceof DoodleShape1)) {
                    if (((DoodleShape1) Model2Activity.this.mTouchGestureListener.getSelectedItem()).getShape1() == DoodleShape.LINE.ordinal()) {
                        String str2 = new DecimalFormat("#0.0").format(((seekBar2.getProgress() + 5) * Model2Activity.this.mTouchGestureListener.getSelectedItem().getScale()) / 10.0f);
                        textView2.setText(str2 + "");
                    } else {
                        textView2.setText(((int) ((seekBar2.getProgress() + 5) * Model2Activity.this.mTouchGestureListener.getSelectedItem().getScale())) + "");
                        linearLayout4.setVisibility(8);
                    }
                }
                linearLayout2.setVisibility(0);
            }
        });
        final Bitmap bitmap2 = bitmap;
        final int i2 = shape1;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$Model2Activity$Ejzjperivt33C9MHldmMoS8JAc0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showMainSetShape$35$Model2Activity(z2, bitmap2, atomicReference, i2, iArr, iArr2, iArr3, bottomSheetDialog, view);
            }
        });
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.work_card_write.activity.-$$Lambda$Model2Activity$casMzKUM_0q8Ap6zn48OnqZJDw8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showMainSetShape$36$Model2Activity(z2, bottomSheetDialog, view);
            }
        });
    }

    public /* synthetic */ void lambda$showMainSetShape$33$Model2Activity(ModelCodeStyleBgAdapter modelCodeStyleBgAdapter, SeekBar seekBar, SeekBar seekBar2, SeekBar seekBar3, Integer num) {
        int iOrdinal = DoodleShape.FILL_RECT.ordinal();
        switch (num.intValue()) {
            case R.mipmap.model_shape_line /* 2131624066 */:
                iOrdinal = DoodleShape.LINE.ordinal();
                break;
            case R.mipmap.model_shape_oval /* 2131624067 */:
                iOrdinal = DoodleShape.FILL_CIRCLE.ordinal();
                break;
            case R.mipmap.model_shape_rectangle /* 2131624068 */:
                iOrdinal = DoodleShape.FILL_RECT.ordinal();
                break;
            case R.mipmap.model_shape_triangle /* 2131624069 */:
                iOrdinal = DoodleShape.FILL_TRIANGLE.ordinal();
                break;
        }
        int i = iOrdinal;
        if (this.mTouchGestureListener.getSelectedItem() != null && (this.mTouchGestureListener.getSelectedItem() instanceof DoodleShape1)) {
            int fgColor = ((DoodleShape1) this.mTouchGestureListener.getSelectedItem()).getFgColor();
            int width = ((DoodleShape1) this.mTouchGestureListener.getSelectedItem()).getWidth();
            int height = ((DoodleShape1) this.mTouchGestureListener.getSelectedItem()).getHeight();
            int effects = ((DoodleShape1) this.mTouchGestureListener.getSelectedItem()).getEffects();
            createDoodleShapeSize((DoodleShape1) this.mTouchGestureListener.getSelectedItem(), ShapeUtil.generateGraph(fgColor, i, width + 5, height + 5, effects), fgColor, i, width, height, effects);
            return;
        }
        createDoodleShapeSize(null, ShapeUtil.generateGraph(getColorByValue(modelCodeStyleBgAdapter.type), i, seekBar.getProgress() + 5, seekBar2.getProgress() + 5, seekBar3.getProgress()), getColorByValue(modelCodeStyleBgAdapter.type), i, seekBar.getProgress(), seekBar2.getProgress(), seekBar3.getProgress());
    }

    public /* synthetic */ void lambda$showMainSetShape$34$Model2Activity(ModelCodeStyleBgAdapter modelCodeStyleBgAdapter, String str) {
        modelCodeStyleBgAdapter.type = str;
        modelCodeStyleBgAdapter.notifyDataSetChanged();
        if (this.mTouchGestureListener.getSelectedItem() == null || !(this.mTouchGestureListener.getSelectedItem() instanceof DoodleShape1)) {
            return;
        }
        ((DoodleShape1) this.mTouchGestureListener.getSelectedItem()).setFgColor(getColorByValue(modelCodeStyleBgAdapter.type));
        int shape1 = ((DoodleShape1) this.mTouchGestureListener.getSelectedItem()).getShape1();
        int fgColor = ((DoodleShape1) this.mTouchGestureListener.getSelectedItem()).getFgColor();
        int width = ((DoodleShape1) this.mTouchGestureListener.getSelectedItem()).getWidth();
        int height = ((DoodleShape1) this.mTouchGestureListener.getSelectedItem()).getHeight();
        int effects = ((DoodleShape1) this.mTouchGestureListener.getSelectedItem()).getEffects();
        createDoodleShapeSize((DoodleShape1) this.mTouchGestureListener.getSelectedItem(), ShapeUtil.generateGraph(fgColor, shape1, width + 5, height + 5, effects), fgColor, shape1, width, height, effects);
    }

    public /* synthetic */ void lambda$showMainSetShape$35$Model2Activity(boolean z, Bitmap bitmap, AtomicReference atomicReference, int i, int[] iArr, int[] iArr2, int[] iArr3, BottomSheetDialog bottomSheetDialog, View view) {
        if (z) {
            if (this.mTouchGestureListener.getSelectedItem() != null && (this.mTouchGestureListener.getSelectedItem() instanceof DoodleShape1)) {
                ((DoodleShape1) this.mTouchGestureListener.getSelectedItem()).setBitmap(bitmap, getColorByValue((String) atomicReference.get()), i, iArr[0], iArr2[0], iArr3[0]);
            }
        } else if (this.mTouchGestureListener.getSelectedItem() != null && (this.mTouchGestureListener.getSelectedItem() instanceof DoodleShape1)) {
            this.mDoodle.getAllRedoItem(true).add(0, this.mTouchGestureListener.getSelectedItem());
            this.mDoodle.removeItem(this.mTouchGestureListener.getSelectedItem());
            this.mTouchGestureListener.setSelectedItem(null);
        }
        this.mDoodle.refresh();
        bottomSheetDialog.dismiss();
    }

    public /* synthetic */ void lambda$showMainSetShape$36$Model2Activity(boolean z, BottomSheetDialog bottomSheetDialog, View view) {
        if (this.mTouchGestureListener.getSelectedItem() != null && (this.mTouchGestureListener.getSelectedItem() instanceof DoodleShape1)) {
            if (z) {
                this.mDoodle.addItemRecord(this.mTouchGestureListener.getSelectedItem(), 1);
            } else {
                this.mDoodle.addItemRecord(this.mTouchGestureListener.getSelectedItem(), 0);
                this.mDoodle.clearRedoRecord();
            }
        }
        bottomSheetDialog.dismiss();
        refreshImage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createDoodleShapeSize(DoodleShape1 doodleShape1, Bitmap bitmap, int i, int i2, int i3, int i4, int i5) {
        int i6;
        if (bitmap == null) {
            return;
        }
        float f = getResources().getDisplayMetrics().density * 30.0f;
        int width = this.mFrameLayout.getWidth() - Math.round(f);
        int height = this.mFrameLayout.getHeight() - Math.round(f);
        if (i2 == DoodleShape.LINE.ordinal()) {
            i6 = (int) (width - (this.DEFAULT_BITMAP_SIZE * 1.5d));
        } else {
            i6 = width - (this.DEFAULT_BITMAP_SIZE / 2);
        }
        int height2 = height - ((this.DEFAULT_BITMAP_SIZE * bitmap.getHeight()) / bitmap.getWidth());
        float x = this.mDoodleView.toX(i6 / 2);
        float y = this.mDoodleView.toY(height2 / 2);
        if (doodleShape1 == null) {
            DoodleShape1 doodleShape12 = new DoodleShape1(this.mDoodle, bitmap, i, i2, i3, i4, i5, x, y);
            this.mDoodle.addItem(doodleShape12);
            this.mTouchGestureListener.setSelectedItem(doodleShape12);
        } else {
            doodleShape1.setBitmap(bitmap, i, i2, i3, i4, i5);
        }
        this.mDoodle.refresh();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshImage() {
        this.image_back.setImageResource(R.mipmap.model_retreat);
        this.image_forward.setImageResource(R.mipmap.model_forward);
        if (this.mDoodle.getItemRecord() != null && this.mDoodle.getItemRecord().size() > this.operationNum) {
            this.image_back.setImageResource(R.mipmap.model_retreat1);
            this.isOperation = true;
        } else {
            this.isOperation = false;
        }
        if (this.mDoodle.getItemRedoRecord() == null || this.mDoodle.getItemRedoRecord().size() <= 0) {
            return;
        }
        this.image_forward.setImageResource(R.mipmap.model_forward1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshButton(boolean z) {
        if (z) {
            this.editOperationLinear.setVisibility(0);
            if (this.mTouchGestureListener.getSelectedItem() != null && this.mDoodle.isUp(this.mTouchGestureListener.getSelectedItem())) {
                this.image_top.setImageResource(R.mipmap.model_top);
            } else {
                this.image_top.setImageResource(R.mipmap.model_top1);
            }
            if (this.mTouchGestureListener.getSelectedItem() != null && this.mDoodle.isDown(this.mTouchGestureListener.getSelectedItem())) {
                this.image_bottom.setImageResource(R.mipmap.model_bottom);
                return;
            } else {
                this.image_bottom.setImageResource(R.mipmap.model_bottom1);
                return;
            }
        }
        this.editOperationLinear.setVisibility(4);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 0) {
            if (i2 != -1 || Constants.editCrop2Image == null) {
                return;
            }
            this.bitmap = Constants.editCrop2Image;
            ((DoodleBg) this.mDoodle.getAllItem(true).get(0)).setBitmap(this.bitmap);
            ((DoodleBg) this.mDoodle.getAllItem(true).get(0)).setText("其他");
            this.mDoodle.refresh();
            return;
        }
        if (i == 1 && i2 == -1 && Constants.editCrop2Image != null) {
            Bitmap bitmap = Constants.editCrop2Image;
            if (this.mTouchGestureListener.getSelectedItem() instanceof DoodleBitmap) {
                createDoodleBitmap((DoodleBitmap) this.mTouchGestureListener.getSelectedItem(), bitmap);
            } else {
                createDoodleBitmap(null, bitmap);
            }
        }
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4 && keyEvent.getAction() == 0) {
            showErrorDialog(getString(R.string.dialog_tip), getString(R.string.dialog_tip_info1));
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }
}
