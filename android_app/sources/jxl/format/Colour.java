package jxl.format;

import androidx.core.os.EnvironmentCompat;
import cn.highlight.p004tx.usb.FtdiSerialDriver;

/* loaded from: classes2.dex */
public class Colour {
    private RGB rgb;
    private String string;
    private int value;
    private static Colour[] colours = new Colour[0];
    public static final Colour UNKNOWN = new Colour(32750, EnvironmentCompat.MEDIA_UNKNOWN, 0, 0, 0);
    public static final Colour BLACK = new Colour(32767, "black", 0, 0, 0);
    public static final Colour WHITE = new Colour(9, "white", 255, 255, 255);
    public static final Colour DEFAULT_BACKGROUND1 = new Colour(0, "default background", 255, 255, 255);
    public static final Colour DEFAULT_BACKGROUND = new Colour(FtdiSerialDriver.FtdiSerialPort.FTDI_DEVICE_IN_REQTYPE, "default background", 255, 255, 255);
    public static final Colour PALETTE_BLACK = new Colour(8, "black", 1, 0, 0);
    public static final Colour RED = new Colour(10, "red", 255, 0, 0);
    public static final Colour BRIGHT_GREEN = new Colour(11, "bright green", 0, 255, 0);
    public static final Colour BLUE = new Colour(12, "blue", 0, 0, 255);
    public static final Colour YELLOW = new Colour(13, "yellow", 255, 255, 0);
    public static final Colour PINK = new Colour(14, "pink", 255, 0, 255);
    public static final Colour TURQUOISE = new Colour(15, "turquoise", 0, 255, 255);
    public static final Colour DARK_RED = new Colour(16, "dark red", 128, 0, 0);
    public static final Colour GREEN = new Colour(17, "green", 0, 128, 0);
    public static final Colour DARK_BLUE = new Colour(18, "dark blue", 0, 0, 128);
    public static final Colour DARK_YELLOW = new Colour(19, "dark yellow", 128, 128, 0);
    public static final Colour VIOLET = new Colour(20, "violet", 128, 128, 0);
    public static final Colour TEAL = new Colour(21, "teal", 0, 128, 128);
    public static final Colour GREY_25_PERCENT = new Colour(22, "grey 25%", FtdiSerialDriver.FtdiSerialPort.FTDI_DEVICE_IN_REQTYPE, FtdiSerialDriver.FtdiSerialPort.FTDI_DEVICE_IN_REQTYPE, FtdiSerialDriver.FtdiSerialPort.FTDI_DEVICE_IN_REQTYPE);
    public static final Colour GREY_50_PERCENT = new Colour(23, "grey 50%", 128, 128, 128);
    public static final Colour PERIWINKLE = new Colour(24, "periwinkle%", 153, 153, 255);
    public static final Colour PLUM2 = new Colour(25, "plum", 153, 51, 102);
    public static final Colour IVORY = new Colour(26, "ivory", 255, 255, 204);
    public static final Colour LIGHT_TURQUOISE2 = new Colour(27, "light turquoise", 204, 255, 255);
    public static final Colour DARK_PURPLE = new Colour(28, "dark purple", 102, 0, 102);
    public static final Colour CORAL = new Colour(29, "coral", 255, 128, 128);
    public static final Colour OCEAN_BLUE = new Colour(30, "ocean blue", 0, 102, 204);
    public static final Colour ICE_BLUE = new Colour(31, "ice blue", 204, 204, 255);
    public static final Colour DARK_BLUE2 = new Colour(32, "dark blue", 0, 0, 128);
    public static final Colour PINK2 = new Colour(33, "pink", 255, 0, 255);
    public static final Colour YELLOW2 = new Colour(34, "yellow", 255, 255, 0);
    public static final Colour TURQOISE2 = new Colour(35, "turqoise", 0, 255, 255);
    public static final Colour VIOLET2 = new Colour(36, "violet", 128, 0, 128);
    public static final Colour DARK_RED2 = new Colour(37, "dark red", 128, 0, 0);
    public static final Colour TEAL2 = new Colour(38, "teal", 0, 128, 128);
    public static final Colour BLUE2 = new Colour(39, "blue", 0, 0, 255);
    public static final Colour SKY_BLUE = new Colour(40, "sky blue", 0, 204, 255);
    public static final Colour LIGHT_TURQUOISE = new Colour(41, "light turquoise", 204, 255, 255);
    public static final Colour LIGHT_GREEN = new Colour(42, "light green", 204, 255, 204);
    public static final Colour VERY_LIGHT_YELLOW = new Colour(43, "very light yellow", 255, 255, 153);
    public static final Colour PALE_BLUE = new Colour(44, "pale blue", 153, 204, 255);
    public static final Colour ROSE = new Colour(45, "rose", 255, 153, 204);
    public static final Colour LAVENDER = new Colour(46, "lavender", 204, 153, 255);
    public static final Colour TAN = new Colour(47, "tan", 255, 204, 153);
    public static final Colour LIGHT_BLUE = new Colour(48, "light blue", 51, 102, 255);
    public static final Colour AQUA = new Colour(49, "aqua", 51, 204, 204);
    public static final Colour LIME = new Colour(50, "lime", 153, 204, 0);
    public static final Colour GOLD = new Colour(51, "gold", 255, 204, 0);
    public static final Colour LIGHT_ORANGE = new Colour(52, "light orange", 255, 153, 0);
    public static final Colour ORANGE = new Colour(53, "orange", 255, 102, 0);
    public static final Colour BLUE_GREY = new Colour(54, "blue grey", 102, 102, 204);
    public static final Colour GREY_40_PERCENT = new Colour(55, "grey 40%", 150, 150, 150);
    public static final Colour DARK_TEAL = new Colour(56, "dark teal", 0, 51, 102);
    public static final Colour SEA_GREEN = new Colour(57, "sea green", 51, 153, 102);
    public static final Colour DARK_GREEN = new Colour(58, "dark green", 0, 51, 0);
    public static final Colour OLIVE_GREEN = new Colour(59, "olive green", 51, 51, 0);
    public static final Colour BROWN = new Colour(60, "brown", 153, 51, 0);
    public static final Colour PLUM = new Colour(61, "plum", 153, 51, 102);
    public static final Colour INDIGO = new Colour(62, "indigo", 51, 51, 153);
    public static final Colour GREY_80_PERCENT = new Colour(63, "grey 80%", 51, 51, 51);
    public static final Colour AUTOMATIC = new Colour(64, "automatic", 255, 255, 255);
    public static final Colour GRAY_80 = GREY_80_PERCENT;
    public static final Colour GRAY_50 = GREY_50_PERCENT;
    public static final Colour GRAY_25 = GREY_25_PERCENT;

    protected Colour(int i, String str, int i2, int i3, int i4) {
        this.value = i;
        this.string = str;
        this.rgb = new RGB(i2, i3, i4);
        Colour[] colourArr = colours;
        colours = new Colour[colourArr.length + 1];
        System.arraycopy(colourArr, 0, colours, 0, colourArr.length);
        colours[colourArr.length] = this;
    }

    public int getValue() {
        return this.value;
    }

    public String getDescription() {
        return this.string;
    }

    public int getDefaultRed() {
        return this.rgb.getRed();
    }

    public int getDefaultGreen() {
        return this.rgb.getGreen();
    }

    public int getDefaultBlue() {
        return this.rgb.getBlue();
    }

    public RGB getDefaultRGB() {
        return this.rgb;
    }

    public static Colour getInternalColour(int i) {
        int i2 = 0;
        while (true) {
            Colour[] colourArr = colours;
            if (i2 < colourArr.length) {
                if (colourArr[i2].getValue() == i) {
                    return colours[i2];
                }
                i2++;
            } else {
                return UNKNOWN;
            }
        }
    }

    public static Colour[] getAllColours() {
        return colours;
    }
}
