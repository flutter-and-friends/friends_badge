package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.util.Log;
import android.util.Xml;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class KeyFrames {
    private static final String TAG = "KeyFrames";
    public static final int UNSET = -1;
    static HashMap<String, Constructor<? extends Key>> sKeyMakers = new HashMap<>();
    private HashMap<Integer, ArrayList<Key>> mFramesMap = new HashMap<>();

    static {
        try {
            sKeyMakers.put("KeyAttribute", KeyAttributes.class.getConstructor(new Class[0]));
            sKeyMakers.put("KeyPosition", KeyPosition.class.getConstructor(new Class[0]));
            sKeyMakers.put("KeyCycle", KeyCycle.class.getConstructor(new Class[0]));
            sKeyMakers.put("KeyTimeCycle", KeyTimeCycle.class.getConstructor(new Class[0]));
            sKeyMakers.put("KeyTrigger", KeyTrigger.class.getConstructor(new Class[0]));
        } catch (NoSuchMethodException e) {
            Log.e(TAG, "unable to load", e);
        }
    }

    private void addKey(Key key) {
        if (!this.mFramesMap.containsKey(Integer.valueOf(key.mTargetId))) {
            this.mFramesMap.put(Integer.valueOf(key.mTargetId), new ArrayList<>());
        }
        this.mFramesMap.get(Integer.valueOf(key.mTargetId)).add(key);
    }

    public KeyFrames(Context context, XmlPullParser xmlPullParser) throws XmlPullParserException, IllegalAccessException, InstantiationException, IOException, IllegalArgumentException, InvocationTargetException {
        Key key = null;
        try {
            int eventType = xmlPullParser.getEventType();
            while (eventType != 1) {
                if (eventType != 0) {
                    if (eventType == 2) {
                        String name = xmlPullParser.getName();
                        if (sKeyMakers.containsKey(name)) {
                            try {
                                Key keyNewInstance = sKeyMakers.get(name).newInstance(new Object[0]);
                                try {
                                    keyNewInstance.load(context, Xml.asAttributeSet(xmlPullParser));
                                    addKey(keyNewInstance);
                                    key = keyNewInstance;
                                } catch (Exception e) {
                                    e = e;
                                    key = keyNewInstance;
                                    Log.e(TAG, "unable to create ", e);
                                    eventType = xmlPullParser.next();
                                }
                            } catch (Exception e2) {
                                e = e2;
                            }
                        } else if (name.equalsIgnoreCase("CustomAttribute") && key != null && key.mCustomConstraints != null) {
                            ConstraintAttribute.parse(context, xmlPullParser, key.mCustomConstraints);
                        }
                    } else if (eventType == 3) {
                        if ("KeyFrameSet".equals(xmlPullParser.getName())) {
                            return;
                        }
                    }
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException e3) {
            e3.printStackTrace();
        } catch (XmlPullParserException e4) {
            e4.printStackTrace();
        }
    }

    public void addFrames(MotionController motionController) {
        ArrayList<Key> arrayList = this.mFramesMap.get(Integer.valueOf(motionController.mId));
        if (arrayList != null) {
            motionController.addKeys(arrayList);
        }
        ArrayList<Key> arrayList2 = this.mFramesMap.get(-1);
        if (arrayList2 != null) {
            Iterator<Key> it = arrayList2.iterator();
            while (it.hasNext()) {
                Key next = it.next();
                if (next.matches(((ConstraintLayout.LayoutParams) motionController.mView.getLayoutParams()).constraintTag)) {
                    motionController.addKey(next);
                }
            }
        }
    }

    static String name(int i, Context context) {
        return context.getResources().getResourceEntryName(i);
    }

    public Set<Integer> getKeys() {
        return this.mFramesMap.keySet();
    }

    public ArrayList<Key> getKeyFramesForView(int i) {
        return this.mFramesMap.get(Integer.valueOf(i));
    }
}
