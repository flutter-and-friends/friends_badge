package com.uhf.api.cls;

/* loaded from: classes.dex */
public class BackReadOption {
    public char FastReadDutyRation;
    public boolean IsFastRead;
    public boolean IsGPITrigger;
    public short ReadDuration;
    public int ReadInterval;
    public TagMetaFlags TMFlags = new TagMetaFlags();
    public GPITrigger GpiTrigger = new GPITrigger();
}
