package android.device;

import android.content.ComponentName;
import android.content.p000pm.IPackageDeleteObserver;
import android.content.p000pm.IPackageInstallObserver;
import android.os.Bundle;
import java.util.List;

/* loaded from: classes.dex */
public class DeviceManager {
    private static final String TAG = "DeviceManager";

    public int deleteAPN(String str, String[] strArr) {
        return 0;
    }

    public String queryAPN(String str, String[] strArr) {
        return null;
    }

    public void wipeData(int i) {
    }

    public String getDeviceId() {
        throw new RuntimeException("stub");
    }

    public String getTIDSN() {
        throw new RuntimeException("stub");
    }

    public boolean setCurrentTime(long j) {
        throw new RuntimeException("stub");
    }

    public void enableHomeKey(boolean z) {
        throw new RuntimeException("stub");
    }

    public void enableStatusBar(boolean z) {
        throw new RuntimeException("stub");
    }

    public boolean setAPN(String str, String str2, String str3, int i, String str4, String str5, String str6, String str7, String str8, String str9, String str10, int i2, int i3, String str11, String str12, int i4, String str13, boolean z) {
        throw new RuntimeException("stub");
    }

    private String checkNotSet(String str) {
        return (str == null || str.equals("")) ? "" : str;
    }

    public void shutdown(boolean z) {
        throw new RuntimeException("stub");
    }

    public boolean getDockerState() {
        throw new RuntimeException("stub");
    }

    public void setSysProperties(String str, String str2) {
        throw new RuntimeException("stub");
    }

    public long getTrafficInfo(long j, long j2, int i) {
        throw new RuntimeException("stub");
    }

    public String getRamId() {
        throw new RuntimeException("stub");
    }

    public String getRomId() {
        throw new RuntimeException("stub");
    }

    public String getFlashId() {
        throw new RuntimeException("stub");
    }

    public void wipeData() {
        throw new RuntimeException("stub");
    }

    public void controlBT(boolean z) {
        throw new RuntimeException("stub");
    }

    public void controlWifi(boolean z) {
        throw new RuntimeException("stub");
    }

    public void controlMobileDate(boolean z) {
        throw new RuntimeException("stub");
    }

    public void controlGPS(boolean z) {
        throw new RuntimeException("stub");
    }

    public void controlAdb(boolean z) {
        throw new RuntimeException("stub");
    }

    public void controlScaner(int i) {
        throw new RuntimeException("stub");
    }

    public Bundle getAppsUseTimes() {
        throw new RuntimeException("stub");
    }

    public Bundle getSingleAppUseTimes(String str) {
        throw new RuntimeException("stub");
    }

    public void switchUSB(boolean z) {
        throw new RuntimeException("stub");
    }

    public boolean getUSBState() {
        throw new RuntimeException("stub");
    }

    public void connectVPN(String str, int i, String str2, String str3, String str4, String str5, String str6, String str7, boolean z, String str8, String str9, String str10, String str11, String str12, String str13) {
        throw new RuntimeException("stub");
    }

    public int getVpnState() {
        throw new RuntimeException("stub");
    }

    public void disconnectVpn() {
        throw new RuntimeException("stub");
    }

    public boolean uninstallApplication(String str, boolean z, IPackageDeleteObserver iPackageDeleteObserver) {
        throw new RuntimeException("stub");
    }

    public boolean installApplication(String str, boolean z, IPackageInstallObserver iPackageInstallObserver) {
        throw new RuntimeException("stub");
    }

    public void setProximityScanEnabled(boolean z) {
        throw new RuntimeException("stub");
    }

    public int whiteListsAppInsert(String str) {
        throw new RuntimeException("stub");
    }

    public int whiteListAppRemove(String str) {
        throw new RuntimeException("stub");
    }

    public String getWhiteList() {
        throw new RuntimeException("stub");
    }

    public boolean hasPackageName(String str) {
        throw new RuntimeException("stub");
    }

    public void resetPassword() {
        throw new RuntimeException("stub");
    }

    public void enableGPS(boolean z) {
        throw new RuntimeException("stub");
    }

    public void enableMobileDate(boolean z) {
        throw new RuntimeException("stub");
    }

    public long getAppMemUsage(String str) {
        throw new RuntimeException("stub");
    }

    public double getAppPowerUsage(String str) {
        throw new RuntimeException("stub");
    }

    public long getAllAppsMemUsage() {
        throw new RuntimeException("stub");
    }

