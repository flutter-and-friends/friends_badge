package cn.highlight.p004tx;

import java.util.List;

/* loaded from: classes.dex */
public class TxData {
    byte[] data;
    List<Byte> dataList;

    public TxData() {
    }

    public TxData(byte[] bArr) {
        this.data = bArr;
    }

    public TxData(List<Byte> list) {
        this.dataList = list;
    }

    public byte[] getData() {
        return this.data;
    }

    public void setData(byte[] bArr) {
        this.data = bArr;
    }

    public List<Byte> getDataList() {
        return this.dataList;
    }

    public void setDataList(List<Byte> list) {
        this.dataList = list;
    }
}
