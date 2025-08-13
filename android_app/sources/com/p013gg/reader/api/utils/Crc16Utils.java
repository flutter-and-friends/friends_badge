package com.p013gg.reader.api.utils;

import android.device.scanner.configuration.PropertyID;
import androidx.core.view.PointerIconCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.p013gg.reader.api.protocol.p014gx.EnumG;
import com.yuyh.library.imgsel.BuildConfig;

/* loaded from: classes.dex */
public class Crc16Utils {
    private static final int[] table8005 = {0, ExifInterface.DATA_PACK_BITS_COMPRESSED, 32783, 10, 32795, 30, 20, 32785, 32819, 54, 60, 32825, 40, 32813, 32807, 34, 32867, 102, 108, 32873, 120, 32893, 32887, 114, 80, 32853, 32863, 90, 32843, 78, 68, 32833, 32963, 198, 204, 32969, 216, 32989, 32983, BuildConfig.VERSION_CODE, EnumG.BaseMid_SafeCertification, 33013, 33023, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 33003, 238, EnumG.BaseMid_SetGJbBaseband, 32993, EnumG.BaseMid_InventoryHybrid, 32933, 32943, 170, 32955, 190, 180, 32945, 32915, 150, 156, 32921, 136, 32909, 32903, 130, 33155, 390, 396, 33161, 408, 33181, 33175, 402, 432, 33205, 33215, 442, 33195, 430, 420, 33185, 480, 33253, 33263, 490, 33275, 510, 500, 33265, 33235, 470, 476, 33241, 456, 33229, 33223, 450, 320, 33093, 33103, 330, 33115, 350, 340, 33105, 33139, 374, 380, 33145, 360, 33133, 33127, 354, 33059, 294, 300, 33065, 312, 33085, 33079, 306, PropertyID.CODE32_ENABLE, 33045, 33055, 282, 33035, PropertyID.CHARACTER_DATA_DELAY, PropertyID.LABEL_MATCHER_TARGETREGEX, 33025, 33539, PropertyID.CODABAR_CLSI, 780, 33545, 792, 33565, 33559, 786, 816, 33589, 33599, 826, 33579, 814, PropertyID.CODABAR_SEND_START, 33569, 864, 33637, 33647, 874, 33659, 894, 884, 33649, 33619, 854, 860, 33625, 840, 33613, 33607, 834, 960, 33733, 33743, 970, 33755, 990, 980, 33745, 33779, PointerIconCompat.TYPE_HORIZONTAL_DOUBLE_ARROW, PointerIconCompat.TYPE_GRAB, 33785, 1000, 33773, 33767, 994, 33699, 934, 940, 33705, 952, 33725, 33719, 946, 912, 33685, 33695, 922, 33675, 910, 900, 33665, 640, 33413, 33423, 650, 33435, 670, 660, 33425, 33459, 694, 700, 33465, 680, 33453, 33447, 674, 33507, 742, 748, 33513, 760, 33533, 33527, 754, 720, 33493, 33503, 730, 33483, 718, 708, 33473, 33347, 582, 588, 33353, 600, 33373, 33367, 594, 624, 33397, 33407, 634, 33387, 622, 612, 33377, PropertyID.D25_LENGTH1, 33317, 33327, PropertyID.I25_TO_EAN13, 33339, 574, 564, 33329, 33299, 534, 540, 33305, PropertyID.M25_ENABLE, 33293, 33287, 514};
    private static final int[] table1021 = {0, 4129, 8258, 12387, 16516, 20645, 24774, 28903, 33032, 37161, 41290, 45419, 49548, 53677, 57806, 61935, 4657, PropertyID.I25_ENABLE, 12915, 8786, 21173, 17044, 29431, 25302, 37689, 33560, 45947, 41818, 54205, 50076, 62463, 58334, 9314, 13379, PropertyID.CODE93_LENGTH1, 5121, 25830, 29895, 17572, 21637, 42346, 46411, 34088, 38153, 58862, 62927, 50604, 54669, 13907, 9842, 5649, 1584, 30423, 26358, 22165, 18100, 46939, 42874, 38681, 34616, 63455, 59390, 55197, 51132, 18628, 22757, 26758, 30887, 2112, 6241, 10242, 14371, 51660, 55789, 59790, 63919, 35144, 39273, 43274, 47403, 23285, 19156, 31415, 27286, 6769, 2640, 14899, 10770, 56317, 52188, 64447, 60318, 39801, 35672, 47931, 43802, 27814, 31879, 19684, 23749, 11298, 15363, 3168, 7233, 60846, 64911, 52716, 56781, 44330, 48395, 36200, 40265, 32407, 28342, 24277, 20212, 15891, 11826, 7761, 3696, 65439, 61374, 57309, 53244, 48923, 44858, 40793, 36728, 37256, 33193, 45514, 41451, 53516, 49453, 61774, 57711, 4224, 161, 12482, 8419, 20484, 16421, 28742, 24679, 33721, 37784, 41979, 46042, 49981, 54044, 58239, 62302, 689, 4752, 8947, 13010, 16949, 21012, 25207, 29270, 46570, 42443, 38312, 34185, 62830, 58703, 54572, 50445, 13538, 9411, 5280, 1153, 29798, 25671, 21540, 17413, 42971, 47098, 34713, 38840, 59231, 63358, 50973, 55100, 9939, 14066, 1681, 5808, 26199, 30326, 17941, 22068, 55628, 51565, 63758, 59695, 39368, 35305, 47498, 43435, 22596, 18533, 30726, 26663, 6336, 2273, 14466, 10403, 52093, 56156, 60223, 64286, 35833, 39896, 43963, 48026, 19061, 23124, 27191, 31254, 2801, 6864, 10931, 14994, 64814, 60687, 56684, 52557, 48554, 44427, 40424, 36297, 31782, 27655, 23652, 19525, 15522, 11395, 7392, 3265, 61215, 65342, 53085, 57212, 44955, 49082, 36825, 40952, 28183, 32310, 20053, 24180, 11923, 16050, 3793, 7920};

