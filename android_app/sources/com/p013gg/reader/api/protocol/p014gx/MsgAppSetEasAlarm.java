package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import com.p013gg.reader.api.utils.HexUtils;
import com.p013gg.reader.api.utils.StringUtils;
import java.util.Hashtable;

/* loaded from: classes.dex */
public class MsgAppSetEasAlarm extends Message {
    private int alarmSwitch;
    private byte[] byteContent;
    private byte[] byteMask;
    private ActionParamFail fail;
    private int filterData;
    private String hexContent;
    private String hexMask;
    private int start;
    private ActionParamSuccess success;

    public MsgAppSetEasAlarm() {
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_APP;
            this.msgType.msgId = (byte) 63;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgAppSetEasAlarm(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.alarmSwitch = bitBufferWrap.getIntUnsigned(8);
                this.filterData = bitBufferWrap.getIntUnsigned(8);
                this.start = bitBufferWrap.getIntUnsigned(16);
                int intUnsigned = bitBufferWrap.getIntUnsigned(16);
                if (intUnsigned > 0) {
                    this.byteContent = bitBufferWrap.get(new byte[intUnsigned]);
                    this.hexContent = HexUtils.bytes2HexString(this.byteContent);
                }
                int intUnsigned2 = bitBufferWrap.getIntUnsigned(16);
                if (intUnsigned2 > 0) {
                    this.byteMask = bitBufferWrap.get(new byte[intUnsigned2]);
                    this.hexMask = HexUtils.bytes2HexString(this.byteMask);
                }
                while (bitBufferWrap.position() / 8 < bArr.length) {
                    int intUnsigned3 = bitBufferWrap.getIntUnsigned(8);
                    if (intUnsigned3 == 1) {
                        byte[] bArr2 = new byte[bitBufferWrap.getIntUnsigned(16)];
                        bitBufferWrap.get(bArr2);
                        this.success = new ActionParamSuccess(bArr2);
                    } else if (intUnsigned3 == 2) {
                        byte[] bArr3 = new byte[bitBufferWrap.getIntUnsigned(16)];
                        bitBufferWrap.get(bArr3);
                        this.fail = new ActionParamFail(bArr3);
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public int getAlarmSwitch() {
        return this.alarmSwitch;
    }

    public void setAlarmSwitch(int i) {
        this.alarmSwitch = i;
    }

    public int getFilterData() {
        return this.filterData;
    }

    public void setFilterData(int i) {
        this.filterData = i;
    }

    public int getStart() {
        return this.start;
    }

    public void setStart(int i) {
        this.start = i;
    }

    public String getHexContent() {
        return this.hexContent;
    }

    public void setHexContent(String str) {
        this.hexContent = str;
        if (StringUtils.isNullOfEmpty(str)) {
            return;
        }
        this.byteContent = HexUtils.hexString2Bytes(this.hexContent);
    }

    public byte[] getByteContent() {
        return this.byteContent;
    }

    public void setByteContent(byte[] bArr) {
        this.byteContent = bArr;
    }

    public String getHexMask() {
        return this.hexMask;
    }

    public void setHexMask(String str) {
        this.hexMask = str;
        if (StringUtils.isNullOfEmpty(str)) {
            return;
        }
        this.byteMask = HexUtils.hexString2Bytes(this.hexMask);
    }

    public byte[] getByteMask() {
        return this.byteMask;
    }

    public void setByteMask(byte[] bArr) {
        this.byteMask = bArr;
    }

    public ActionParamSuccess getSuccess() {
        return this.success;
    }

    public void setSuccess(ActionParamSuccess actionParamSuccess) {
        this.success = actionParamSuccess;
    }

    public ActionParamFail getFail() {
        return this.fail;
    }

    public void setFail(ActionParamFail actionParamFail) {
        this.fail = actionParamFail;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
        BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
        bitBufferAllocateDynamic.putInt(this.alarmSwitch, 8);
        bitBufferAllocateDynamic.putInt(this.filterData, 8);
        bitBufferAllocateDynamic.putInt(this.start, 16);
        byte[] bArr = this.byteContent;
        if (bArr != null && bArr.length > 0) {
            bitBufferAllocateDynamic.putInt(bArr.length, 16);
            bitBufferAllocateDynamic.put(this.byteContent);
        }
        byte[] bArr2 = this.byteMask;
        if (bArr2 != null && bArr2.length > 0) {
            bitBufferAllocateDynamic.putInt(bArr2.length, 16);
            bitBufferAllocateDynamic.put(this.byteMask);
        }
        if (this.success != null) {
            bitBufferAllocateDynamic.putInt(1, 8);
            byte[] bytes = this.success.toBytes();
            bitBufferAllocateDynamic.putInt(bytes.length, 16);
            bitBufferAllocateDynamic.put(bytes);
        }
        if (this.fail != null) {
            bitBufferAllocateDynamic.putInt(2, 8);
            byte[] bytes2 = this.fail.toBytes();
            bitBufferAllocateDynamic.putInt(bytes2.length, 16);
            bitBufferAllocateDynamic.put(bytes2);
        }
        this.cData = bitBufferAllocateDynamic.asByteArray();
        this.dataLen = this.cData.length;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        Hashtable<Byte, String> hashtable = new Hashtable<Byte, String>() { // from class: com.gg.reader.api.protocol.gx.MsgAppSetEasAlarm.1
            {
                put((byte) 0, "Success.");
                put((byte) 1, "Set failure.");
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
