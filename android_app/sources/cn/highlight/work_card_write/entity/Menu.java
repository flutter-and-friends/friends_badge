package cn.highlight.work_card_write.entity;

/* loaded from: classes.dex */
public class Menu {
    private String content;
    private String fileType;

    /* renamed from: id */
    private int f101id;
    private boolean isSelected;

    public Menu() {
    }

    public Menu(int i, String str) {
        this.f101id = i;
        this.content = str;
    }

    public Menu(int i, String str, String str2) {
        this.f101id = i;
        this.content = str;
        this.fileType = str2;
    }

    public Menu(int i, String str, String str2, boolean z) {
        this.f101id = i;
        this.content = str;
        this.fileType = str2;
        this.isSelected = z;
    }

    public int getId() {
        return this.f101id;
    }

    public void setId(int i) {
        this.f101id = i;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public String getFileType() {
        return this.fileType;
    }

    public void setFileType(String str) {
        this.fileType = str;
    }

    public boolean isSelected() {
        return this.isSelected;
    }

    public void setSelected(boolean z) {
        this.isSelected = z;
    }
}
