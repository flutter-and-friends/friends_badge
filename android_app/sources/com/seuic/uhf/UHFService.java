package com.seuic.uhf;

import android.content.Context;
import java.util.List;

/* loaded from: classes.dex */
public class UHFService implements IUHFDevice {
    private static final String ACTION_UHF_SERVICE_TERMINATE = "com.android.uhf.TERMINATE";
    public static final int PARAMETER_ALGORITHM_MAXQVALUE = 11;
    public static final int PARAMETER_ALGORITHM_MINQVALUE = 10;
    public static final int PARAMETER_ALGORITHM_RETRYCOUNT = 12;
    public static final int PARAMETER_ALGORITHM_STARTQVALUE = 9;
    public static final int PARAMETER_ALGORITHM_THRESHOLDMULTIPLIER = 14;
    public static final int PARAMETER_ALGORITHM_TOGGLETARGET = 13;
    public static final int PARAMETER_ANTENNAMODE = 4;
    public static final int PARAMETER_CLEAR_EPCLIST = 8;
    public static final int PARAMETER_CLEAR_EPCLIST_WHEN_START_INVENTORY = 6;
    public static final int PARAMETER_CW = 18;
    public static final int PARAMETER_EXTENSIONS_FASTID = 5;
    public static final int PARAMETER_EXTENSIONS_TAGFOCUS = 15;
    public static final int PARAMETER_FREQUENCY = 19;
    public static final int PARAMETER_HIDE_PC = 7;
    public static final int PARAMETER_INVENTORY_SESSION = 1;
    public static final int PARAMETER_INVENTORY_SESSION_TARGET = 2;
    public static final int PARAMETER_INVENTORY_SPEED = 3;
    public static final int PARAMETER_LINK_PROFILE = 0;
    public static final int PARAMETER_PROTOCOL = 21;
    public static final int PARAMETER_RANDOM = 20;
    public static final int PARAMETER_SOUND = 16;
    public static final int PARAMETER_TAG_EMBEDEDDATA = 30;
    public static final int PARAMETER_TAG_FILTER = 31;
    private static final String TAG = "UHFService";
    private static UHFService uhfService;

    public enum Profile {
        P0,
        P1,
        P2,
        P3
    }

    public enum Session {
        S0,
        S1,
        S2,
        S3
    }

    public enum Speed {
        FAST,
        SLOW
    }

    public enum Switch {
        DISABLE,
        ENABLE
    }

    public enum Target {
        A,
        B
    }

    public static UHFService getInstance() {
        throw new RuntimeException("Stub!");
    }

    public static UHFService getInstance(Context context) {
        throw new RuntimeException("Stub!");
    }

    private UHFService() {
        throw new RuntimeException("Stub!");
    }

    private boolean init() {
        throw new RuntimeException("Stub!");
    }

    @Override // com.seuic.uhf.IUHFDevice
    public boolean open() {
        throw new RuntimeException("Stub!");
    }

    @Override // com.seuic.uhf.IUHFDevice
    public void close() {
        throw new RuntimeException("Stub!");
    }

    @Override // com.seuic.uhf.IUHFDevice
    public boolean isOpen() {
        throw new RuntimeException("Stub!");
    }

    @Override // com.seuic.uhf.IUHFDevice
    public boolean isopen() {
        throw new RuntimeException("Stub!");
    }

    @Override // com.seuic.uhf.IUHFDevice
    public boolean inventoryOnce(EPC epc, int i) {
        throw new RuntimeException("Stub!");
    }

    @Override // com.seuic.uhf.IUHFDevice
    public boolean inventoryStart() {
        throw new RuntimeException("Stub!");
    }

    @Override // com.seuic.uhf.IUHFDevice
    public boolean inventoryStop() {
        throw new RuntimeException("Stub!");
    }

    @Override // com.seuic.uhf.IUHFDevice
    public int getTagIDCount() {
        throw new RuntimeException("Stub!");
    }

    @Override // com.seuic.uhf.IUHFDevice
    public List<EPC> getTagIDs() {
        throw new RuntimeException("Stub!");
    }

    @Override // com.seuic.uhf.IUHFDevice
    public String getFirmwareVersion() {
        throw new RuntimeException("Stub!");
    }

    @Override // com.seuic.uhf.IUHFDevice
    public String getTemperature() {
        throw new RuntimeException("Stub!");
    }

    @Override // com.seuic.uhf.IUHFDevice
    public int getPower() {
        throw new RuntimeException("Stub!");
    }

    @Override // com.seuic.uhf.IUHFDevice
    public boolean setPower(int i) {
        throw new RuntimeException("Stub!");
    }

    @Override // com.seuic.uhf.IUHFDevice
    public String getRegion() {
        throw new RuntimeException("Stub!");
    }

    @Override // com.seuic.uhf.IUHFDevice
    public boolean setRegion(String str) {
        throw new RuntimeException("Stub!");
    }

    @Override // com.seuic.uhf.IUHFDevice
    public boolean readTagData(byte[] bArr, byte[] bArr2, int i, int i2, int i3, byte[] bArr3) {
        throw new RuntimeException("Stub!");
    }

    @Override // com.seuic.uhf.IUHFDevice
    public boolean writeTagData(byte[] bArr, byte[] bArr2, int i, int i2, int i3, byte[] bArr3) {
        throw new RuntimeException("Stub!");
    }

    @Override // com.seuic.uhf.IUHFDevice
    public boolean lockTag(byte[] bArr, byte[] bArr2, int i) {
        throw new RuntimeException("Stub!");
    }

    @Override // com.seuic.uhf.IUHFDevice
    public boolean inventorySelectStart(byte[] bArr, int i, int i2) {
        throw new RuntimeException("Stub!");
    }

    @Override // com.seuic.uhf.IUHFDevice
    public boolean setParameters(int i, int i2) {
        throw new RuntimeException("Stub!");
    }

    @Override // com.seuic.uhf.IUHFDevice
    public boolean IOControl(int i, byte[] bArr, int i2, byte[] bArr2, int i3, int i4) {
        throw new RuntimeException("Stub!");
    }

    @Override // com.seuic.uhf.IUHFDevice
    public boolean blockWriteTagData(byte[] bArr, byte[] bArr2, int i, int i2, int i3, byte[] bArr3) {
        throw new RuntimeException("Stub!");
    }

    @Override // com.seuic.uhf.IUHFDevice
    public boolean blockEraseTagData(byte[] bArr, byte[] bArr2, int i, int i2, int i3) {
        throw new RuntimeException("Stub!");
    }

    @Override // com.seuic.uhf.IUHFDevice
    public boolean killTag(byte[] bArr, byte[] bArr2) {
        throw new RuntimeException("Stub!");
    }

    @Override // com.seuic.uhf.IUHFDevice
    public boolean setParamBytes(int i, byte[] bArr) {
        throw new RuntimeException("Stub!");
    }

    @Override // com.seuic.uhf.IUHFDevice
    public boolean readTagLED(byte[] bArr, byte[] bArr2, int i) {
        throw new RuntimeException("Stub!");
    }

    @Override // com.seuic.uhf.IUHFDevice
    public double readTagTemperature(byte[] bArr, byte[] bArr2, int i) {
        throw new RuntimeException("Stub!");
    }

    @Override // com.seuic.uhf.IUHFDevice
    public void registerReadTags(IReadTagsListener iReadTagsListener) {
        throw new RuntimeException("Stub!");
    }

    @Override // com.seuic.uhf.IUHFDevice
    public void unregisterReadTags(IReadTagsListener iReadTagsListener) {
        throw new RuntimeException("Stub!");
    }
}
