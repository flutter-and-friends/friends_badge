package cn.highlight.tx.app.entity;

/* loaded from: classes.dex */
public class Tag {
    private Integer antennaNumber;
    private String epc;

    public Tag() {
    }

    public Tag(Integer num, String str) {
        this.antennaNumber = num;
        this.epc = str;
    }

    public Integer getAntennaNumber() {
        return this.antennaNumber;
    }

    public void setAntennaNumber(Integer num) {
        this.antennaNumber = num;
    }

    public String getEpc() {
        return this.epc;
    }

    public void setEpc(String str) {
        this.epc = str;
    }
}
