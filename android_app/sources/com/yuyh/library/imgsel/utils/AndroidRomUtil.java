package com.yuyh.library.imgsel.utils;

import android.os.Build;
import android.os.Environment;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

/* loaded from: classes2.dex */
public class AndroidRomUtil {
    private static final String KEY_EMUI_VERSION_CODE = "ro.build.version.emui";
    private static final String KEY_MIUI_INTERNAL_STORAGE = "ro.miui.internal.storage";
    private static final String KEY_MIUI_VERSION_CODE = "ro.miui.ui.version.code";
    private static final String KEY_MIUI_VERSION_NAME = "ro.miui.ui.version.name";

    public static boolean isEMUI() {
        try {
            return BuildProperties.newInstance().getProperty(KEY_EMUI_VERSION_CODE, null) != null;
        } catch (IOException unused) {
            return false;
        }
    }

    public static boolean isMIUI() {
        try {
            BuildProperties buildPropertiesNewInstance = BuildProperties.newInstance();
            if (buildPropertiesNewInstance.getProperty(KEY_MIUI_VERSION_CODE, null) == null && buildPropertiesNewInstance.getProperty(KEY_MIUI_VERSION_NAME, null) == null) {
                if (buildPropertiesNewInstance.getProperty(KEY_MIUI_INTERNAL_STORAGE, null) == null) {
                    return false;
                }
            }
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public static boolean isFlyme() {
        try {
            return Build.class.getMethod("hasSmartBar", new Class[0]) != null;
        } catch (Exception unused) {
            return false;
        }
    }

    public static class BuildProperties {
        private final Properties properties = new Properties();

        private BuildProperties() throws IOException {
            this.properties.load(new FileInputStream(new File(Environment.getRootDirectory(), "build.prop")));
        }

        public boolean containsKey(Object obj) {
            return this.properties.containsKey(obj);
        }

        public boolean containsValue(Object obj) {
            return this.properties.containsValue(obj);
        }

        public Set<Map.Entry<Object, Object>> entrySet() {
            return this.properties.entrySet();
        }

        public String getProperty(String str) {
            return this.properties.getProperty(str);
        }

        public String getProperty(String str, String str2) {
            return this.properties.getProperty(str, str2);
        }

        public boolean isEmpty() {
            return this.properties.isEmpty();
        }

        public Enumeration<Object> keys() {
            return this.properties.keys();
        }

        public Set<Object> keySet() {
            return this.properties.keySet();
        }

        public int size() {
            return this.properties.size();
        }

        public Collection<Object> values() {
            return this.properties.values();
        }

        public static BuildProperties newInstance() throws IOException {
            return new BuildProperties();
        }
    }
}
