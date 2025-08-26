package com.darsh.multipleimageselect.activities;

import android.content.Intent;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.provider.MediaStore;
import android.util.DisplayMetrics;
import android.view.MenuItem;
import android.view.View;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.darsh.multipleimageselect.C0915R;
import com.darsh.multipleimageselect.adapters.CustomAlbumSelectAdapter;
import com.darsh.multipleimageselect.helpers.Constants;
import com.darsh.multipleimageselect.models.Album;
import com.yanzhenjie.permission.runtime.Permission;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;

/* loaded from: classes.dex */
public class AlbumSelectActivity extends AppCompatActivity {
    private ActionBar actionBar;
    private CustomAlbumSelectAdapter adapter;
    private ArrayList<Album> albums;
    private TextView errorDisplay;
    private Button grantPermission;
    private GridView gridView;
    private Handler handler;
    private ContentObserver observer;
    private ProgressBar progressBar;
    private TextView requestPermission;
    private Thread thread;
    private final String TAG = AlbumSelectActivity.class.getName();
    private final String[] requiredPermissions = {Permission.READ_EXTERNAL_STORAGE};
    private final String[] projection = {"bucket_display_name", "_data"};

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C0915R.layout.activity_album_select);
        setSupportActionBar((Toolbar) findViewById(C0915R.id.toolbar));
        this.actionBar = getSupportActionBar();
        ActionBar actionBar = this.actionBar;
        if (actionBar != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
            this.actionBar.setHomeAsUpIndicator(C0915R.drawable.ic_arrow_back);
            this.actionBar.setDisplayShowTitleEnabled(true);
            this.actionBar.setTitle(C0915R.string.album_view);
        }
        Intent intent = getIntent();
        if (intent == null) {
            finish();
        }
        Constants.limit = intent.getIntExtra(Constants.INTENT_EXTRA_LIMIT, 10);
        this.errorDisplay = (TextView) findViewById(C0915R.id.text_view_error);
        this.errorDisplay.setVisibility(4);
        this.requestPermission = (TextView) findViewById(C0915R.id.text_view_request_permission);
        this.grantPermission = (Button) findViewById(C0915R.id.button_grant_permission);
        this.grantPermission.setOnClickListener(new View.OnClickListener() { // from class: com.darsh.multipleimageselect.activities.AlbumSelectActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AlbumSelectActivity.this.requestPermission();
            }
        });
        hidePermissionHelperUI();
        this.progressBar = (ProgressBar) findViewById(C0915R.id.progress_bar_album_select);
        this.gridView = (GridView) findViewById(C0915R.id.grid_view_album_select);
        this.gridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.darsh.multipleimageselect.activities.AlbumSelectActivity.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                Intent intent2 = new Intent(AlbumSelectActivity.this.getApplicationContext(), (Class<?>) ImageSelectActivity.class);
                intent2.putExtra(Constants.INTENT_EXTRA_ALBUM, ((Album) AlbumSelectActivity.this.albums.get(i)).name);
                AlbumSelectActivity.this.startActivityForResult(intent2, 2000);
            }
        });
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        this.handler = new Handler() { // from class: com.darsh.multipleimageselect.activities.AlbumSelectActivity.3
            @Override // android.os.Handler
            public void handleMessage(Message message) throws InterruptedException {
                switch (message.what) {
                    case Constants.FETCH_STARTED /* 2001 */:
                        AlbumSelectActivity.this.progressBar.setVisibility(0);
                        AlbumSelectActivity.this.gridView.setVisibility(4);
                        break;
                    case Constants.FETCH_COMPLETED /* 2002 */:
                        if (AlbumSelectActivity.this.adapter != null) {
                            AlbumSelectActivity.this.adapter.notifyDataSetChanged();
                            break;
                        } else {
                            AlbumSelectActivity albumSelectActivity = AlbumSelectActivity.this;
                            albumSelectActivity.adapter = new CustomAlbumSelectAdapter(albumSelectActivity.getApplicationContext(), AlbumSelectActivity.this.albums);
                            AlbumSelectActivity.this.gridView.setAdapter((ListAdapter) AlbumSelectActivity.this.adapter);
                            AlbumSelectActivity.this.progressBar.setVisibility(4);
                            AlbumSelectActivity.this.gridView.setVisibility(0);
                            AlbumSelectActivity albumSelectActivity2 = AlbumSelectActivity.this;
                            albumSelectActivity2.orientationBasedUI(albumSelectActivity2.getResources().getConfiguration().orientation);
                            break;
                        }
                    case Constants.PERMISSION_GRANTED /* 2003 */:
                        AlbumSelectActivity.this.hidePermissionHelperUI();
                        AlbumSelectActivity.this.loadAlbums();
                        break;
                    case Constants.PERMISSION_DENIED /* 2004 */:
                        AlbumSelectActivity.this.showPermissionHelperUI();
                        AlbumSelectActivity.this.progressBar.setVisibility(4);
                        AlbumSelectActivity.this.gridView.setVisibility(4);
                        break;
                    case Constants.ERROR /* 2005 */:
                        AlbumSelectActivity.this.progressBar.setVisibility(4);
                        AlbumSelectActivity.this.errorDisplay.setVisibility(0);
                        break;
                    default:
                        super.handleMessage(message);
                        break;
                }
            }
        };
        this.observer = new ContentObserver(this.handler) { // from class: com.darsh.multipleimageselect.activities.AlbumSelectActivity.4
            @Override // android.database.ContentObserver
            public void onChange(boolean z, Uri uri) throws InterruptedException {
                AlbumSelectActivity.this.loadAlbums();
            }
        };
        getContentResolver().registerContentObserver(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, false, this.observer);
        checkIfPermissionGranted();
    }

    private void checkIfPermissionGranted() {
        if (ContextCompat.checkSelfPermission(this, Permission.READ_EXTERNAL_STORAGE) != 0) {
            requestPermission();
            return;
        }
        Message messageObtainMessage = this.handler.obtainMessage();
        messageObtainMessage.what = Constants.PERMISSION_GRANTED;
        messageObtainMessage.sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestPermission() {
        ActivityCompat.requestPermissions(this, this.requiredPermissions, 23);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i == 23) {
            Message messageObtainMessage = this.handler.obtainMessage();
            messageObtainMessage.what = (iArr.length <= 0 || iArr[0] != 0) ? Constants.PERMISSION_DENIED : Constants.PERMISSION_GRANTED;
            messageObtainMessage.sendToTarget();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hidePermissionHelperUI() {
        this.requestPermission.setVisibility(4);
        this.grantPermission.setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPermissionHelperUI() {
        this.requestPermission.setVisibility(0);
        this.grantPermission.setVisibility(0);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() throws InterruptedException {
        super.onStop();
        abortLoading();
        getContentResolver().unregisterContentObserver(this.observer);
        this.observer = null;
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.handler = null;
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        ActionBar actionBar = this.actionBar;
        if (actionBar != null) {
            actionBar.setHomeAsUpIndicator((Drawable) null);
        }
        this.albums = null;
        CustomAlbumSelectAdapter customAlbumSelectAdapter = this.adapter;
        if (customAlbumSelectAdapter != null) {
            customAlbumSelectAdapter.releaseResources();
        }
        this.gridView.setOnItemClickListener(null);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        orientationBasedUI(configuration.orientation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void orientationBasedUI(int i) {
        WindowManager windowManager = (WindowManager) getApplicationContext().getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        if (this.adapter != null) {
            int i2 = displayMetrics.widthPixels;
            this.adapter.setLayoutParams(i == 1 ? i2 / 2 : i2 / 4);
        }
        this.gridView.setNumColumns(i != 1 ? 4 : 2);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        setResult(0);
        finish();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 2000 && i2 == -1 && intent != null) {
            setResult(-1, intent);
            finish();
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return false;
        }
        onBackPressed();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadAlbums() throws InterruptedException {
        abortLoading();
        this.thread = new Thread(new AlbumLoaderRunnable());
        this.thread.start();
    }

    private void abortLoading() throws InterruptedException {
        Thread thread = this.thread;
        if (thread != null && thread.isAlive()) {
            this.thread.interrupt();
            try {
                this.thread.join();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    private class AlbumLoaderRunnable implements Runnable {
        private AlbumLoaderRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() throws SecurityException, IllegalArgumentException {
            Process.setThreadPriority(10);
            if (AlbumSelectActivity.this.adapter == null) {
                Message messageObtainMessage = AlbumSelectActivity.this.handler.obtainMessage();
                messageObtainMessage.what = Constants.FETCH_STARTED;
                messageObtainMessage.sendToTarget();
            }
            if (Thread.interrupted()) {
                return;
            }
            Cursor cursorQuery = AlbumSelectActivity.this.getApplicationContext().getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, AlbumSelectActivity.this.projection, null, null, "date_added");
            if (cursorQuery == null) {
                Message messageObtainMessage2 = AlbumSelectActivity.this.handler.obtainMessage();
                messageObtainMessage2.what = Constants.ERROR;
                messageObtainMessage2.sendToTarget();
                return;
            }
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            HashSet hashSet = new HashSet();
            if (cursorQuery.moveToLast()) {
                while (!Thread.interrupted()) {
                    String string = cursorQuery.getString(cursorQuery.getColumnIndex(AlbumSelectActivity.this.projection[0]));
                    String string2 = cursorQuery.getString(cursorQuery.getColumnIndex(AlbumSelectActivity.this.projection[1]));
                    if (new File(string2).exists() && !hashSet.contains(string)) {
                        arrayList.add(new Album(string, string2));
                        hashSet.add(string);
                    }
                    if (!cursorQuery.moveToPrevious()) {
                    }
                }
                return;
            }
            cursorQuery.close();
            if (AlbumSelectActivity.this.albums == null) {
                AlbumSelectActivity.this.albums = new ArrayList();
            }
            AlbumSelectActivity.this.albums.clear();
            AlbumSelectActivity.this.albums.addAll(arrayList);
            Message messageObtainMessage3 = AlbumSelectActivity.this.handler.obtainMessage();
            messageObtainMessage3.what = Constants.FETCH_COMPLETED;
            messageObtainMessage3.sendToTarget();
            Thread.interrupted();
        }
    }
}
