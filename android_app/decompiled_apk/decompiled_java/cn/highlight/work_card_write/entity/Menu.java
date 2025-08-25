package cn.highlight.work_card_write.entity;

/* loaded from: classes.dex */
public class Menu {
    private String content;
    private String fileType;
    private int id;
    private boolean isSelected;

    public Menu() {
    }

    public Menu(int i, String str) {
        this.id = i;
        this.content = str;
    }

    public Menu(int i, String str, String str2) {
        this.id = i;
        this.content = str;
        this.fileType = str2;
    }

    public Menu(int i, String str, String str2, boolean z) {
        this.id = i;
        this.content = str;
        this.fileType = str2;
        this.isSelected = z;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int i) {
        this.id = i;
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
