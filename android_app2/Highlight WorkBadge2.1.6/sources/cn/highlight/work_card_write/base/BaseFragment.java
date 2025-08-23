package cn.highlight.work_card_write.base;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import cn.highlight.core.utils.Tools;
import cn.highlight.work_card_write.R;
import com.gyf.barlibrary.ImmersionBar;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes.dex */
public abstract class BaseFragment extends Fragment {
    protected ImmersionBar mImmersionBar;
    protected View rootView;
    Unbinder unbinder;

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void OnMessage(String str) {
    }

    protected abstract void initData();

    protected abstract void initViews(Bundle bundle);

    protected abstract int setLayoutId();

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.rootView = layoutInflater.inflate(setLayoutId(), viewGroup, false);
        this.unbinder = ButterKnife.bind(this, this.rootView);
        initViews(bundle);
        initData();
        EventUtil.register(this);
        return this.rootView;
    }

    protected void setImmersionBar(boolean z, boolean z2, String str) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        this.mImmersionBar = ImmersionBar.with((Activity) Objects.requireNonNull(getActivity()));
        this.mImmersionBar.fitsSystemWindows(z);
        this.mImmersionBar.transparentStatusBar();
        this.mImmersionBar.statusBarAlpha(1.0f);
        if (!Tools.isNull(str)) {
            this.mImmersionBar.statusBarColor(str);
        }
        this.mImmersionBar.statusBarDarkFont(z2, 0.2f);
        this.mImmersionBar.init();
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z) {
        ImmersionBar immersionBar;
        super.onHiddenChanged(z);
        if (z || (immersionBar = this.mImmersionBar) == null) {
            return;
        }
        immersionBar.init();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        Unbinder unbinder = this.unbinder;
        if (unbinder != null) {
            unbinder.unbind();
        }
        ImmersionBar immersionBar = this.mImmersionBar;
        if (immersionBar != null) {
            immersionBar.destroy();
        }
        EventUtil.unregister(this);
    }

    public void launchActivity(Class<?> cls) {
        startActivity(new Intent(getActivity(), cls));
        getActivity().overridePendingTransition(R.anim.in_from_right, R.anim.in_from_right_abit);
    }
}
