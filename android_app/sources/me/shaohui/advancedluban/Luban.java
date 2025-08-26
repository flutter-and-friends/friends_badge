package me.shaohui.advancedluban;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import java.io.File;
import java.util.Collections;
import java.util.List;
import p024rx.Observable;
import p024rx.android.schedulers.AndroidSchedulers;
import p024rx.functions.Action1;

/* loaded from: classes2.dex */
public class Luban {
    public static final int CUSTOM_GEAR = 4;
    private static String DEFAULT_DISK_CACHE_DIR = "luban_disk_cache";
    public static final int FIRST_GEAR = 1;
    private static final String TAG = "Luban";
    public static final int THIRD_GEAR = 3;
    private LubanBuilder mBuilder;
    private File mFile;
    private List<File> mFileList;

    private Luban(File file) {
        this.mBuilder = new LubanBuilder(file);
    }

    public static Luban compress(Context context, File file) {
        Luban luban = new Luban(getPhotoCacheDir(context));
        luban.mFile = file;
        luban.mFileList = Collections.singletonList(file);
        return luban;
    }

    public static Luban compress(Context context, List<File> list) {
        Luban luban = new Luban(getPhotoCacheDir(context));
        luban.mFileList = list;
        luban.mFile = list.get(0);
        return luban;
    }

    public Luban putGear(int i) {
        this.mBuilder.gear = i;
        return this;
    }

    public Luban setCompressFormat(Bitmap.CompressFormat compressFormat) {
        this.mBuilder.compressFormat = compressFormat;
        return this;
    }

    public Luban setMaxSize(int i) {
        this.mBuilder.maxSize = i;
        return this;
    }

    public Luban setMaxWidth(int i) {
        this.mBuilder.maxWidth = i;
        return this;
    }

    public Luban setMaxHeight(int i) {
        this.mBuilder.maxHeight = i;
        return this;
    }

    public void launch(final OnCompressListener onCompressListener) {
        asObservable().subscribeOn(AndroidSchedulers.mainThread()).doOnRequest(new Action1<Long>() { // from class: me.shaohui.advancedluban.Luban.3
            @Override // p024rx.functions.Action1
            public void call(Long l) {
                onCompressListener.onStart();
            }
        }).subscribe(new Action1<File>() { // from class: me.shaohui.advancedluban.Luban.1
            @Override // p024rx.functions.Action1
            public void call(File file) {
                onCompressListener.onSuccess(file);
            }
        }, new Action1<Throwable>() { // from class: me.shaohui.advancedluban.Luban.2
            @Override // p024rx.functions.Action1
            public void call(Throwable th) {
                onCompressListener.onError(th);
            }
        });
    }

    public void launch(final OnMultiCompressListener onMultiCompressListener) {
        asListObservable().subscribeOn(AndroidSchedulers.mainThread()).doOnRequest(new Action1<Long>() { // from class: me.shaohui.advancedluban.Luban.6
            @Override // p024rx.functions.Action1
            public void call(Long l) {
                onMultiCompressListener.onStart();
            }
        }).subscribe(new Action1<List<File>>() { // from class: me.shaohui.advancedluban.Luban.4
            @Override // p024rx.functions.Action1
            public void call(List<File> list) {
                onMultiCompressListener.onSuccess(list);
            }
        }, new Action1<Throwable>() { // from class: me.shaohui.advancedluban.Luban.5
            @Override // p024rx.functions.Action1
            public void call(Throwable th) {
                onMultiCompressListener.onError(th);
            }
        });
    }

    public Observable<File> asObservable() {
        return new LubanCompresser(this.mBuilder).singleAction(this.mFile);
    }

    public Observable<List<File>> asListObservable() {
        return new LubanCompresser(this.mBuilder).multiAction(this.mFileList);
    }

    private static File getPhotoCacheDir(Context context) {
        return getPhotoCacheDir(context, DEFAULT_DISK_CACHE_DIR);
    }

    private static File getPhotoCacheDir(Context context, String str) {
        File cacheDir = context.getCacheDir();
        if (cacheDir != null) {
            File file = new File(cacheDir, str);
            if (file.mkdirs() || (file.exists() && file.isDirectory())) {
                return file;
            }
            return null;
        }
        if (Log.isLoggable(TAG, 6)) {
            Log.e(TAG, "default disk cache dir is null");
        }
        return null;
    }

    public Luban clearCache() {
        if (this.mBuilder.cacheDir.exists()) {
            deleteFile(this.mBuilder.cacheDir);
        }
        return this;
    }

    private void deleteFile(File file) {
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                deleteFile(file2);
            }
        }
        file.delete();
    }
}
