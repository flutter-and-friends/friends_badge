package cn.highlight.work_card_write.greendao.table;

/* loaded from: classes.dex */
public class BadgeBean {
    private String YL1;
    private String YL2;
    private String YL3;
    private byte[] bitmapEnd;
    private byte[] bitmapStart;
    private String color;

    /* renamed from: id */
    private Long f105id;
    private String imageName;
    private String size;
    private String time;

    public BadgeBean(Long l, String str, String str2, String str3, byte[] bArr, byte[] bArr2, String str4, String str5, String str6, String str7) {
        this.f105id = l;
        this.imageName = str;
        this.size = str2;
        this.color = str3;
        this.bitmapStart = bArr;
        this.bitmapEnd = bArr2;
        this.time = str4;
        this.YL1 = str5;
        this.YL2 = str6;
        this.YL3 = str7;
    }

    public BadgeBean() {
    }

    public Long getId() {
        return this.f105id;
    }

    public void setId(Long l) {
        this.f105id = l;
    }

    public String getImageName() {
        return this.imageName;
    }

    public void setImageName(String str) {
        this.imageName = str;
    }

    public String getSize() {
        return this.size;
    }

    public void setSize(String str) {
        this.size = str;
    }

    public String getColor() {
        return this.color;
    }

    public void setColor(String str) {
        this.color = str;
    }

    public byte[] getBitmapStart() {
        return this.bitmapStart;
    }

    public void setBitmapStart(byte[] bArr) {
        this.bitmapStart = bArr;
    }

    public byte[] getBitmapEnd() {
        return this.bitmapEnd;
    }

    public void setBitmapEnd(byte[] bArr) {
        this.bitmapEnd = bArr;
    }

    public String getTime() {
        return this.time;
    }

    public void setTime(String str) {
        this.time = str;
    }

    public String getYL1() {
        return this.YL1;
    }

    public void setYL1(String str) {
        this.YL1 = str;
    }

    public String getYL2() {
        return this.YL2;
    }

    public void setYL2(String str) {
        this.YL2 = str;
    }

    public String getYL3() {
        return this.YL3;
    }

    public void setYL3(String str) {
        this.YL3 = str;
    }
}
