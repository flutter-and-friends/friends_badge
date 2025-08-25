package cn.highlight.tx.ble.scan;

import com.zhy.http.okhttp.OkHttpUtils;
import java.util.UUID;

/* loaded from: classes.dex */
public class BleScanRuleConfig {
    private UUID[] mServiceUuids = null;
    private String[] mDeviceNames = null;
    private String mDeviceMac = null;
    private boolean mAutoConnect = false;
    private boolean mFuzzy = false;
    private long mScanTimeOut = OkHttpUtils.DEFAULT_MILLISECONDS;

    public UUID[] getServiceUuids() {
        return this.mServiceUuids;
    }

    public String[] getDeviceNames() {
        return this.mDeviceNames;
    }

    public String getDeviceMac() {
        return this.mDeviceMac;
    }

    public boolean isAutoConnect() {
        return this.mAutoConnect;
    }

    public boolean isFuzzy() {
        return this.mFuzzy;
    }

    public long getScanTimeOut() {
        return this.mScanTimeOut;
    }

    public static class Builder {
        private UUID[] mServiceUuids = null;
        private String[] mDeviceNames = null;
        private String mDeviceMac = null;
        private boolean mAutoConnect = false;
        private boolean mFuzzy = false;
        private long mTimeOut = OkHttpUtils.DEFAULT_MILLISECONDS;

        public Builder setServiceUuids(UUID[] uuidArr) {
            this.mServiceUuids = uuidArr;
            return this;
        }

        public Builder setDeviceName(boolean z, String... strArr) {
            this.mFuzzy = z;
            this.mDeviceNames = strArr;
            return this;
        }

        public Builder setDeviceMac(String str) {
            this.mDeviceMac = str;
            return this;
        }

        public Builder setAutoConnect(boolean z) {
            this.mAutoConnect = z;
            return this;
        }

        public Builder setScanTimeOut(long j) {
            this.mTimeOut = j;
            return this;
        }

        void applyConfig(BleScanRuleConfig bleScanRuleConfig) {
            bleScanRuleConfig.mServiceUuids = this.mServiceUuids;
            bleScanRuleConfig.mDeviceNames = this.mDeviceNames;
            bleScanRuleConfig.mDeviceMac = this.mDeviceMac;
            bleScanRuleConfig.mAutoConnect = this.mAutoConnect;
            bleScanRuleConfig.mFuzzy = this.mFuzzy;
            bleScanRuleConfig.mScanTimeOut = this.mTimeOut;
        }

        public BleScanRuleConfig build() {
            BleScanRuleConfig bleScanRuleConfig = new BleScanRuleConfig();
            applyConfig(bleScanRuleConfig);
            return bleScanRuleConfig;
        }
    }
}
