package com.yuyh.library.imgsel.adapter;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import com.yuyh.easyadapter.abslistview.EasyLVAdapter;
import com.yuyh.easyadapter.abslistview.EasyLVHolder;
import com.yuyh.library.imgsel.C1457R;
import com.yuyh.library.imgsel.ISNav;
import com.yuyh.library.imgsel.bean.Folder;
import com.yuyh.library.imgsel.common.OnFolderChangeListener;
import com.yuyh.library.imgsel.config.ISListConfig;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class FolderListAdapter extends EasyLVAdapter<Folder> {
    private ISListConfig config;
    private Context context;
    private List<Folder> folderList;
    private OnFolderChangeListener listener;
    private int selected;

    public FolderListAdapter(Context context, List<Folder> list, ISListConfig iSListConfig) {
        super(context, list, C1457R.layout.item_img_sel_folder);
        this.selected = 0;
        this.context = context;
        this.folderList = list;
        this.config = iSListConfig;
    }

    @Override // com.yuyh.easyadapter.abslistview.EasyLVAdapter
    public void convert(EasyLVHolder easyLVHolder, final int i, Folder folder) {
        if (i == 0) {
            easyLVHolder.setText(C1457R.id.tvFolderName, "所有图片").setText(C1457R.id.tvImageNum, "共" + getTotalImageSize() + "张");
            ImageView imageView = (ImageView) easyLVHolder.getView(C1457R.id.ivFolder);
            if (this.folderList.size() > 0) {
                ISNav.getInstance().displayImage(this.context, folder.cover.path, imageView);
            }
        } else {
            easyLVHolder.setText(C1457R.id.tvFolderName, folder.name).setText(C1457R.id.tvImageNum, "共" + folder.images.size() + "张");
            ImageView imageView2 = (ImageView) easyLVHolder.getView(C1457R.id.ivFolder);
            if (this.folderList.size() > 0) {
                ISNav.getInstance().displayImage(this.context, folder.cover.path, imageView2);
            }
        }
        easyLVHolder.setVisible(C1457R.id.viewLine, i != getCount() - 1);
        if (this.selected == i) {
            easyLVHolder.setVisible(C1457R.id.indicator, true);
        } else {
            easyLVHolder.setVisible(C1457R.id.indicator, false);
        }
        easyLVHolder.getConvertView().setOnClickListener(new View.OnClickListener() { // from class: com.yuyh.library.imgsel.adapter.FolderListAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FolderListAdapter.this.setSelectIndex(i);
            }
        });
    }

    public void setData(List<Folder> list) {
        this.folderList.clear();
        if (list != null && list.size() > 0) {
            this.folderList.addAll(list);
        }
        notifyDataSetChanged();
    }

    private int getTotalImageSize() {
        List<Folder> list = this.folderList;
        int size = 0;
        if (list != null && list.size() > 0) {
            Iterator<Folder> it = this.folderList.iterator();
            while (it.hasNext()) {
                size += it.next().images.size();
            }
        }
        return size;
    }

    public void setSelectIndex(int i) {
        if (this.selected == i) {
            return;
        }
        OnFolderChangeListener onFolderChangeListener = this.listener;
        if (onFolderChangeListener != null) {
            onFolderChangeListener.onChange(i, this.folderList.get(i));
        }
        this.selected = i;
        notifyDataSetChanged();
    }

    public int getSelectIndex() {
        return this.selected;
    }

    public void setOnFloderChangeListener(OnFolderChangeListener onFolderChangeListener) {
        this.listener = onFolderChangeListener;
    }
}
