package cn.highlight.p004tx.app.entity;

/* loaded from: classes.dex */
public class Lock {
    private Integer cabinetNumber;
    private Integer lockStatus;

    public Lock(Integer num, Integer num2) {
        this.cabinetNumber = num;
        this.lockStatus = num2;
    }

    public Lock() {
    }

    public Integer getCabinetNumber() {
        return this.cabinetNumber;
    }

    public void setCabinetNumber(Integer num) {
        this.cabinetNumber = num;
    }

    public Integer getLockStatus() {
        return this.lockStatus;
    }

    public void setLockStatus(Integer num) {
        this.lockStatus = num;
    }
}