    public double getAllAppsPowerUsage() {
        throw new RuntimeException("stub");
    }

    public Bundle getMemInfo() {
        throw new RuntimeException("stub");
    }

    public Bundle getBatteryInfo() {
        throw new RuntimeException("stub");
    }

    public long getAppTrafficInfo(String str) {
        throw new RuntimeException("stub");
    }

    public void setLockSreenNon() {
        throw new RuntimeException("stub");
    }

    public Bundle getPowerUsage() {
        throw new RuntimeException("stub");
    }

    public void controlWifiAP(boolean z) {
        throw new RuntimeException("stub");
    }

    public void controlUSB(boolean z) {
        throw new RuntimeException("stub");
    }

    public void controlRecoverySystem(boolean z) {
        throw new RuntimeException("stub");
    }

    public boolean getEnableAutoCallRecord() {
        throw new RuntimeException("stub");
    }

    public String getAutoCallRecordPath() {
        throw new RuntimeException("stub");
    }

    public void setEnableAutoCallRecord(boolean z) {
        throw new RuntimeException("stub");
    }

    public void setAutoCallRecordPath(String str) {
        throw new RuntimeException("stub");
    }

    public void saveLockPattern(String str) {
        throw new RuntimeException("stub");
    }

    public void saveLockPassword(String str, int i) {
        throw new RuntimeException("stub");
    }

    public void clearLock() {
        throw new RuntimeException("stub");
    }

    public void setDeviceOwner(ComponentName componentName) {
        throw new RuntimeException("stub");
    }

    public boolean isDeviceOwner(String str) {
        throw new RuntimeException("stub");
    }

    public void cleanDeviceOwner(String str) {
        throw new RuntimeException("stub");
    }

    public String getDeviceOwner() {
        throw new RuntimeException("stub");
    }

    public void setLeftKeyEnabled(boolean z) {
        throw new RuntimeException("stub");
    }

    public boolean getLeftKeyEnabled() {
        throw new RuntimeException("stub");
    }

    public void setHomeKeyEnabled(boolean z) {
        throw new RuntimeException("stub");
    }

    public boolean getHomeKeyEnabled() {
        throw new RuntimeException("stub");
    }

    public void setRightKeyEnabled(boolean z) {
        throw new RuntimeException("stub");
    }

    public boolean getRightKeyEnabled() {
        throw new RuntimeException("stub");
    }

    public void setKeyguardKeyEnabled(boolean z) {
        throw new RuntimeException("stub");
    }

    public boolean getKeyguardKeyEnabled() {
        throw new RuntimeException("stub");
    }

    public void setAutoPopInputMethod(boolean z) {
        throw new RuntimeException("stub");
    }

    public boolean getAutoPopInputMethod() {
        throw new RuntimeException("stub");
    }

    public void setScanKeyPass(boolean z) {
        throw new RuntimeException("stub");
    }

    public boolean getScanKeyPass() {
        throw new RuntimeException("stub");
    }

    public void setShowScanButton(boolean z) {
        throw new RuntimeException("stub");
    }

    public boolean getShowScanButton() {
        throw new RuntimeException("stub");
    }

    public void setLeftKeyguardEnabled(boolean z) {
        throw new RuntimeException("stub");
    }

    public boolean getLeftKeyguardEnabled() {
        throw new RuntimeException("stub");
    }

    public void setRightKeyguardEnabled(boolean z) {
        throw new RuntimeException("stub");
    }

    public boolean getRightKeyguardEnabled() {
        throw new RuntimeException("stub");
    }

    public void setPTTDownAction(String str) {
        throw new RuntimeException("stub");
    }

    public String getPTTDownAction() {
        throw new RuntimeException("stub");
    }

    public void setPTTUpAction(String str) {
        throw new RuntimeException("stub");
    }

    public String getPTTUpAction() {
        throw new RuntimeException("stub");
    }

    public List<String> getRunningAppProcesses() {
        throw new RuntimeException("stub");
    }

    public String getTopPackageName() {
        throw new RuntimeException("stub");
    }

    public String executeShellToSetIptables(String str) {
        throw new RuntimeException("stub");
    }

    public boolean setDefaultLauncher(ComponentName componentName) {
        throw new RuntimeException("stub");
    }

    public boolean removeDefaultLauncher(String str) {
        throw new RuntimeException("stub");
    }

    public boolean installApplication(String str) {
        throw new RuntimeException("stub");
    }

