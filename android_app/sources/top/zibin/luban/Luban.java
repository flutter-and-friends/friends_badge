package top.zibin.luban;

import android.content.Context;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class Luban implements Handler.Callback {
    private static final String DEFAULT_DISK_CACHE_DIR = "luban_disk_cache";
    private static final int MSG_COMPRESS_ERROR = 2;
    private static final int MSG_COMPRESS_START = 1;
    private static final int MSG_COMPRESS_SUCCESS = 0;
    private static final String TAG = "Luban";
    private boolean focusAlpha;
    private OnCompressListener mCompressListener;
    private CompressionPredicate mCompressionPredicate;
    private Handler mHandler;
    private int mLeastCompressSize;
    private OnRenameListener mRenameListener;
    private List<InputStreamProvider> mStreamProviders;
    private String mTargetDir;

    private Luban(Builder builder) {
        this.mTargetDir = builder.mTargetDir;
        this.focusAlpha = builder.focusAlpha;
        this.mRenameListener = builder.mRenameListener;
        this.mStreamProviders = builder.mStreamProviders;
        this.mCompressListener = builder.mCompressListener;
        this.mLeastCompressSize = builder.mLeastCompressSize;
        this.mCompressionPredicate = builder.mCompressionPredicate;
        this.mHandler = new Handler(Looper.getMainLooper(), this);
    }

    public static Builder with(Context context) {
        return new Builder(context);
    }

    private File getImageCacheFile(Context context, String str) {
        if (TextUtils.isEmpty(this.mTargetDir)) {
            this.mTargetDir = getImageCacheDir(context).getAbsolutePath();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.mTargetDir);
        sb.append("/");
        sb.append(System.currentTimeMillis());
        sb.append((int) (Math.random() * 1000.0d));
        if (TextUtils.isEmpty(str)) {
            str = ".jpg";
        }
        sb.append(str);
        return new File(sb.toString());
    }

    private File getImageCustomFile(Context context, String str) {
        if (TextUtils.isEmpty(this.mTargetDir)) {
            this.mTargetDir = getImageCacheDir(context).getAbsolutePath();
        }
        return new File(this.mTargetDir + "/" + str);
    }

    private File getImageCacheDir(Context context) {
        return getImageCacheDir(context, DEFAULT_DISK_CACHE_DIR);
    }

    private static File getImageCacheDir(Context context, String str) {
        File externalCacheDir = context.getExternalCacheDir();
        if (externalCacheDir != null) {
            File file = new File(externalCacheDir, str);
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

    /* JADX INFO: Access modifiers changed from: private */
    public void launch(final Context context) {
        List<InputStreamProvider> list = this.mStreamProviders;
        if (list == null || (list.size() == 0 && this.mCompressListener != null)) {
            this.mCompressListener.onError(new NullPointerException("image file cannot be null"));
        }
        Iterator<InputStreamProvider> it = this.mStreamProviders.iterator();
        while (it.hasNext()) {
            final InputStreamProvider next = it.next();
            AsyncTask.SERIAL_EXECUTOR.execute(new Runnable() { // from class: top.zibin.luban.Luban.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Luban.this.mHandler.sendMessage(Luban.this.mHandler.obtainMessage(1));
                        Luban.this.mHandler.sendMessage(Luban.this.mHandler.obtainMessage(0, Luban.this.compress(context, next)));
                    } catch (IOException e) {
                        Luban.this.mHandler.sendMessage(Luban.this.mHandler.obtainMessage(2, e));
                    }
                }
            });
            it.remove();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File get(InputStreamProvider inputStreamProvider, Context context) throws IOException {
        try {
            return new Engine(inputStreamProvider, getImageCacheFile(context, Checker.SINGLE.extSuffix(inputStreamProvider)), this.focusAlpha).compress();
        } finally {
            inputStreamProvider.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<File> get(Context context) throws IOException {
        ArrayList arrayList = new ArrayList();
        Iterator<InputStreamProvider> it = this.mStreamProviders.iterator();
        while (it.hasNext()) {
            arrayList.add(compress(context, it.next()));
            it.remove();
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File compress(Context context, InputStreamProvider inputStreamProvider) throws IOException {
        try {
            return compressReal(context, inputStreamProvider);
        } finally {
            inputStreamProvider.close();
        }
    }

    private File compressReal(Context context, InputStreamProvider inputStreamProvider) throws IOException {
        File imageCacheFile = getImageCacheFile(context, Checker.SINGLE.extSuffix(inputStreamProvider));
        OnRenameListener onRenameListener = this.mRenameListener;
        if (onRenameListener != null) {
            imageCacheFile = getImageCustomFile(context, onRenameListener.rename(inputStreamProvider.getPath()));
        }
        CompressionPredicate compressionPredicate = this.mCompressionPredicate;
        if (compressionPredicate != null) {
            if (compressionPredicate.apply(inputStreamProvider.getPath()) && Checker.SINGLE.needCompress(this.mLeastCompressSize, inputStreamProvider.getPath())) {
                return new Engine(inputStreamProvider, imageCacheFile, this.focusAlpha).compress();
            }
            return new File(inputStreamProvider.getPath());
        }
        if (Checker.SINGLE.needCompress(this.mLeastCompressSize, inputStreamProvider.getPath())) {
            return new Engine(inputStreamProvider, imageCacheFile, this.focusAlpha).compress();
        }
        return new File(inputStreamProvider.getPath());
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (this.mCompressListener == null) {
            return false;
        }
        int i = message.what;
        if (i == 0) {
            this.mCompressListener.onSuccess((File) message.obj);
        } else if (i == 1) {
            this.mCompressListener.onStart();
        } else if (i == 2) {
            this.mCompressListener.onError((Throwable) message.obj);
        }
        return false;
    }

    public static class Builder {
        private Context context;
        private boolean focusAlpha;
        private OnCompressListener mCompressListener;
        private CompressionPredicate mCompressionPredicate;
        private OnRenameListener mRenameListener;
        private String mTargetDir;
        private int mLeastCompressSize = 100;
        private List<InputStreamProvider> mStreamProviders = new ArrayList();

        public Builder putGear(int i) {
            return this;
        }

        Builder(Context context) {
            this.context = context;
        }

        private Luban build() {
            return new Luban(this);
        }

        public Builder load(InputStreamProvider inputStreamProvider) {
            this.mStreamProviders.add(inputStreamProvider);
            return this;
        }

        public Builder load(final File file) {
            this.mStreamProviders.add(new InputStreamAdapter() { // from class: top.zibin.luban.Luban.Builder.1
                @Override // top.zibin.luban.InputStreamAdapter
                public InputStream openInternal() throws IOException {
                    return new FileInputStream(file);
                }

                @Override // top.zibin.luban.InputStreamProvider
                public String getPath() {
                    return file.getAbsolutePath();
                }
            });
            return this;
        }

        public Builder load(final String str) {
            this.mStreamProviders.add(new InputStreamAdapter() { // from class: top.zibin.luban.Luban.Builder.2
                @Override // top.zibin.luban.InputStreamAdapter
                public InputStream openInternal() throws IOException {
                    return new FileInputStream(str);
                }

                @Override // top.zibin.luban.InputStreamProvider
                public String getPath() {
                    return str;
                }
            });
            return this;
        }

        public <T> Builder load(List<T> list) {
            for (T t : list) {
                if (t instanceof String) {
                    load((String) t);
                } else if (t instanceof File) {
                    load((File) t);
                } else if (t instanceof Uri) {
                    load((Uri) t);
                } else {
                    throw new IllegalArgumentException("Incoming data type exception, it must be String, File, Uri or Bitmap");
                }
            }
            return this;
        }

        public Builder load(final Uri uri) {
            this.mStreamProviders.add(new InputStreamAdapter() { // from class: top.zibin.luban.Luban.Builder.3
                @Override // top.zibin.luban.InputStreamAdapter
                public InputStream openInternal() throws IOException {
                    return Builder.this.context.getContentResolver().openInputStream(uri);
                }

                @Override // top.zibin.luban.InputStreamProvider
                public String getPath() {
                    return uri.getPath();
                }
            });
            return this;
        }

        public Builder setRenameListener(OnRenameListener onRenameListener) {
            this.mRenameListener = onRenameListener;
            return this;
        }

        public Builder setCompressListener(OnCompressListener onCompressListener) {
            this.mCompressListener = onCompressListener;
            return this;
        }

        public Builder setTargetDir(String str) {
            this.mTargetDir = str;
            return this;
        }

        public Builder setFocusAlpha(boolean z) {
            this.focusAlpha = z;
            return this;
        }

        public Builder ignoreBy(int i) {
            this.mLeastCompressSize = i;
            return this;
        }

        public Builder filter(CompressionPredicate compressionPredicate) {
            this.mCompressionPredicate = compressionPredicate;
            return this;
        }

        public void launch() {
            build().launch(this.context);
        }

        public File get(final String str) throws IOException {
            return build().get(new InputStreamAdapter() { // from class: top.zibin.luban.Luban.Builder.4
                @Override // top.zibin.luban.InputStreamAdapter
                public InputStream openInternal() throws IOException {
                    return new FileInputStream(str);
                }

                @Override // top.zibin.luban.InputStreamProvider
                public String getPath() {
                    return str;
                }
            }, this.context);
        }

        public List<File> get() throws IOException {
            return build().get(this.context);
        }
    }
}
