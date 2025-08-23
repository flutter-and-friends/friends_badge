package cn.highlight.work_card_write.entity;

/* loaded from: classes.dex */
public class LoginRes {
    private DataBean data;
    private String msg;
    private String status;

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public String getMsg() {
        return this.msg;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public DataBean getData() {
        return this.data;
    }

    public void setData(DataBean dataBean) {
        this.data = dataBean;
    }

    public static class DataBean {
        private String token;
        private UserBean user;

        public UserBean getUser() {
            return this.user;
        }

        public void setUser(UserBean userBean) {
            this.user = userBean;
        }

        public String getToken() {
            return this.token;
        }

        public void setToken(String str) {
            this.token = str;
        }

        public static class UserBean {
            private String nickName;
            private String organizationId;

            public String getNickName() {
                return this.nickName;
            }

            public void setNickName(String str) {
                this.nickName = str;
            }

            public String getOrganizationId() {
                return this.organizationId;
            }

            public void setOrganizationId(String str) {
                this.organizationId = str;
            }
        }
    }
}
