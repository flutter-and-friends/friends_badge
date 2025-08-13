package com.yanzhenjie.permission.checker;

import android.content.Context;
import android.media.AudioRecord;

/* loaded from: classes.dex */
class RecordAudioTest implements PermissionTest {
    private static final int[] RATES = {8000, 11025, 22050, 44100};
    private Context mContext;

    RecordAudioTest(Context context) {
        this.mContext = context;
    }

    @Override // com.yanzhenjie.permission.checker.PermissionTest
    public boolean test() throws Throwable {
        AudioRecord audioRecordFindAudioRecord = findAudioRecord();
        try {
            try {
                if (audioRecordFindAudioRecord != null) {
                    audioRecordFindAudioRecord.startRecording();
                    return true;
                }
                boolean zExistMicrophone = true ^ existMicrophone(this.mContext);
                if (audioRecordFindAudioRecord != null) {
                    audioRecordFindAudioRecord.stop();
                    audioRecordFindAudioRecord.release();
                }
                return zExistMicrophone;
            } catch (Throwable unused) {
                boolean zExistMicrophone2 = true ^ existMicrophone(this.mContext);
                if (audioRecordFindAudioRecord != null) {
                    audioRecordFindAudioRecord.stop();
                    audioRecordFindAudioRecord.release();
                }
                return zExistMicrophone2;
            }
        } finally {
            if (audioRecordFindAudioRecord != null) {
                audioRecordFindAudioRecord.stop();
                audioRecordFindAudioRecord.release();
            }
        }
    }

    private static boolean existMicrophone(Context context) {
        return context.getPackageManager().hasSystemFeature("android.hardware.microphone");
    }

    private static AudioRecord findAudioRecord() {
        int i;
        int i2;
        short[] sArr;
        for (int i3 : RATES) {
            for (short s : new short[]{3, 2}) {
                short[] sArr2 = {16, 12};
                int length = sArr2.length;
                int i4 = 0;
                while (i4 < length) {
                    short s2 = sArr2[i4];
                    int minBufferSize = AudioRecord.getMinBufferSize(i3, s2, s);
                    if (minBufferSize != -2) {
                        i = i4;
                        i2 = length;
                        sArr = sArr2;
                        AudioRecord audioRecord = new AudioRecord(1, i3, s2, s, minBufferSize);
                        if (audioRecord.getState() == 1) {
                            return audioRecord;
                        }
                    } else {
                        i = i4;
                        i2 = length;
                        sArr = sArr2;
                    }
                    i4 = i + 1;
                    length = i2;
                    sArr2 = sArr;
                }
            }
        }
        return null;
    }
}
