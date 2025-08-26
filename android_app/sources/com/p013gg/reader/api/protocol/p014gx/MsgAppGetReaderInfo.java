package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import com.p013gg.reader.api.utils.StringUtils;

/* loaded from: classes.dex */
public class MsgAppGetReaderInfo extends Message {
    private String appCompileTime;
    private String appVersions;
    private String baseCompileTime;
    private long powerOnTime;
    private String readerSerialNumber;
    private String systemVersions;
    private String tuYaAuthKey;
    private String tuYaPid;
    private String tuYaShortUrl;
    private String tuYaUuid;

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
    }

    public MsgAppGetReaderInfo() {
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_APP;
            this.msgType.msgId = (byte) 0;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgAppGetReaderInfo(byte[] bArr) {
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
                    this.readerSerialNumber = new String(bitBufferWrap.get(new byte[intUnsigned]), "ASCII");
                }
                this.powerOnTime = bitBufferWrap.getLongUnsigned(32);
                int intUnsigned2 = bitBufferWrap.getIntUnsigned(16);
                if (intUnsigned2 > 0) {
                    this.baseCompileTime = new String(bitBufferWrap.get(new byte[intUnsigned2]), "ASCII");
                }
                while (bitBufferWrap.position() / 8 < bArr.length) {
                    switch (bitBufferWrap.getByte()) {
                        case 1:
                            this.appVersions = bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 2:
                            int intUnsigned3 = bitBufferWrap.getIntUnsigned(16);
                            if (intUnsigned3 <= 0) {
                                break;
                            } else {
                                this.systemVersions = new String(bitBufferWrap.get(new byte[intUnsigned3]), "ASCII");
                                break;
                            }
                        case 3:
                            int intUnsigned4 = bitBufferWrap.getIntUnsigned(16);
                            if (intUnsigned4 <= 0) {
                                break;
                            } else {
                                this.appCompileTime = new String(bitBufferWrap.get(new byte[intUnsigned4]), "ASCII");
                                break;
                            }
                        case 4:
                            int intUnsigned5 = bitBufferWrap.getIntUnsigned(16);
                            if (intUnsigned5 <= 0) {
                                break;
                            } else {
                                this.tuYaPid = new String(bitBufferWrap.get(new byte[intUnsigned5]), "ASCII");
                                break;
                            }
                        case 5:
                            int intUnsigned6 = bitBufferWrap.getIntUnsigned(16);
                            if (intUnsigned6 <= 0) {
                                break;
                            } else {
                                this.tuYaUuid = new String(bitBufferWrap.get(new byte[intUnsigned6]), "ASCII");
                                break;
                            }
                        case 6:
                            int intUnsigned7 = bitBufferWrap.getIntUnsigned(16);
                            if (intUnsigned7 <= 0) {
                                break;
                            } else {
                                this.tuYaAuthKey = new String(bitBufferWrap.get(new byte[intUnsigned7]), "ASCII");
                                break;
                            }
                        case 7:
                            int intUnsigned8 = bitBufferWrap.getIntUnsigned(16);
                            if (intUnsigned8 <= 0) {
                                break;
                            } else {
                                this.tuYaShortUrl = new String(bitBufferWrap.get(new byte[intUnsigned8]), "ASCII");
                                break;
                            }
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public String getAppVersions() {
        return this.appVersions;
    }

    public void setAppVersions(String str) {
        this.appVersions = str;
    }

    public String getSystemVersions() {
        return this.systemVersions;
    }

    public void setSystemVersions(String str) {
        this.systemVersions = str;
    }

    public String getReaderSerialNumber() {
        return this.readerSerialNumber;
    }

    public void setReaderSerialNumber(String str) {
        this.readerSerialNumber = str;
    }

    public long getPowerOnTime() {
        return this.powerOnTime;
    }

    public void setPowerOnTime(long j) {
        this.powerOnTime = j;
    }

    public String getBaseCompileTime() {
        return this.baseCompileTime;
    }

    public void setBaseCompileTime(String str) {
        this.baseCompileTime = str;
    }

    public String getAppCompileTime() {
        return this.appCompileTime;
    }

    public void setAppCompileTime(String str) {
        this.appCompileTime = str;
    }

    public String getFormatPowerOnTime() {
        long powerOnTime = getPowerOnTime() * 1000;
        return (powerOnTime / 86400000) + " days " + ((powerOnTime % 86400000) / 3600000) + " hours " + ((powerOnTime % 3600000) / 60000) + " minutes " + ((powerOnTime % 60000) / 1000) + " seconds ";
    }

    public String getTuYaPid() {
        return this.tuYaPid;
    }

    public void setTuYaPid(String str) {
        this.tuYaPid = str;
    }

    public String getTuYaUuid() {
        return this.tuYaUuid;
    }

    public void setTuYaUuid(String str) {
        this.tuYaUuid = str;
    }

    public String getTuYaAuthKey() {
        return this.tuYaAuthKey;
    }

    public void setTuYaAuthKey(String str) {
        this.tuYaAuthKey = str;
    }

    public String getTuYaShortUrl() {
        return this.tuYaShortUrl;
    }

    public void setTuYaShortUrl(String str) {
        this.tuYaShortUrl = str;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackPack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            if (this.readerSerialNumber != null) {
                bitBufferAllocateDynamic.putInt(this.readerSerialNumber.length(), 16);
                bitBufferAllocateDynamic.put(this.readerSerialNumber);
            }
            bitBufferAllocateDynamic.put(this.powerOnTime, 32);
            if (this.baseCompileTime != null) {
                bitBufferAllocateDynamic.putInt(this.baseCompileTime.length(), 16);
                bitBufferAllocateDynamic.put(this.baseCompileTime);
            }
            if (this.appVersions != null) {
                bitBufferAllocateDynamic.putInt(1, 8);
                for (String str : this.appVersions.split("\\.")) {
                    bitBufferAllocateDynamic.putInt(Integer.parseInt(str), 8);
                }
            }
            if (this.systemVersions != null) {
                bitBufferAllocateDynamic.putInt(2, 8);
                bitBufferAllocateDynamic.putInt(this.systemVersions.length(), 16);
                bitBufferAllocateDynamic.put(this.systemVersions);
            }
            if (this.appCompileTime != null) {
                bitBufferAllocateDynamic.putInt(3, 8);
                bitBufferAllocateDynamic.putInt(this.appCompileTime.length(), 16);
                bitBufferAllocateDynamic.put(this.appCompileTime);
            }
            if (!StringUtils.isNullOfEmpty(this.tuYaPid)) {
                bitBufferAllocateDynamic.putInt(4, 8);
                bitBufferAllocateDynamic.putInt(this.tuYaPid.length(), 16);
                bitBufferAllocateDynamic.put(this.tuYaPid);
            }
            if (!StringUtils.isNullOfEmpty(this.tuYaUuid)) {
                bitBufferAllocateDynamic.putInt(5, 8);
                bitBufferAllocateDynamic.putInt(this.tuYaUuid.length(), 16);
                bitBufferAllocateDynamic.put(this.tuYaUuid);
            }
            if (!StringUtils.isNullOfEmpty(this.tuYaAuthKey)) {
                bitBufferAllocateDynamic.putInt(6, 8);
                bitBufferAllocateDynamic.putInt(this.tuYaAuthKey.length(), 16);
                bitBufferAllocateDynamic.put(this.tuYaAuthKey);
            }
            if (!StringUtils.isNullOfEmpty(this.tuYaShortUrl)) {
                bitBufferAllocateDynamic.putInt(7, 8);
                bitBufferAllocateDynamic.putInt(this.tuYaShortUrl.length(), 16);
                bitBufferAllocateDynamic.put(this.tuYaShortUrl);
            }
            this.cData = bitBufferAllocateDynamic.asByteArray();
            this.dataLen = this.cData.length;
        } catch (Exception unused) {
        }
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        if (this.cData == null || this.cData.length <= 0) {
            return;
        }
        BitBuffer bitBufferWrap = BitBuffer.wrap(this.cData);
        bitBufferWrap.position(0);
        try {
            int intUnsigned = bitBufferWrap.getIntUnsigned(16);
            if (intUnsigned > 0) {
                this.readerSerialNumber = new String(bitBufferWrap.get(new byte[intUnsigned]), "ASCII");
            }
            this.powerOnTime = bitBufferWrap.getLongUnsigned(32);
            int intUnsigned2 = bitBufferWrap.getIntUnsigned(16);
            if (intUnsigned2 > 0) {
                this.baseCompileTime = new String(bitBufferWrap.get(new byte[intUnsigned2]), "ASCII");
            }
            while (bitBufferWrap.position() / 8 < this.cData.length) {
                switch (bitBufferWrap.getByte()) {
                    case 1:
                        this.appVersions = bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8);
                        break;
                    case 2:
                        int intUnsigned3 = bitBufferWrap.getIntUnsigned(16);
                        if (intUnsigned3 <= 0) {
                            break;
                        } else {
                            this.systemVersions = new String(bitBufferWrap.get(new byte[intUnsigned3]), "ASCII");
                            break;
                        }
                    case 3:
                        int intUnsigned4 = bitBufferWrap.getIntUnsigned(16);
                        if (intUnsigned4 <= 0) {
                            break;
                        } else {
                            this.appCompileTime = new String(bitBufferWrap.get(new byte[intUnsigned4]), "ASCII");
                            break;
                        }
                    case 4:
                        int intUnsigned5 = bitBufferWrap.getIntUnsigned(16);
                        if (intUnsigned5 <= 0) {
                            break;
                        } else {
                            this.tuYaPid = new String(bitBufferWrap.get(new byte[intUnsigned5]), "ASCII");
                            break;
                        }
                    case 5:
                        int intUnsigned6 = bitBufferWrap.getIntUnsigned(16);
                        if (intUnsigned6 <= 0) {
                            break;
                        } else {
                            this.tuYaUuid = new String(bitBufferWrap.get(new byte[intUnsigned6]), "ASCII");
                            break;
                        }
                    case 6:
                        int intUnsigned7 = bitBufferWrap.getIntUnsigned(16);
                        if (intUnsigned7 <= 0) {
                            break;
                        } else {
                            this.tuYaAuthKey = new String(bitBufferWrap.get(new byte[intUnsigned7]), "ASCII");
                            break;
                        }
                    case 7:
                        int intUnsigned8 = bitBufferWrap.getIntUnsigned(16);
                        if (intUnsigned8 <= 0) {
                            break;
                        } else {
                            this.tuYaShortUrl = new String(bitBufferWrap.get(new byte[intUnsigned8]), "ASCII");
                            break;
                        }
                }
            }
        } catch (Exception unused) {
        }
        setRtCode((byte) 0);
    }

    public String toString() {
        return "MsgAppGetReaderInfo{readerSerialNumber='" + this.readerSerialNumber + "', powerOnTime=" + this.powerOnTime + ", baseCompileTime='" + this.baseCompileTime + "', appVersions='" + this.appVersions + "', systemVersions='" + this.systemVersions + "', appCompileTime='" + this.appCompileTime + "', tuYaPid='" + this.tuYaPid + "', tuYaUuid='" + this.tuYaUuid + "', tuYaAuthKey='" + this.tuYaAuthKey + "', tuYaShortUrl='" + this.tuYaShortUrl + "'}";
    }
}
