package cn.highlight.work_card_write.greendao.table;

/* loaded from: classes.dex */
public class TestBean {
    private String content;

    /* renamed from: id */
    private Long f107id;
    private String title;

    public TestBean(Long l, String str, String str2) {
        this.f107id = l;
        this.title = str;
        this.content = str2;
    }

    public TestBean() {
    }

    public Long getId() {
        return this.f107id;
    }

    public void setId(Long l) {
        this.f107id = l;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String str) {
        this.content = str;
    }
}
