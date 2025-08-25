package cn.highlight.core.zxing.utils;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Vibrator;
import android.preference.PreferenceManager;
import android.util.Log;
import cn.highlight.core.R;
import java.io.Closeable;
import java.io.IOException;

/* loaded from: classes.dex */
public class BeepManager implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, Closeable {
    static final float BEEP_VOLUME = 0.1f;
    static final String TAG = BeepManager.class.getSimpleName();
    static final long VIBRATE_DURATION = 200;
    final Activity activity;
    MediaPlayer mediaPlayer = null;
    boolean playBeep;
    boolean vibrate;

    public BeepManager(Activity activity) {
        this.activity = activity;
        updatePrefs();
    }

    synchronized void updatePrefs() {
        this.playBeep = shouldBeep(PreferenceManager.getDefaultSharedPreferences(this.activity), this.activity);
        this.vibrate = true;
        if (this.playBeep && this.mediaPlayer == null) {
            this.activity.setVolumeControlStream(3);
            this.mediaPlayer = buildMediaPlayer(this.activity);
        }
    }

    public synchronized void playBeepSoundAndVibrate() {
        if (this.playBeep && this.mediaPlayer != null) {
            this.mediaPlayer.start();
        }
        if (this.vibrate) {
            ((Vibrator) this.activity.getSystemService("vibrator")).vibrate(VIBRATE_DURATION);
        }
    }

    static boolean shouldBeep(SharedPreferences sharedPreferences, Context context) {
        return ((AudioManager) context.getSystemService("audio")).getRingerMode() == 2;
    }

    MediaPlayer buildMediaPlayer(Context context) throws IllegalStateException, Resources.NotFoundException, IOException {
        MediaPlayer mediaPlayer = new MediaPlayer();
        mediaPlayer.setAudioStreamType(3);
        mediaPlayer.setOnCompletionListener(this);
        mediaPlayer.setOnErrorListener(this);
        try {
            AssetFileDescriptor assetFileDescriptorOpenRawResourceFd = context.getResources().openRawResourceFd(R.raw.beep);
            try {
                mediaPlayer.setDataSource(assetFileDescriptorOpenRawResourceFd.getFileDescriptor(), assetFileDescriptorOpenRawResourceFd.getStartOffset(), assetFileDescriptorOpenRawResourceFd.getLength());
                assetFileDescriptorOpenRawResourceFd.close();
                mediaPlayer.setVolume(BEEP_VOLUME, BEEP_VOLUME);
                mediaPlayer.prepare();
                return mediaPlayer;
            } catch (Throwable th) {
                assetFileDescriptorOpenRawResourceFd.close();
                throw th;
            }
        } catch (IOException e) {
            Log.w(TAG, e);
            mediaPlayer.release();
            return null;
        }
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) throws IllegalStateException {
        mediaPlayer.seekTo(0);
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public synchronized boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        if (i == 100) {
            this.activity.finish();
        } else {
            mediaPlayer.release();
            this.mediaPlayer = null;
            updatePrefs();
        }
        return true;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        if (this.mediaPlayer != null) {
            this.mediaPlayer.release();
            this.mediaPlayer = null;
        }
    }
}
