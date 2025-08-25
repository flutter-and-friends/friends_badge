package cn.highlight.work_card_write.activity;

import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cn.highlight.work_card_write.R;
import com.google.android.material.tabs.TabLayout;

/* loaded from: classes.dex */
public class ModelActivity_ViewBinding implements Unbinder {
    private ModelActivity target;
    private View view7f09013e;
    private View view7f09013f;
    private View view7f090140;
    private View view7f090141;
    private View view7f090144;
    private View view7f09014d;
    private View view7f09022e;
    private View view7f09022f;
    private View view7f090230;
    private View view7f0902bc;

    public ModelActivity_ViewBinding(ModelActivity modelActivity) {
        this(modelActivity, modelActivity.getWindow().getDecorView());
    }

    public ModelActivity_ViewBinding(final ModelActivity modelActivity, View view) {
        this.target = modelActivity;
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.img_back, "field 'img_back' and method 'onViewClicked'");
        modelActivity.img_back = (ImageView) Utils.castView(viewFindRequiredView, R.id.img_back, "field 'img_back'", ImageView.class);
        this.view7f09014d = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.ModelActivity_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                modelActivity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView2 = Utils.findRequiredView(view, R.id.image_back, "field 'image_back' and method 'onViewClicked'");
        modelActivity.image_back = (ImageView) Utils.castView(viewFindRequiredView2, R.id.image_back, "field 'image_back'", ImageView.class);
        this.view7f09013e = viewFindRequiredView2;
        viewFindRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.ModelActivity_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                modelActivity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView3 = Utils.findRequiredView(view, R.id.image_forward, "field 'image_forward' and method 'onViewClicked'");
        modelActivity.image_forward = (ImageView) Utils.castView(viewFindRequiredView3, R.id.image_forward, "field 'image_forward'", ImageView.class);
        this.view7f090141 = viewFindRequiredView3;
        viewFindRequiredView3.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.ModelActivity_ViewBinding.3
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                modelActivity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView4 = Utils.findRequiredView(view, R.id.tv_preview, "field 'tv_preview' and method 'onViewClicked'");
        modelActivity.tv_preview = (TextView) Utils.castView(viewFindRequiredView4, R.id.tv_preview, "field 'tv_preview'", TextView.class);
        this.view7f0902bc = viewFindRequiredView4;
        viewFindRequiredView4.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.ModelActivity_ViewBinding.4
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                modelActivity.onViewClicked(view2);
            }
        });
        modelActivity.editColorLinear = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.editColorLinear, "field 'editColorLinear'", LinearLayout.class);
        modelActivity.editSize = (TextView) Utils.findRequiredViewAsType(view, R.id.edit_size, "field 'editSize'", TextView.class);
        modelActivity.editColorBlack = (TextView) Utils.findRequiredViewAsType(view, R.id.edit_color_black, "field 'editColorBlack'", TextView.class);
        modelActivity.editColorWhite = (TextView) Utils.findRequiredViewAsType(view, R.id.edit_color_white, "field 'editColorWhite'", TextView.class);
        modelActivity.editColorRed = (TextView) Utils.findRequiredViewAsType(view, R.id.edit_color_red, "field 'editColorRed'", TextView.class);
        modelActivity.editColorYellow = (TextView) Utils.findRequiredViewAsType(view, R.id.edit_color_yellow, "field 'editColorYellow'", TextView.class);
        modelActivity.mFrameLayout = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.doodle_container, "field 'mFrameLayout'", FrameLayout.class);
        View viewFindRequiredView5 = Utils.findRequiredView(view, R.id.image_top, "field 'image_top' and method 'onViewClicked'");
        modelActivity.image_top = (ImageView) Utils.castView(viewFindRequiredView5, R.id.image_top, "field 'image_top'", ImageView.class);
        this.view7f090144 = viewFindRequiredView5;
        viewFindRequiredView5.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.ModelActivity_ViewBinding.5
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                modelActivity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView6 = Utils.findRequiredView(view, R.id.image_bottom, "field 'image_bottom' and method 'onViewClicked'");
        modelActivity.image_bottom = (ImageView) Utils.castView(viewFindRequiredView6, R.id.image_bottom, "field 'image_bottom'", ImageView.class);
        this.view7f09013f = viewFindRequiredView6;
        viewFindRequiredView6.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.ModelActivity_ViewBinding.6
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                modelActivity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView7 = Utils.findRequiredView(view, R.id.image_delete, "field 'image_delete' and method 'onViewClicked'");
        modelActivity.image_delete = (ImageView) Utils.castView(viewFindRequiredView7, R.id.image_delete, "field 'image_delete'", ImageView.class);
        this.view7f090140 = viewFindRequiredView7;
        viewFindRequiredView7.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.ModelActivity_ViewBinding.7
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                modelActivity.onViewClicked(view2);
            }
        });
        modelActivity.mainSet = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.mainSet, "field 'mainSet'", LinearLayout.class);
        View viewFindRequiredView8 = Utils.findRequiredView(view, R.id.setBg, "field 'setBg' and method 'onViewClicked'");
        modelActivity.setBg = (LinearLayout) Utils.castView(viewFindRequiredView8, R.id.setBg, "field 'setBg'", LinearLayout.class);
        this.view7f09022e = viewFindRequiredView8;
        viewFindRequiredView8.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.ModelActivity_ViewBinding.8
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                modelActivity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView9 = Utils.findRequiredView(view, R.id.setText, "field 'setText' and method 'onViewClicked'");
        modelActivity.setText = (LinearLayout) Utils.castView(viewFindRequiredView9, R.id.setText, "field 'setText'", LinearLayout.class);
        this.view7f090230 = viewFindRequiredView9;
        viewFindRequiredView9.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.ModelActivity_ViewBinding.9
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                modelActivity.onViewClicked(view2);
            }
        });
        View viewFindRequiredView10 = Utils.findRequiredView(view, R.id.setImage, "field 'setImage' and method 'onViewClicked'");
        modelActivity.setImage = (LinearLayout) Utils.castView(viewFindRequiredView10, R.id.setImage, "field 'setImage'", LinearLayout.class);
        this.view7f09022f = viewFindRequiredView10;
        viewFindRequiredView10.setOnClickListener(new DebouncingOnClickListener() { // from class: cn.highlight.work_card_write.activity.ModelActivity_ViewBinding.10
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                modelActivity.onViewClicked(view2);
            }
        });
        modelActivity.mainSetBg = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.mainSetBg, "field 'mainSetBg'", LinearLayout.class);
        modelActivity.bgCancel = (ImageView) Utils.findRequiredViewAsType(view, R.id.bgCancel, "field 'bgCancel'", ImageView.class);
        modelActivity.bgSure = (ImageView) Utils.findRequiredViewAsType(view, R.id.bgSure, "field 'bgSure'", ImageView.class);
        modelActivity.bgRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.bgRecyclerView, "field 'bgRecyclerView'", RecyclerView.class);
        modelActivity.mainSetText = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.mainSetText, "field 'mainSetText'", LinearLayout.class);
        modelActivity.textCancel = (ImageView) Utils.findRequiredViewAsType(view, R.id.textCancel, "field 'textCancel'", ImageView.class);
        modelActivity.textSure = (ImageView) Utils.findRequiredViewAsType(view, R.id.textSure, "field 'textSure'", ImageView.class);
        modelActivity.textTabLayout = (TabLayout) Utils.findRequiredViewAsType(view, R.id.textTabLayout, "field 'textTabLayout'", TabLayout.class);
        modelActivity.textEditView = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.textEditView, "field 'textEditView'", LinearLayout.class);
        modelActivity.textEdit = (EditText) Utils.findRequiredViewAsType(view, R.id.textEdit, "field 'textEdit'", EditText.class);
        modelActivity.textFontView = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.textFontView, "field 'textFontView'", LinearLayout.class);
        modelActivity.textFontRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.textFontRecyclerView, "field 'textFontRecyclerView'", RecyclerView.class);
        modelActivity.textStyleView = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.textStyleView, "field 'textStyleView'", LinearLayout.class);
        modelActivity.textStyleRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.textStyleRecyclerView, "field 'textStyleRecyclerView'", RecyclerView.class);
        modelActivity.textStyleSeekBar = (SeekBar) Utils.findRequiredViewAsType(view, R.id.textStyleSeekBar, "field 'textStyleSeekBar'", SeekBar.class);
        modelActivity.textStyleSeekBarProgress = (TextView) Utils.findRequiredViewAsType(view, R.id.textStyleSeekBarProgress, "field 'textStyleSeekBarProgress'", TextView.class);
        modelActivity.mainSetImage = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.mainSetImage, "field 'mainSetImage'", LinearLayout.class);
        modelActivity.imageCancel = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageCancel, "field 'imageCancel'", ImageView.class);
        modelActivity.imagePhoto = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.imagePhoto, "field 'imagePhoto'", LinearLayout.class);
        modelActivity.imageAlbum = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.imageAlbum, "field 'imageAlbum'", LinearLayout.class);
        modelActivity.imageQrcode = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.imageQrcode, "field 'imageQrcode'", LinearLayout.class);
        modelActivity.imageBarCode = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.imageBarCode, "field 'imageBarCode'", LinearLayout.class);
        modelActivity.imageCodeView = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.imageCodeView, "field 'imageCodeView'", LinearLayout.class);
        modelActivity.codeCancel = (ImageView) Utils.findRequiredViewAsType(view, R.id.codeCancel, "field 'codeCancel'", ImageView.class);
        modelActivity.codeName = (TextView) Utils.findRequiredViewAsType(view, R.id.codeName, "field 'codeName'", TextView.class);
        modelActivity.codeSure = (ImageView) Utils.findRequiredViewAsType(view, R.id.codeSure, "field 'codeSure'", ImageView.class);
        modelActivity.codeText = (EditText) Utils.findRequiredViewAsType(view, R.id.codeText, "field 'codeText'", EditText.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        ModelActivity modelActivity = this.target;
        if (modelActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        modelActivity.img_back = null;
        modelActivity.image_back = null;
        modelActivity.image_forward = null;
        modelActivity.tv_preview = null;
        modelActivity.editColorLinear = null;
        modelActivity.editSize = null;
        modelActivity.editColorBlack = null;
        modelActivity.editColorWhite = null;
        modelActivity.editColorRed = null;
        modelActivity.editColorYellow = null;
        modelActivity.mFrameLayout = null;
        modelActivity.image_top = null;
        modelActivity.image_bottom = null;
        modelActivity.image_delete = null;
        modelActivity.mainSet = null;
        modelActivity.setBg = null;
        modelActivity.setText = null;
        modelActivity.setImage = null;
        modelActivity.mainSetBg = null;
        modelActivity.bgCancel = null;
        modelActivity.bgSure = null;
        modelActivity.bgRecyclerView = null;
        modelActivity.mainSetText = null;
        modelActivity.textCancel = null;
        modelActivity.textSure = null;
        modelActivity.textTabLayout = null;
        modelActivity.textEditView = null;
        modelActivity.textEdit = null;
        modelActivity.textFontView = null;
        modelActivity.textFontRecyclerView = null;
        modelActivity.textStyleView = null;
        modelActivity.textStyleRecyclerView = null;
        modelActivity.textStyleSeekBar = null;
        modelActivity.textStyleSeekBarProgress = null;
        modelActivity.mainSetImage = null;
        modelActivity.imageCancel = null;
        modelActivity.imagePhoto = null;
        modelActivity.imageAlbum = null;
        modelActivity.imageQrcode = null;
        modelActivity.imageBarCode = null;
        modelActivity.imageCodeView = null;
        modelActivity.codeCancel = null;
        modelActivity.codeName = null;
        modelActivity.codeSure = null;
        modelActivity.codeText = null;
        this.view7f09014d.setOnClickListener(null);
        this.view7f09014d = null;
        this.view7f09013e.setOnClickListener(null);
        this.view7f09013e = null;
        this.view7f090141.setOnClickListener(null);
        this.view7f090141 = null;
        this.view7f0902bc.setOnClickListener(null);
        this.view7f0902bc = null;
        this.view7f090144.setOnClickListener(null);
        this.view7f090144 = null;
        this.view7f09013f.setOnClickListener(null);
        this.view7f09013f = null;
        this.view7f090140.setOnClickListener(null);
        this.view7f090140 = null;
        this.view7f09022e.setOnClickListener(null);
        this.view7f09022e = null;
        this.view7f090230.setOnClickListener(null);
        this.view7f090230 = null;
        this.view7f09022f.setOnClickListener(null);
        this.view7f09022f = null;
    }
}
