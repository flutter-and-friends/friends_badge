package com.darsh.multipleimageselect.activities;

import android.content.Intent;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.provider.MediaStore;
import android.util.DisplayMetrics;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.darsh.multipleimageselect.C0915R;
import com.darsh.multipleimageselect.adapters.CustomImageSelectAdapter;
import com.darsh.multipleimageselect.helpers.Constants;
import com.darsh.multipleimageselect.models.Image;
import com.yanzhenjie.permission.runtime.Permission;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;

/* loaded from: classes.dex */
public class ImageSelectActivity extends AppCompatActivity {
    private ActionBar actionBar;
    private ActionMode actionMode;
    private CustomImageSelectAdapter adapter;
    private String album;
    private int countSelected;
    private TextView errorDisplay;
    private Button grantPermission;
    private GridView gridView;
    private Handler handler;
    private ArrayList<Image> images;
    private ContentObserver observer;
    private ProgressBar progressBar;
    private TextView requestPermission;
    private Thread thread;
    private final String[] requiredPermissions = {Permission.READ_EXTERNAL_STORAGE};
    private final String[] projection = {"_id", "_display_name", "_data"};
    private ActionMode.Callback callback = new ActionMode.Callback() { // from class: com.darsh.multipleimageselect.activities.ImageSelectActivity.5
        @Override // android.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            return false;
        }

