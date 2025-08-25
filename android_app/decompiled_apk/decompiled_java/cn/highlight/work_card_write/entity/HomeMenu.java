package cn.highlight.work_card_write.entity;

/* loaded from: classes.dex */
public class HomeMenu {
    public int iconRes;
    public String name;

    public HomeMenu(String str, int i) {
        this.name = str;
        this.iconRes = i;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public int getIconRes() {
        return this.iconRes;
    }

    public void setIconRes(int i) {
        this.iconRes = i;
    }
}
