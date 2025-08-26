package com.uhf.api.cls;

/* loaded from: classes.dex */
public class GpiInfo_ST {
    public int gpiCount;
    public GpiState_ST[] gpiStats = new GpiState_ST[8];

    public GpiInfo_ST() {
        for (int i = 0; i < 8; i++) {
            this.gpiStats[i] = new GpiState_ST();
        }
    }
}
