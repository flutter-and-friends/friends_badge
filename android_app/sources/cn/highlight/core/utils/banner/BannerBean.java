package cn.highlight.core.utils.banner;

/* loaded from: classes.dex */
public class BannerBean {

    /* renamed from: id */
    private int f78id;
    private String imgUrl;
    private String linkUrl;
    private int type;

    public BannerBean() {
    }

    public BannerBean(int i, int i2, String str, String str2) {
        this.f78id = i;
        this.type = i2;
        this.imgUrl = str;
        this.linkUrl = str2;
    }

    public int getId() {
        return this.f78id;
    }

    public void setId(int i) {
        this.f78id = i;
    }

    public int getType() {
        return this.type;
    }

    public void setType(int i) {
        this.type = i;
    }

    public String getImgUrl() {
        return this.imgUrl;
    }

    public void setImgUrl(String str) {
        this.imgUrl = str;
    }

    public String getLinkUrl() {
        return this.linkUrl;
    }

    public void setLinkUrl(String str) {
        this.linkUrl = str;
    }
}
