package com.yuyh.library.imgsel.p017ui.fragment;

import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.transition.Fade;
import android.transition.Scene;
import android.transition.TransitionManager;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.PopupWindow;
import android.widget.Toast;
import androidx.appcompat.widget.ListPopupWindow;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import androidx.fragment.app.Fragment;
import androidx.loader.app.LoaderManager;
import androidx.loader.content.CursorLoader;
import androidx.loader.content.Loader;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.yanzhenjie.permission.runtime.Permission;
import com.yuyh.library.imgsel.C1457R;
import com.yuyh.library.imgsel.adapter.FolderListAdapter;
import com.yuyh.library.imgsel.adapter.ImageListAdapter;
import com.yuyh.library.imgsel.adapter.PreviewAdapter;
import com.yuyh.library.imgsel.bean.Folder;
import com.yuyh.library.imgsel.bean.Image;
import com.yuyh.library.imgsel.common.Callback;
import com.yuyh.library.imgsel.common.Constant;
import com.yuyh.library.imgsel.common.OnFolderChangeListener;
import com.yuyh.library.imgsel.common.OnItemClickListener;
import com.yuyh.library.imgsel.config.ISListConfig;
import com.yuyh.library.imgsel.p017ui.ISListActivity;
import com.yuyh.library.imgsel.utils.DisplayUtils;
import com.yuyh.library.imgsel.utils.FileUtils;
import com.yuyh.library.imgsel.utils.LogUtils;
import com.yuyh.library.imgsel.widget.CustomViewPager;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class ImgSelFragment extends Fragment implements View.OnClickListener, ViewPager.OnPageChangeListener {
    private static final int CAMERA_REQUEST_CODE = 1;
    private static final int LOADER_ALL = 0;
    private static final int LOADER_CATEGORY = 1;
    private static final int REQUEST_CAMERA = 5;
    private Button btnAlbumSelected;
    private Callback callback;
    private ISListConfig config;
    private FolderListAdapter folderListAdapter;
    private ListPopupWindow folderPopupWindow;
    private ImageListAdapter imageListAdapter;
    private PreviewAdapter previewAdapter;
    private View rlBottom;
    private RecyclerView rvImageList;
    private File tempFile;
    private CustomViewPager viewPager;
    private List<Folder> folderList = new ArrayList();
    private List<Image> imageList = new ArrayList();
    private boolean hasFolderGened = false;
    private LoaderManager.LoaderCallbacks<Cursor> mLoaderCallback = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.yuyh.library.imgsel.ui.fragment.ImgSelFragment.3
        private final String[] IMAGE_PROJECTION = {"_data", "_display_name", "_id"};

        @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<Cursor> loader) {
        }

        @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
        public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
            if (i == 0) {
                return new CursorLoader(ImgSelFragment.this.getActivity(), MediaStore.Images.Media.EXTERNAL_CONTENT_URI, this.IMAGE_PROJECTION, null, null, "date_added DESC");
            }
            if (i != 1) {
                return null;
            }
            return new CursorLoader(ImgSelFragment.this.getActivity(), MediaStore.Images.Media.EXTERNAL_CONTENT_URI, this.IMAGE_PROJECTION, this.IMAGE_PROJECTION[0] + " not like '%.gif%'", null, "date_added DESC");
        }

        @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
        public void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
            File file;
            File parentFile;
            if (cursor == null || cursor.getCount() <= 0) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            cursor.moveToFirst();
            do {
                String string = cursor.getString(cursor.getColumnIndexOrThrow(this.IMAGE_PROJECTION[0]));
                Image image = new Image(string, cursor.getString(cursor.getColumnIndexOrThrow(this.IMAGE_PROJECTION[1])));
                arrayList.add(image);
                if (!ImgSelFragment.this.hasFolderGened && (parentFile = (file = new File(string)).getParentFile()) != null && file.exists() && file.length() >= 10) {
                    Folder folder = null;
                    for (Folder folder2 : ImgSelFragment.this.folderList) {
                        if (TextUtils.equals(folder2.path, parentFile.getAbsolutePath())) {
                            folder = folder2;
                        }
                    }
                    if (folder != null) {
                        folder.images.add(image);
                    } else {
                        Folder folder3 = new Folder();
                        folder3.name = parentFile.getName();
                        folder3.path = parentFile.getAbsolutePath();
                        folder3.cover = image;
                        ArrayList arrayList2 = new ArrayList();
                        arrayList2.add(image);
                        folder3.images = arrayList2;
                        ImgSelFragment.this.folderList.add(folder3);
                    }
                }
            } while (cursor.moveToNext());
            ImgSelFragment.this.imageList.clear();
            if (ImgSelFragment.this.config.needCamera) {
                ImgSelFragment.this.imageList.add(new Image());
            }
            ImgSelFragment.this.imageList.addAll(arrayList);
            ImgSelFragment.this.imageListAdapter.notifyDataSetChanged();
            ImgSelFragment.this.folderListAdapter.notifyDataSetChanged();
            ImgSelFragment.this.hasFolderGened = true;
        }
    };

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
    }

    public static ImgSelFragment instance() {
        ImgSelFragment imgSelFragment = new ImgSelFragment();
        imgSelFragment.setArguments(new Bundle());
        return imgSelFragment;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(C1457R.layout.fragment_img_sel, viewGroup, false);
        this.rvImageList = (RecyclerView) viewInflate.findViewById(C1457R.id.rvImageList);
        this.btnAlbumSelected = (Button) viewInflate.findViewById(C1457R.id.btnAlbumSelected);
        this.btnAlbumSelected.setOnClickListener(this);
        this.rlBottom = viewInflate.findViewById(C1457R.id.rlBottom);
        this.viewPager = (CustomViewPager) viewInflate.findViewById(C1457R.id.viewPager);
        this.viewPager.setOffscreenPageLimit(1);
        this.viewPager.addOnPageChangeListener(this);
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.config = ((ISListActivity) getActivity()).getConfig();
        this.callback = (ISListActivity) getActivity();
        ISListConfig iSListConfig = this.config;
        if (iSListConfig == null) {
            Log.e("ImgSelFragment", "config 参数不能为空");
            return;
        }
        this.btnAlbumSelected.setText(iSListConfig.allImagesText);
        RecyclerView recyclerView = this.rvImageList;
        recyclerView.setLayoutManager(new GridLayoutManager(recyclerView.getContext(), 3));
        this.rvImageList.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.yuyh.library.imgsel.ui.fragment.ImgSelFragment.1
            int halfSpacing;
            int spacing;

            {
                this.spacing = DisplayUtils.dip2px(ImgSelFragment.this.rvImageList.getContext(), 6.0f);
                this.halfSpacing = this.spacing >> 1;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect rect, View view2, RecyclerView recyclerView2, RecyclerView.State state) {
                int i = this.halfSpacing;
                rect.left = i;
                rect.right = i;
                rect.top = i;
                rect.bottom = i;
            }
        });
        if (this.config.needCamera) {
            this.imageList.add(new Image());
        }
        this.imageListAdapter = new ImageListAdapter(getActivity(), this.imageList, this.config);
        this.imageListAdapter.setShowCamera(this.config.needCamera);
        this.imageListAdapter.setMutiSelect(this.config.multiSelect);
        this.rvImageList.setAdapter(this.imageListAdapter);
        this.imageListAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.yuyh.library.imgsel.ui.fragment.ImgSelFragment.2
            @Override // com.yuyh.library.imgsel.common.OnItemClickListener
            public int onCheckedClick(int i, Image image) {
                return ImgSelFragment.this.checkedImage(i, image);
            }

            @Override // com.yuyh.library.imgsel.common.OnItemClickListener
            public void onImageClick(int i, Image image) throws IOException {
                if (!ImgSelFragment.this.config.needCamera || i != 0) {
                    if (!ImgSelFragment.this.config.multiSelect) {
                        if (ImgSelFragment.this.callback != null) {
                            ImgSelFragment.this.callback.onSingleImageSelected(image.path);
                            return;
                        }
                        return;
                    }
                    TransitionManager.go(new Scene(ImgSelFragment.this.viewPager), new Fade().setDuration(200L));
                    CustomViewPager customViewPager = ImgSelFragment.this.viewPager;
                    ImgSelFragment imgSelFragment = ImgSelFragment.this;
                    customViewPager.setAdapter(imgSelFragment.previewAdapter = new PreviewAdapter(imgSelFragment.getActivity(), ImgSelFragment.this.imageList, ImgSelFragment.this.config));
                    ImgSelFragment.this.previewAdapter.setListener(new OnItemClickListener() { // from class: com.yuyh.library.imgsel.ui.fragment.ImgSelFragment.2.1
                        @Override // com.yuyh.library.imgsel.common.OnItemClickListener
                        public int onCheckedClick(int i2, Image image2) {
                            return ImgSelFragment.this.checkedImage(i2, image2);
                        }

                        @Override // com.yuyh.library.imgsel.common.OnItemClickListener
                        public void onImageClick(int i2, Image image2) {
                            ImgSelFragment.this.hidePreview();
                        }
                    });
                    if (ImgSelFragment.this.config.needCamera) {
                        ImgSelFragment.this.callback.onPreviewChanged(i, ImgSelFragment.this.imageList.size() - 1, true);
                    } else {
                        ImgSelFragment.this.callback.onPreviewChanged(i + 1, ImgSelFragment.this.imageList.size(), true);
                    }
                    CustomViewPager customViewPager2 = ImgSelFragment.this.viewPager;
                    if (ImgSelFragment.this.config.needCamera) {
                        i--;
                    }
                    customViewPager2.setCurrentItem(i);
                    ImgSelFragment.this.viewPager.setVisibility(0);
                    return;
                }
                ImgSelFragment.this.showCameraAction();
            }
        });
        this.folderListAdapter = new FolderListAdapter(getActivity(), this.folderList, this.config);
        getActivity().getSupportLoaderManager().initLoader(0, null, this.mLoaderCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int checkedImage(int i, Image image) {
        if (image == null) {
            return 0;
        }
        if (Constant.imageList.contains(image.path)) {
            Constant.imageList.remove(image.path);
            Callback callback = this.callback;
            if (callback != null) {
                callback.onImageUnselected(image.path);
            }
        } else {
            if (this.config.maxNum <= Constant.imageList.size()) {
                Toast.makeText(getActivity(), String.format(getString(C1457R.string.maxnum), Integer.valueOf(this.config.maxNum)), 0).show();
                return 0;
            }
            Constant.imageList.add(image.path);
            Callback callback2 = this.callback;
            if (callback2 != null) {
                callback2.onImageSelected(image.path);
            }
        }
        return 1;
    }

    private void createPopupFolderList(int i, int i2) {
        this.folderPopupWindow = new ListPopupWindow(getActivity());
        this.folderPopupWindow.setAnimationStyle(C1457R.style.PopupAnimBottom);
        this.folderPopupWindow.setBackgroundDrawable(new ColorDrawable(0));
        this.folderPopupWindow.setAdapter(this.folderListAdapter);
        this.folderPopupWindow.setContentWidth(i);
        this.folderPopupWindow.setWidth(i);
        this.folderPopupWindow.setHeight(-2);
        this.folderPopupWindow.setAnchorView(this.rlBottom);
        this.folderPopupWindow.setModal(true);
        this.folderListAdapter.setOnFloderChangeListener(new OnFolderChangeListener() { // from class: com.yuyh.library.imgsel.ui.fragment.ImgSelFragment.4
            @Override // com.yuyh.library.imgsel.common.OnFolderChangeListener
            public void onChange(int i3, Folder folder) {
                ImgSelFragment.this.folderPopupWindow.dismiss();
                if (i3 == 0) {
                    ImgSelFragment.this.getActivity().getSupportLoaderManager().restartLoader(0, null, ImgSelFragment.this.mLoaderCallback);
                    ImgSelFragment.this.btnAlbumSelected.setText(ImgSelFragment.this.config.allImagesText);
                    return;
                }
                ImgSelFragment.this.imageList.clear();
                if (ImgSelFragment.this.config.needCamera) {
                    ImgSelFragment.this.imageList.add(new Image());
                }
                ImgSelFragment.this.imageList.addAll(folder.images);
                ImgSelFragment.this.imageListAdapter.notifyDataSetChanged();
                ImgSelFragment.this.btnAlbumSelected.setText(folder.name);
            }
        });
        this.folderPopupWindow.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.yuyh.library.imgsel.ui.fragment.ImgSelFragment.5
            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                ImgSelFragment.this.setBackgroundAlpha(1.0f);
            }
        });
    }

    public void setBackgroundAlpha(float f) {
        WindowManager.LayoutParams attributes = getActivity().getWindow().getAttributes();
        attributes.alpha = f;
        getActivity().getWindow().setAttributes(attributes);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        final int width = (getActivity().getWindowManager().getDefaultDisplay().getWidth() / 3) * 2;
        if (view.getId() == this.btnAlbumSelected.getId()) {
            if (this.folderPopupWindow == null) {
                createPopupFolderList(width, width);
            }
            if (this.folderPopupWindow.isShowing()) {
                this.folderPopupWindow.dismiss();
                return;
            }
            this.folderPopupWindow.show();
            if (this.folderPopupWindow.getListView() != null) {
                this.folderPopupWindow.getListView().setDivider(new ColorDrawable(ContextCompat.getColor(getActivity(), C1457R.color.bottom_bg)));
            }
            int selectIndex = this.folderListAdapter.getSelectIndex();
            if (selectIndex != 0) {
                selectIndex--;
            }
            this.folderPopupWindow.getListView().setSelection(selectIndex);
            this.folderPopupWindow.getListView().getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.yuyh.library.imgsel.ui.fragment.ImgSelFragment.6
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
                    if (Build.VERSION.SDK_INT < 16) {
                        ImgSelFragment.this.folderPopupWindow.getListView().getViewTreeObserver().removeGlobalOnLayoutListener(this);
                    } else {
                        ImgSelFragment.this.folderPopupWindow.getListView().getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    }
                    if (ImgSelFragment.this.folderPopupWindow.getListView().getMeasuredHeight() > width) {
                        ImgSelFragment.this.folderPopupWindow.setHeight(width);
                        ImgSelFragment.this.folderPopupWindow.show();
                    }
                }
            });
            setBackgroundAlpha(0.6f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showCameraAction() throws IOException {
        if (this.config.maxNum <= Constant.imageList.size()) {
            Toast.makeText(getActivity(), String.format(getString(C1457R.string.maxnum), Integer.valueOf(this.config.maxNum)), 0).show();
            return;
        }
        if (ContextCompat.checkSelfPermission(getActivity(), Permission.CAMERA) != 0) {
            requestPermissions(new String[]{Permission.CAMERA}, 1);
            return;
        }
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        if (intent.resolveActivity(getActivity().getPackageManager()) != null) {
            this.tempFile = new File(FileUtils.createRootPath(getActivity()) + "/" + System.currentTimeMillis() + ".jpg");
            LogUtils.m833e(this.tempFile.getAbsolutePath());
            FileUtils.createFile(this.tempFile);
            Uri uriForFile = FileProvider.getUriForFile(getActivity(), FileUtils.getApplicationId(getActivity()) + ".image_provider", this.tempFile);
            Iterator<ResolveInfo> it = getActivity().getPackageManager().queryIntentActivities(intent, 65536).iterator();
            while (it.hasNext()) {
                getActivity().grantUriPermission(it.next().activityInfo.packageName, uriForFile, 3);
            }
            intent.putExtra("output", uriForFile);
            startActivityForResult(intent, 5);
            return;
        }
        Toast.makeText(getActivity(), getString(C1457R.string.open_camera_failure), 0).show();
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        Callback callback;
        if (i == 5) {
            if (i2 == -1) {
                File file = this.tempFile;
                if (file != null && (callback = this.callback) != null) {
                    callback.onCameraShot(file);
                }
            } else {
                File file2 = this.tempFile;
                if (file2 != null && file2.exists()) {
                    this.tempFile.delete();
                }
            }
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // androidx.fragment.app.Fragment
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) throws IOException {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i != 1) {
            return;
        }
        if (iArr.length >= 1 && iArr[0] == 0) {
            showCameraAction();
        } else {
            Toast.makeText(getActivity(), getString(C1457R.string.permission_camera_denied), 0).show();
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i) {
        if (this.config.needCamera) {
            this.callback.onPreviewChanged(i + 1, this.imageList.size() - 1, true);
        } else {
            this.callback.onPreviewChanged(i + 1, this.imageList.size(), true);
        }
    }

    public boolean hidePreview() {
        if (this.viewPager.getVisibility() != 0) {
            return false;
        }
        TransitionManager.go(new Scene(this.viewPager), new Fade().setDuration(200L));
        this.viewPager.setVisibility(8);
        this.callback.onPreviewChanged(0, 0, false);
        this.imageListAdapter.notifyDataSetChanged();
        return true;
    }
}
