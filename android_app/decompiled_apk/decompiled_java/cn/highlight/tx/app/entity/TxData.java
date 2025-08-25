package cn.highlight.tx.app.entity;

import java.util.List;

/* loaded from: classes.dex */
public class TxData {
    List<Byte> dataList;

    public TxData(List<Byte> list) {
        this.dataList = list;
    }

    public List<Byte> getDataList() {
        return this.dataList;
    }

    public void setDataList(List<Byte> list) {
        this.dataList = list;
    }
}
