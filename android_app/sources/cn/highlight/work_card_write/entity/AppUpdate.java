package cn.highlight.work_card_write.entity;

/* loaded from: classes.dex */
public class AppUpdate {
    private int code;
    private DataBean data;
    private String msg;
    private String status;

    public DataBean getData() {
        return this.data;
    }

    public void setData(DataBean dataBean) {
        this.data = dataBean;
    }

    public String getMsg() {
        return this.msg;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public int getCode() {
        return this.code;
    }

    public void setCode(int i) {
        this.code = i;
    }

    public static class DataBean {
        private String createTime;
        private String createUser;

        /* renamed from: id */
        private int f100id;
        private String memo;
        private String originalName;
        private String updateTime;
        private String updateUser;
        private String url;
        private String version;

        public int getId() {
            return this.f100id;
        }

        public void setId(int i) {
            this.f100id = i;
        }

        public String getUrl() {
            return this.url;
        }

        public void setUrl(String str) {
            this.url = str;
        }

        public String getOriginalName() {
            return this.originalName;
        }

        public void setOriginalName(String str) {
            this.originalName = str;
        }

        public String getVersion() {
            return this.version;
        }

        public void setVersion(String str) {
            this.version = str;
        }

        public String getMemo() {
            return this.memo;
        }

        public void setMemo(String str) {
            this.memo = str;
        }

        public String getCreateUser() {
            return this.createUser;
        }

        public void setCreateUser(String str) {
            this.createUser = str;
        }

        public String getCreateTime() {
            return this.createTime;
        }

        public void setCreateTime(String str) {
            this.createTime = str;
        }

        public String getUpdateUser() {
            return this.updateUser;
        }

        public void setUpdateUser(String str) {
            this.updateUser = str;
        }

        public String getUpdateTime() {
            return this.updateTime;
        }

        public void setUpdateTime(String str) {
            this.updateTime = str;
        }
    }
}