    private static short calc8005_byte(short s, byte b) {
        return (short) ((((s & 255) << 8) ^ table8005[(b ^ ((65280 & s) >> 8)) & 255]) & 65535);
    }

    public static short calc8005(short s, byte[] bArr, int i, int i2) {
        short sCalc8005_byte = s;
        for (int i3 = i; i3 < i + i2; i3++) {
            sCalc8005_byte = calc8005_byte(sCalc8005_byte, bArr[i3]);
        }
        return (short) (65535 & sCalc8005_byte);
    }

    public static short calc8005(short s, byte[] bArr) {
        return calc8005(s, bArr, 0, bArr.length);
    }

    private static short calc1021_byte(short s, byte b) {
        return (short) ((((s & 255) << 8) ^ table1021[(b ^ ((65280 & s) >> 8)) & 255]) & 65535);
    }

    public static short calc1021(short s, byte[] bArr, int i, int i2) {
        short sCalc1021_byte = s;
        for (int i3 = i; i3 < i + i2; i3++) {
            sCalc1021_byte = calc1021_byte(sCalc1021_byte, bArr[i3]);
        }
        return (short) ((~sCalc1021_byte) & 65535);
    }

    public static short calc1021(short s, byte[] bArr) {
        return calc1021(s, bArr, 0, bArr.length);
    }

    public static short CRC_XModem(byte[] bArr) {
        int i = 0;
        short s = 0;
        while (i < bArr.length) {
            byte b = bArr[i];
            short s2 = s;
            for (int i2 = 0; i2 < 8; i2++) {
                boolean z = ((b >> (7 - i2)) & 1) == 1;
                boolean z2 = ((s2 >> 15) & 1) == 1;
                s2 = (short) (s2 << 1);
                if (z ^ z2) {
                    s2 = (short) (s2 ^ 4129);
                }
            }
            i++;
            s = s2;
        }
        return (short) (65535 & s);
    }
}
