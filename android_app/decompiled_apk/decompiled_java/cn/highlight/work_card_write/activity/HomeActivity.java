package cn.highlight.work_card_write.activity;

import android.nfc.NfcAdapter;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import butterknife.BindView;
import butterknife.OnClick;
import cn.highlight.work_card_write.Constants;
import cn.highlight.work_card_write.R;
import cn.highlight.work_card_write.base.BaseActivity;
import cn.highlight.work_card_write.fragment.CardFragment;
import cn.highlight.work_card_write.fragment.EditFragment;
import cn.highlight.work_card_write.fragment.MyFragment;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class HomeActivity extends BaseActivity {
    private static HomeActivity instance;
    private CardFragment cardFragment;
    private EditFragment editFragment;

    @BindView(R.id.imgCard)
    ImageView imgCard;

    @BindView(R.id.imgHome)
    ImageView imgHome;

    @BindView(R.id.imgMy)
    ImageView imgMy;

    @BindView(R.id.linearCard)
    LinearLayout linearCard;

    @BindView(R.id.linearContent)
    LinearLayout linearContent;

    @BindView(R.id.linearHome)
    LinearLayout linearHome;

    @BindView(R.id.linearMy)
    LinearLayout linearMy;
    private MyFragment myFragment;

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected void initViews(Bundle bundle) {
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected int setLayoutId() {
        return R.layout.act_home;
    }

    public static HomeActivity getInstance() {
        return instance;
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity
    protected void initData() {
        initUI();
        initFragment();
        clearFragmentsBeforeCreate();
        instance = this;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        NfcAdapter defaultAdapter = NfcAdapter.getDefaultAdapter(this);
        if (defaultAdapter != null) {
            defaultAdapter.enableReaderMode(this, null, 8, new Bundle());
        }
        Constants.editCropImage = null;
        Constants.editSelectModel = null;
        Constants.editModelImage = null;
        Constants.editSaveModel = null;
        Constants.IsModelThemeIn = false;
    }

    private void initUI() {
        this.imgHome.setImageResource(R.mipmap.work_home1);
        this.imgCard.setImageResource(R.mipmap.work_card);
        this.imgMy.setImageResource(R.mipmap.work_my);
    }

    public void changeFrag(int i) {
        setUI(i);
        setFragment(i);
    }

    private void initFragment() {
        this.editFragment = new EditFragment();
        this.cardFragment = new CardFragment();
        this.myFragment = new MyFragment();
        getSupportFragmentManager().beginTransaction().add(R.id.linearContent, this.editFragment).add(R.id.linearContent, this.cardFragment).add(R.id.linearContent, this.myFragment).commitAllowingStateLoss();
        getSupportFragmentManager().beginTransaction().show(this.editFragment).hide(this.cardFragment).hide(this.myFragment).commitAllowingStateLoss();
    }

    public void clearFragmentsBeforeCreate() {
        List<Fragment> fragments = getSupportFragmentManager().getFragments();
        if (fragments.size() == 0) {
            return;
        }
        FragmentTransaction fragmentTransactionBeginTransaction = getSupportFragmentManager().beginTransaction();
        Iterator<Fragment> it = fragments.iterator();
        while (it.hasNext()) {
            fragmentTransactionBeginTransaction.remove(it.next());
        }
        fragmentTransactionBeginTransaction.commitNow();
    }

    @OnClick({R.id.linearHome, R.id.linearCard, R.id.linearMy})
    public void onViewClicked(View view) {
        int id = view.getId();
        if (id == R.id.linearCard) {
            setUI(1);
            setFragment(1);
            Constants.cardShowPage = "模板";
        } else if (id == R.id.linearHome) {
            setUI(0);
            setFragment(0);
        } else {
            if (id != R.id.linearMy) {
                return;
            }
            setUI(2);
            setFragment(2);
        }
    }

    public void setUI(int i) {
        this.imgHome.setImageResource(R.mipmap.work_home);
        this.imgCard.setImageResource(R.mipmap.work_card);
        this.imgMy.setImageResource(R.mipmap.work_my);
        if (i == 0) {
            this.imgHome.setImageResource(R.mipmap.work_home1);
        } else if (i == 1) {
            this.imgCard.setImageResource(R.mipmap.work_card1);
        } else {
            if (i != 2) {
                return;
            }
            this.imgMy.setImageResource(R.mipmap.work_my1);
        }
    }

    public void setFragment(int i) {
        if (i == 0) {
            getSupportFragmentManager().beginTransaction().show(this.editFragment).hide(this.cardFragment).hide(this.myFragment).commitAllowingStateLoss();
        } else if (i == 1) {
            getSupportFragmentManager().beginTransaction().show(this.cardFragment).hide(this.editFragment).hide(this.myFragment).commitAllowingStateLoss();
        } else {
            if (i != 2) {
                return;
            }
            getSupportFragmentManager().beginTransaction().show(this.myFragment).hide(this.editFragment).hide(this.cardFragment).commitAllowingStateLoss();
        }
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4 && keyEvent.getAction() == 0) {
            doubleBack();
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        setUI(2);
        setFragment(2);
    }

    @Override // cn.highlight.work_card_write.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }
}
