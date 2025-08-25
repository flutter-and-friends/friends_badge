package cn.manytag.rfidapi.uhf.data;

/* loaded from: classes.dex */
public class Setting {
    private String WorkingFrequency;
    private int gattery;
    private int power;
    private int readingCycle;
    private int restCycle;
    private boolean sound;
    private String version;

    public int getGattery() {
        return this.gattery;
    }

    public int getPower() {
        return this.power;
    }

    public int getReadingCycle() {
        return this.readingCycle;
    }

    public int getRestCycle() {
        return this.restCycle;
    }

    public String getVersion() {
        return this.version;
    }

    public String getWorkingFrequency() {
        return this.WorkingFrequency;
    }

    public boolean isSound() {
        return this.sound;
    }

    public void setGattery(int i) {
        this.gattery = i;
    }

    public void setPower(int i) {
        this.power = i;
    }

    public void setReadingCycle(int i) {
        this.readingCycle = i;
    }

    public void setRestCycle(int i) {
        this.restCycle = i;
    }

    public void setSound(boolean z) {
        this.sound = z;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public void setWorkingFrequency(String str) {
        this.WorkingFrequency = str;
    }
}
