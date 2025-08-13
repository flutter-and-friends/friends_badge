package com.bigkoo.pickerview.view;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import com.bigkoo.pickerview.C0757R;
import com.bigkoo.pickerview.configure.PickerOptions;
import com.bigkoo.pickerview.listener.OnDismissListener;
import com.bigkoo.pickerview.utils.PickerViewAnimateUtil;

/* loaded from: classes.dex */
public class BasePickerView {
    protected View clickView;
    protected ViewGroup contentContainer;
    private Context context;
    private ViewGroup dialogView;
    private boolean dismissing;
    private Animation inAnim;
    private boolean isShowing;
    private Dialog mDialog;
    protected PickerOptions mPickerOptions;
    private OnDismissListener onDismissListener;
    private Animation outAnim;
    private ViewGroup rootView;
    protected int animGravity = 80;
    private boolean isAnim = true;
    private View.OnKeyListener onKeyBackListener = new View.OnKeyListener() { // from class: com.bigkoo.pickerview.view.BasePickerView.4
        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            if (i != 4 || keyEvent.getAction() != 0 || !BasePickerView.this.isShowing()) {
                return false;
            }
            BasePickerView.this.dismiss();
            return true;
        }
    };
    private final View.OnTouchListener onCancelableTouchListener = new View.OnTouchListener() { // from class: com.bigkoo.pickerview.view.BasePickerView.5
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0) {
                return false;
            }
            BasePickerView.this.dismiss();
            return false;
        }
    };

    protected void initEvents() {
    }

    public boolean isDialog() {
        return false;
    }

    public BasePickerView(Context context) {
        this.context = context;
    }

    protected void initViews() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2, 80);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.context);
        if (isDialog()) {
            this.dialogView = (ViewGroup) layoutInflaterFrom.inflate(C0757R.layout.layout_basepickerview, (ViewGroup) null, false);
            this.dialogView.setBackgroundColor(0);
            this.contentContainer = (ViewGroup) this.dialogView.findViewById(C0757R.id.content_container);
            layoutParams.leftMargin = 30;
            layoutParams.rightMargin = 30;
            this.contentContainer.setLayoutParams(layoutParams);
            createDialog();
            this.dialogView.setOnClickListener(new View.OnClickListener() { // from class: com.bigkoo.pickerview.view.BasePickerView.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    BasePickerView.this.dismiss();
                }
            });
        } else {
            if (this.mPickerOptions.decorView == null) {
                this.mPickerOptions.decorView = (ViewGroup) ((Activity) this.context).getWindow().getDecorView();
            }
            this.rootView = (ViewGroup) layoutInflaterFrom.inflate(C0757R.layout.layout_basepickerview, this.mPickerOptions.decorView, false);
            this.rootView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            if (this.mPickerOptions.outSideColor != -1) {
                this.rootView.setBackgroundColor(this.mPickerOptions.outSideColor);
            }
            this.contentContainer = (ViewGroup) this.rootView.findViewById(C0757R.id.content_container);
            this.contentContainer.setLayoutParams(layoutParams);
        }
        setKeyBackCancelable(true);
    }

    protected void initAnim() {
        this.inAnim = getInAnimation();
        this.outAnim = getOutAnimation();
    }

    public void show(View view, boolean z) {
        this.clickView = view;
        this.isAnim = z;
        show();
    }

    public void show(boolean z) {
        show(null, z);
    }

    public void show(View view) {
        this.clickView = view;
        show();
    }

    public void show() {
        if (isDialog()) {
            showDialog();
        } else {
            if (isShowing()) {
                return;
            }
            this.isShowing = true;
            onAttached(this.rootView);
            this.rootView.requestFocus();
        }
    }

    private void onAttached(View view) {
        this.mPickerOptions.decorView.addView(view);
        if (this.isAnim) {
            this.contentContainer.startAnimation(this.inAnim);
        }
    }

    public boolean isShowing() {
        if (isDialog()) {
            return false;
        }
        return this.rootView.getParent() != null || this.isShowing;
    }

    public void dismiss() {
        if (isDialog()) {
            dismissDialog();
            return;
        }
        if (this.dismissing) {
            return;
        }
        if (this.isAnim) {
            this.outAnim.setAnimationListener(new Animation.AnimationListener() { // from class: com.bigkoo.pickerview.view.BasePickerView.2
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    BasePickerView.this.dismissImmediately();
                }
            });
            this.contentContainer.startAnimation(this.outAnim);
        } else {
            dismissImmediately();
        }
        this.dismissing = true;
    }

    public void dismissImmediately() {
        this.mPickerOptions.decorView.post(new Runnable() { // from class: com.bigkoo.pickerview.view.BasePickerView.3
            @Override // java.lang.Runnable
            public void run() {
                BasePickerView.this.mPickerOptions.decorView.removeView(BasePickerView.this.rootView);
                BasePickerView.this.isShowing = false;
                BasePickerView.this.dismissing = false;
                if (BasePickerView.this.onDismissListener != null) {
                    BasePickerView.this.onDismissListener.onDismiss(BasePickerView.this);
                }
            }
        });
    }

    private Animation getInAnimation() {
        return AnimationUtils.loadAnimation(this.context, PickerViewAnimateUtil.getAnimationResource(this.animGravity, true));
    }

    private Animation getOutAnimation() {
        return AnimationUtils.loadAnimation(this.context, PickerViewAnimateUtil.getAnimationResource(this.animGravity, false));
    }

    public BasePickerView setOnDismissListener(OnDismissListener onDismissListener) {
        this.onDismissListener = onDismissListener;
        return this;
    }

    public void setKeyBackCancelable(boolean z) {
        ViewGroup viewGroup;
        if (isDialog()) {
            viewGroup = this.dialogView;
        } else {
            viewGroup = this.rootView;
        }
        viewGroup.setFocusable(z);
        viewGroup.setFocusableInTouchMode(z);
        if (z) {
            viewGroup.setOnKeyListener(this.onKeyBackListener);
        } else {
            viewGroup.setOnKeyListener(null);
        }
    }

    protected BasePickerView setOutSideCancelable(boolean z) {
        ViewGroup viewGroup = this.rootView;
        if (viewGroup != null) {
            View viewFindViewById = viewGroup.findViewById(C0757R.id.outmost_container);
            if (z) {
                viewFindViewById.setOnTouchListener(this.onCancelableTouchListener);
            } else {
                viewFindViewById.setOnTouchListener(null);
            }
        }
        return this;
    }

    public void setDialogOutSideCancelable() {
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            dialog.setCancelable(this.mPickerOptions.cancelable);
        }
    }

    public View findViewById(int i) {
        return this.contentContainer.findViewById(i);
    }

    public void createDialog() {
        if (this.dialogView != null) {
            this.mDialog = new Dialog(this.context, C0757R.style.custom_dialog2);
            this.mDialog.setCancelable(this.mPickerOptions.cancelable);
            this.mDialog.setContentView(this.dialogView);
            Window window = this.mDialog.getWindow();
            if (window != null) {
                window.setWindowAnimations(C0757R.style.picker_view_scale_anim);
                window.setGravity(17);
            }
            this.mDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.bigkoo.pickerview.view.BasePickerView.6
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (BasePickerView.this.onDismissListener != null) {
                        BasePickerView.this.onDismissListener.onDismiss(BasePickerView.this);
                    }
                }
            });
        }
    }

    private void showDialog() {
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            dialog.show();
        }
    }

    private void dismissDialog() {
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    public ViewGroup getDialogContainerLayout() {
        return this.contentContainer;
    }

    public Dialog getDialog() {
        return this.mDialog;
    }
}
