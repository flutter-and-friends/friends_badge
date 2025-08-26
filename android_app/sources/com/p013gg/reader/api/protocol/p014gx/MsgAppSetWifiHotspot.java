package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import com.p013gg.reader.api.utils.StringUtils;
import java.util.Hashtable;

/* loaded from: classes.dex */
public class MsgAppSetWifiHotspot extends Message {
    private int certificationType;
    private String connectPassword;
    private int encryptionAlgorithm;
    private String hotspotName;

    public MsgAppSetWifiHotspot() {
        this.certificationType = Integer.MAX_VALUE;
        this.encryptionAlgorithm = Integer.MAX_VALUE;
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_APP;
            this.msgType.msgId = (byte) 51;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgAppSetWifiHotspot(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                int intUnsigned = bitBufferWrap.getIntUnsigned(16);
                if (intUnsigned > 0) {
                    this.hotspotName = new String(bitBufferWrap.get(new byte[intUnsigned]), "UTF-8");
                }
                while (bitBufferWrap.position() / 8 < bArr.length) {
                    byte b = bitBufferWrap.getByte();
                    if (b == 1) {
                        int intUnsigned2 = bitBufferWrap.getIntUnsigned(16);
                        if (intUnsigned2 > 0) {
                            this.connectPassword = new String(bitBufferWrap.get(new byte[intUnsigned2]), "ASCII");
                        }
                    } else if (b == 2) {
                        this.certificationType = bitBufferWrap.getIntUnsigned(8);
                    } else if (b == 3) {
                        this.encryptionAlgorithm = bitBufferWrap.getIntUnsigned(8);
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public String getHotspotName() {
        return this.hotspotName;
    }

    public void setHotspotName(String str) {
        this.hotspotName = str;
    }

    public String getConnectPassword() {
        return this.connectPassword;
    }

    public void setConnectPassword(String str) {
        this.connectPassword = str;
    }

    public int getCertificationType() {
        return this.certificationType;
    }

    public void setCertificationType(int i) {
        this.certificationType = i;
    }

    public int getEncryptionAlgorithm() {
        return this.encryptionAlgorithm;
    }

    public void setEncryptionAlgorithm(int i) {
        this.encryptionAlgorithm = i;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
        BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
        if (!StringUtils.isNullOfEmpty(this.hotspotName)) {
            bitBufferAllocateDynamic.putInt(this.hotspotName.length(), 16);
            bitBufferAllocateDynamic.put(this.hotspotName);
        }
        if (!StringUtils.isNullOfEmpty(this.connectPassword)) {
            bitBufferAllocateDynamic.putInt(1, 8);
            bitBufferAllocateDynamic.putInt(this.connectPassword.length(), 16);
            bitBufferAllocateDynamic.put(this.connectPassword);
        }
        if (Integer.MAX_VALUE != this.certificationType) {
            bitBufferAllocateDynamic.putInt(2, 8);
            bitBufferAllocateDynamic.putInt(this.certificationType, 8);
        }
        if (Integer.MAX_VALUE != this.encryptionAlgorithm) {
            bitBufferAllocateDynamic.putInt(3, 8);
            bitBufferAllocateDynamic.putInt(this.encryptionAlgorithm, 8);
        }
        this.cData = bitBufferAllocateDynamic.asByteArray();
        this.dataLen = this.cData.length;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        Hashtable<Byte, String> hashtable = new Hashtable<Byte, String>() { // from class: com.gg.reader.api.protocol.gx.MsgAppSetWifiHotspot.1
            {
                put((byte) 0, "Success.");
                put((byte) 1, "Set Fail.");
            }
        };
        if (this.cData == null || this.cData.length != 1) {
            return;
        }
        setRtCode(this.cData[0]);
        if (hashtable.containsKey(Byte.valueOf(this.cData[0]))) {
            setRtMsg(hashtable.get(Byte.valueOf(this.cData[0])));
        }
    }
}
