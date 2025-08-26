package android.device;

import android.content.Context;
import android.view.KeyEvent;
import java.util.List;

/* loaded from: classes.dex */
public class KeyMapManager {
    public static final int KEY_TYPE_KEYCODE = 1;
    public static final int KEY_TYPE_STARTAC = 3;

    public KeyMapManager(Context context) {
    }

    public boolean hasKeyEntry(int i) {
        throw new RuntimeException("stub");
    }

    public void delKeyEntry(int i) {
        throw new RuntimeException("stub");
    }

    public void mapKeyEntry(KeyEvent keyEvent, int i, String str) {
        throw new RuntimeException("stub");
    }

    public boolean isInterception() {
        throw new RuntimeException("stub");
    }

    public void disableInterception(boolean z) {
        throw new RuntimeException("stub");
    }

    public int getKeyCode(int i) {
        throw new RuntimeException("stub");
    }

    public int getKeyMeta(int i) {
        throw new RuntimeException("stub");
    }

    public String getKeyAction(int i) {
        throw new RuntimeException("stub");
    }

    public int getKeytype(int i) {
        throw new RuntimeException("stub");
    }

    public List<KeyEntry> getKeyList() {
        throw new RuntimeException("stub");
    }

    public class KeyEntry {
        public int scancode = 0;
        public int keycode = 0;
        public int keycode_meta = 0;
        public String action = "";
        public int type = 0;

        public KeyEntry() {
        }
    }
}