    public boolean uninstallApplication(String str) {
        throw new RuntimeException("stub");
    }

    public boolean setSettingProperty(String str, String str2) {
        throw new RuntimeException("stub");
    }

    public String getSettingProperty(String str) {
        throw new RuntimeException("stub");
    }

    public int getRestrictionPolicy(String str) {
        throw new RuntimeException("stub");
    }

    public int setRestrictionPolicy(String str, int i) {
        throw new RuntimeException("stub");
    }

    public boolean getHideCallNumber() {
        throw new RuntimeException("stub");
    }

    public void setHideCallNumber(boolean z) {
        throw new RuntimeException("stub");
    }

    public boolean writeCCZCPkgWhiteList(String str) {
        throw new RuntimeException("stub");
    }

    public boolean removeCCZCPkgWhiteList(String str) {
        throw new RuntimeException("stub");
    }

    public List<String> getCCZCPkgWhiteList() {
        throw new RuntimeException("stub");
    }

    public boolean writeCCZCBTWhiteList(String str) {
        throw new RuntimeException("stub");
    }

    public boolean removeCCZCBTWhiteList(String str) {
        throw new RuntimeException("stub");
    }

    public List<String> getCCZCBTWhiteList() {
        throw new RuntimeException("stub");
    }

    public void setLocationEnabled(boolean z) {
        throw new RuntimeException("stub");
    }

    public void setAirplaneMode(boolean z) {
        throw new RuntimeException("stub");
    }

    public void setLockScreenEnabled(boolean z) {
        throw new RuntimeException("stub");
    }

    public void setLockTaskMode(String str, boolean z) {
        throw new RuntimeException("stub");
    }

    public void setLockTaskModePassword(String str) {
        throw new RuntimeException("stub");
    }

    public void setPackageInstaller(String str, int i) {
        throw new RuntimeException("stub");
    }

    public List<String> getPackageInstaller() {
        throw new RuntimeException("stub");
    }

    public void setAutoRunningApp(ComponentName componentName, int i) {
        throw new RuntimeException("stub");
    }

    public List<String> getAutoRunningApp() {
        throw new RuntimeException("stub");
    }

    public void enableAdb(boolean z) {
        throw new RuntimeException("stub");
    }

    public int getAdbStatus() {
        throw new RuntimeException("stub");
    }

    public int getScannerStatus() {
        throw new RuntimeException("stub");
    }

    public String getImei(int i) {
        throw new RuntimeException("stub");
    }

    public int getGPSStatus() {
        throw new RuntimeException("stub");
    }

    public int getHotpotStatus() {
        throw new RuntimeException("stub");
    }

    public void controlHotpot(boolean z) {
        throw new RuntimeException("stub");
    }

    public int getWIFIStatus() {
        throw new RuntimeException("stub");
    }

    public int getBTStatus() {
        throw new RuntimeException("stub");
    }

    public int getMobileDataStatus() {
        throw new RuntimeException("stub");
    }

    public void enableMTP(boolean z) {
        throw new RuntimeException("stub");
    }

    public boolean whiteListReset() {
        throw new RuntimeException("stub");
    }

    public void isCCZCAllowBTOthers() {
        throw new RuntimeException("stub");
    }

    public void isCCZCNotAllowBTOthers() {
        throw new RuntimeException("stub");
    }

    public void executeShellInput(String str) {
        throw new RuntimeException("stub");
    }

    public boolean removeFromWifiWhiteList(String str) {
        throw new RuntimeException("stub");
    }

    public boolean insertToWifiWhiteList(String str) {
        throw new RuntimeException("stub");
    }

    public List<String> getWifiWhiteList() {
        throw new RuntimeException("stub");
    }

    public void setHideApplicationIcon(String str, int i) {
        throw new RuntimeException("stub");
    }

    public List<String> getHideApplicationIcon() {
        throw new RuntimeException("stub");
    }

    public boolean getApplicationEnabledSetting(String str) {
        throw new RuntimeException("stub");
    }

    public void setApplicationEnabledSetting(String str, boolean z) {
        throw new RuntimeException("stub");
    }

    public void setAllowInstallApps(String str, int i, int i2) {
        throw new RuntimeException("stub");
    }

    public List<String> getAllowInstallApps(int i) {
        throw new RuntimeException("stub");
    }

    public boolean isFeatureSupport(String str) {
        throw new RuntimeException("stub");
    }

    public int getVersionCode() {
        throw new RuntimeException("stub");
    }
}
