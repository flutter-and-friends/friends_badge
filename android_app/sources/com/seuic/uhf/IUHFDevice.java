package com.seuic.uhf;

import java.util.List;

/* loaded from: classes.dex */
public interface IUHFDevice {
    boolean IOControl(int i, byte[] bArr, int i2, byte[] bArr2, int i3, int i4);

    boolean blockEraseTagData(byte[] bArr, byte[] bArr2, int i, int i2, int i3);

    boolean blockWriteTagData(byte[] bArr, byte[] bArr2, int i, int i2, int i3, byte[] bArr3);

    void close();

    String getFirmwareVersion();

    int getPower();

    String getRegion();

    int getTagIDCount();

    List<EPC> getTagIDs();

    String getTemperature();

    boolean inventoryOnce(EPC epc, int i);

    boolean inventorySelectStart(byte[] bArr, int i, int i2);

    boolean inventoryStart();

    boolean inventoryStop();

    boolean isOpen();

    boolean isopen();

    boolean killTag(byte[] bArr, byte[] bArr2);

    boolean lockTag(byte[] bArr, byte[] bArr2, int i);

    boolean open();

    boolean readTagData(byte[] bArr, byte[] bArr2, int i, int i2, int i3, byte[] bArr3);

    boolean readTagLED(byte[] bArr, byte[] bArr2, int i);

    double readTagTemperature(byte[] bArr, byte[] bArr2, int i);

    void registerReadTags(IReadTagsListener iReadTagsListener);

    boolean setParamBytes(int i, byte[] bArr);

    boolean setParameters(int i, int i2);

    boolean setPower(int i);

    boolean setRegion(String str);

    void unregisterReadTags(IReadTagsListener iReadTagsListener);

    boolean writeTagData(byte[] bArr, byte[] bArr2, int i, int i2, int i3, byte[] bArr3);
}
