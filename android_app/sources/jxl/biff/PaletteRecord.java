package jxl.biff;

import com.p013gg.reader.api.protocol.p014gx.EnumG;
import jxl.format.Colour;
import jxl.format.RGB;
import jxl.read.biff.Record;

/* loaded from: classes2.dex */
public class PaletteRecord extends WritableRecordData {
    private static final int numColours = 56;
    private boolean dirty;
    private boolean initialized;
    private boolean read;
    private RGB[] rgbColours;

    public PaletteRecord(Record record) {
        super(record);
        this.rgbColours = new RGB[56];
        this.initialized = false;
        this.dirty = false;
        this.read = true;
    }

    public PaletteRecord() {
        super(Type.PALETTE);
        this.rgbColours = new RGB[56];
        this.initialized = true;
        this.dirty = false;
        this.read = false;
        for (Colour colour : Colour.getAllColours()) {
            setColourRGB(colour, colour.getDefaultRGB().getRed(), colour.getDefaultRGB().getGreen(), colour.getDefaultRGB().getBlue());
        }
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        if (this.read && !this.dirty) {
            return getRecord().getData();
        }
        byte[] bArr = new byte[EnumG.BaseMid_SetGbBaseband];
        IntegerHelper.getTwoBytes(56, bArr, 0);
        for (int i = 0; i < 56; i++) {
            int i2 = (i * 4) + 2;
            bArr[i2] = (byte) this.rgbColours[i].getRed();
            bArr[i2 + 1] = (byte) this.rgbColours[i].getGreen();
            bArr[i2 + 2] = (byte) this.rgbColours[i].getBlue();
        }
        return bArr;
    }

    private void initialize() {
        byte[] data = getRecord().getData();
        int i = IntegerHelper.getInt(data[0], data[1]);
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = (i2 * 4) + 2;
            this.rgbColours[i2] = new RGB(IntegerHelper.getInt(data[i3], (byte) 0), IntegerHelper.getInt(data[i3 + 1], (byte) 0), IntegerHelper.getInt(data[i3 + 2], (byte) 0));
        }
        this.initialized = true;
    }

    public boolean isDirty() {
        return this.dirty;
    }

    public void setColourRGB(Colour colour, int i, int i2, int i3) {
        int value = colour.getValue() - 8;
        if (value < 0 || value >= 56) {
            return;
        }
        if (!this.initialized) {
            initialize();
        }
        this.rgbColours[value] = new RGB(setValueRange(i, 0, 255), setValueRange(i2, 0, 255), setValueRange(i3, 0, 255));
        this.dirty = true;
    }

    public RGB getColourRGB(Colour colour) {
        int value = colour.getValue() - 8;
        if (value < 0 || value >= 56) {
            return colour.getDefaultRGB();
        }
        if (!this.initialized) {
            initialize();
        }
        return this.rgbColours[value];
    }

    private int setValueRange(int i, int i2, int i3) {
        return Math.min(Math.max(i, i2), i3);
    }
}