        @Override // android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            actionMode.getMenuInflater().inflate(C0915R.menu.menu_contextual_action_bar, menu);
            ImageSelectActivity.this.actionMode = actionMode;
            ImageSelectActivity.this.countSelected = 0;
            return true;
        }

        @Override // android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            if (menuItem.getItemId() != C0915R.id.menu_item_add_image) {
                return false;
            }
            ImageSelectActivity.this.sendIntent();
            return true;
        }

        @Override // android.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
            if (ImageSelectActivity.this.countSelected > 0) {
                ImageSelectActivity.this.deselectAll();
            }
            ImageSelectActivity.this.actionMode = null;
        }
    };

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C0915R.layout.activity_image_select);
        setSupportActionBar((Toolbar) findViewById(C0915R.id.toolbar));
        this.actionBar = getSupportActionBar();
        ActionBar actionBar = this.actionBar;
        if (actionBar != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
            this.actionBar.setHomeAsUpIndicator(C0915R.drawable.ic_arrow_back);
            this.actionBar.setDisplayShowTitleEnabled(true);
            this.actionBar.setTitle(C0915R.string.image_view);
        }
        Intent intent = getIntent();
        if (intent == null) {
            finish();
        }
        this.album = intent.getStringExtra(Constants.INTENT_EXTRA_ALBUM);
        this.errorDisplay = (TextView) findViewById(C0915R.id.text_view_error);
        this.errorDisplay.setVisibility(4);
        this.requestPermission = (TextView) findViewById(C0915R.id.text_view_request_permission);
        this.grantPermission = (Button) findViewById(C0915R.id.button_grant_permission);
        this.grantPermission.setOnClickListener(new View.OnClickListener() { // from class: com.darsh.multipleimageselect.activities.ImageSelectActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ImageSelectActivity.this.requestPermission();
            }
        });
        hidePermissionHelperUI();
        this.progressBar = (ProgressBar) findViewById(C0915R.id.progress_bar_image_select);
        this.gridView = (GridView) findViewById(C0915R.id.grid_view_image_select);
        this.gridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.darsh.multipleimageselect.activities.ImageSelectActivity.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (ImageSelectActivity.this.actionMode == null) {
                    ImageSelectActivity imageSelectActivity = ImageSelectActivity.this;
                    imageSelectActivity.actionMode = imageSelectActivity.startActionMode(imageSelectActivity.callback);
                }
                ImageSelectActivity.this.toggleSelection(i);
                ImageSelectActivity.this.actionMode.setTitle(ImageSelectActivity.this.countSelected + " " + ImageSelectActivity.this.getString(C0915R.string.selected));
                if (ImageSelectActivity.this.countSelected == 0) {
                    ImageSelectActivity.this.actionMode.finish();
                }
            }
        });
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        this.handler = new Handler() { // from class: com.darsh.multipleimageselect.activities.ImageSelectActivity.3
            @Override // android.os.Handler
            public void handleMessage(Message message) throws InterruptedException {
                switch (message.what) {
                    case Constants.FETCH_STARTED /* 2001 */:
                        ImageSelectActivity.this.progressBar.setVisibility(0);
                        ImageSelectActivity.this.gridView.setVisibility(4);
                        return;
                    case Constants.FETCH_COMPLETED /* 2002 */:
                        if (ImageSelectActivity.this.adapter != null) {
                            ImageSelectActivity.this.adapter.notifyDataSetChanged();
                            if (ImageSelectActivity.this.actionMode != null) {
                                ImageSelectActivity.this.countSelected = message.arg1;
                                ImageSelectActivity.this.actionMode.setTitle(ImageSelectActivity.this.countSelected + " " + ImageSelectActivity.this.getString(C0915R.string.selected));
                                return;
                            }
                            return;
                        }
                        ImageSelectActivity imageSelectActivity = ImageSelectActivity.this;
                        imageSelectActivity.adapter = new CustomImageSelectAdapter(imageSelectActivity.getApplicationContext(), ImageSelectActivity.this.images);
                        ImageSelectActivity.this.gridView.setAdapter((ListAdapter) ImageSelectActivity.this.adapter);
                        ImageSelectActivity.this.progressBar.setVisibility(4);
                        ImageSelectActivity.this.gridView.setVisibility(0);
                        ImageSelectActivity imageSelectActivity2 = ImageSelectActivity.this;
                        imageSelectActivity2.orientationBasedUI(imageSelectActivity2.getResources().getConfiguration().orientation);
                        return;
                    case Constants.PERMISSION_GRANTED /* 2003 */:
                        ImageSelectActivity.this.hidePermissionHelperUI();
                        ImageSelectActivity.this.loadImages();
                        return;
                    case Constants.PERMISSION_DENIED /* 2004 */:
                        ImageSelectActivity.this.showPermissionHelperUI();
                        ImageSelectActivity.this.progressBar.setVisibility(4);
                        ImageSelectActivity.this.gridView.setVisibility(4);
                        return;
                    case Constants.ERROR /* 2005 */:
                        ImageSelectActivity.this.progressBar.setVisibility(4);
                        ImageSelectActivity.this.errorDisplay.setVisibility(0);
                        break;
                }
                super.handleMessage(message);
            }
        };
        this.observer = new ContentObserver(this.handler) { // from class: com.darsh.multipleimageselect.activities.ImageSelectActivity.4
            @Override // android.database.ContentObserver
            public void onChange(boolean z) throws InterruptedException {
                ImageSelectActivity.this.loadImages();
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
        this.images = null;
        CustomImageSelectAdapter customImageSelectAdapter = this.adapter;
        if (customImageSelectAdapter != null) {
            customImageSelectAdapter.releaseResources();
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
            this.adapter.setLayoutParams(i == 1 ? i2 / 3 : i2 / 5);
        }
        this.gridView.setNumColumns(i != 1 ? 5 : 3);
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
    public void toggleSelection(int i) {
        if (!this.images.get(i).isSelected && this.countSelected >= Constants.limit) {
            Toast.makeText(getApplicationContext(), String.format(getString(C0915R.string.limit_exceeded), Integer.valueOf(Constants.limit)), 0).show();
            return;
        }
        this.images.get(i).isSelected = !this.images.get(i).isSelected;
        if (this.images.get(i).isSelected) {
            this.countSelected++;
        } else {
            this.countSelected--;
        }
        this.adapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deselectAll() {
        int size = this.images.size();
        for (int i = 0; i < size; i++) {
            this.images.get(i).isSelected = false;
        }
        this.countSelected = 0;
        this.adapter.notifyDataSetChanged();
    }

    private ArrayList<Image> getSelected() {
        ArrayList<Image> arrayList = new ArrayList<>();
        int size = this.images.size();
        for (int i = 0; i < size; i++) {
            if (this.images.get(i).isSelected) {
                arrayList.add(this.images.get(i));
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendIntent() {
        Intent intent = new Intent();
        intent.putParcelableArrayListExtra(Constants.INTENT_EXTRA_IMAGES, getSelected());
        setResult(-1, intent);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadImages() throws InterruptedException {
        abortLoading();
        this.thread = new Thread(new ImageLoaderRunnable());
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

    private class ImageLoaderRunnable implements Runnable {
        private ImageLoaderRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() throws SecurityException, IllegalArgumentException {
            Process.setThreadPriority(10);
            if (ImageSelectActivity.this.adapter == null) {
                Message messageObtainMessage = ImageSelectActivity.this.handler.obtainMessage();
                messageObtainMessage.what = Constants.FETCH_STARTED;
                messageObtainMessage.sendToTarget();
            }
            if (Thread.interrupted()) {
                return;
            }
            HashSet hashSet = new HashSet();
            int i = 0;
            if (ImageSelectActivity.this.images != null) {
                int size = ImageSelectActivity.this.images.size();
                for (int i2 = 0; i2 < size; i2++) {
                    Image image = (Image) ImageSelectActivity.this.images.get(i2);
                    if (new File(image.path).exists() && image.isSelected) {
                        hashSet.add(Long.valueOf(image.f346id));
                    }
                }
            }
            Cursor cursorQuery = ImageSelectActivity.this.getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, ImageSelectActivity.this.projection, "bucket_display_name =?", new String[]{ImageSelectActivity.this.album}, "date_added");
            if (cursorQuery == null) {
                Message messageObtainMessage2 = ImageSelectActivity.this.handler.obtainMessage();
                messageObtainMessage2.what = Constants.ERROR;
                messageObtainMessage2.sendToTarget();
                return;
            }
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            if (cursorQuery.moveToLast()) {
                int i3 = 0;
                while (!Thread.interrupted()) {
                    long j = cursorQuery.getLong(cursorQuery.getColumnIndex(ImageSelectActivity.this.projection[0]));
                    String string = cursorQuery.getString(cursorQuery.getColumnIndex(ImageSelectActivity.this.projection[1]));
                    String string2 = cursorQuery.getString(cursorQuery.getColumnIndex(ImageSelectActivity.this.projection[2]));
                    boolean zContains = hashSet.contains(Long.valueOf(j));
                    if (zContains) {
                        i3++;
                    }
                    if (new File(string2).exists()) {
                        arrayList.add(new Image(j, string, string2, zContains));
                    }
                    if (!cursorQuery.moveToPrevious()) {
                        i = i3;
                    }
                }
                return;
            }
            cursorQuery.close();
            if (ImageSelectActivity.this.images == null) {
                ImageSelectActivity.this.images = new ArrayList();
            }
            ImageSelectActivity.this.images.clear();
            ImageSelectActivity.this.images.addAll(arrayList);
            Message messageObtainMessage3 = ImageSelectActivity.this.handler.obtainMessage();
            messageObtainMessage3.what = Constants.FETCH_COMPLETED;
            messageObtainMessage3.arg1 = i;
            messageObtainMessage3.sendToTarget();
            Thread.interrupted();
        }
    }
}
