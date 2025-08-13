package top.zibin.luban;

import android.device.scanner.configuration.PropertyID;
import android.graphics.BitmapFactory;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;

/* loaded from: classes2.dex */
enum Checker {
    SINGLE;

    private static final String JPG = ".jpg";
    private static final String TAG = "Luban";
    private final byte[] JPEG_SIGNATURE = {-1, -40, -1};

    Checker() {
    }

    boolean isJPG(InputStream inputStream) {
        return isJPG(toByteArray(inputStream));
    }

    int getOrientation(InputStream inputStream) {
        return getOrientation(toByteArray(inputStream));
    }

    private boolean isJPG(byte[] bArr) {
        if (bArr == null || bArr.length < 3) {
            return false;
        }
        return Arrays.equals(this.JPEG_SIGNATURE, new byte[]{bArr[0], bArr[1], bArr[2]});
    }

    private int getOrientation(byte[] bArr) {
        int i;
        int i2;
        if (bArr == null) {
            return 0;
        }
        int i3 = 0;
        while (i3 + 3 < bArr.length) {
            int i4 = i3 + 1;
            if ((bArr[i3] & 255) == 255) {
                int i5 = bArr[i4] & 255;
                if (i5 != 255) {
                    i4++;
                    if (i5 != 216 && i5 != 1) {
                        if (i5 != 217 && i5 != 218) {
                            int iPack = pack(bArr, i4, 2, false);
                            if (iPack < 2 || (i2 = i4 + iPack) > bArr.length) {
                                Log.e(TAG, "Invalid length");
                                return 0;
                            }
                            if (i5 == 225 && iPack >= 8 && pack(bArr, i4 + 2, 4, false) == 1165519206 && pack(bArr, i4 + 6, 2, false) == 0) {
                                i3 = i4 + 8;
                                i = iPack - 8;
                                break;
                            }
                            i3 = i2;
                        }
                    }
                }
                i3 = i4;
            }
            i3 = i4;
        }
        i = 0;
        if (i > 8) {
            int iPack2 = pack(bArr, i3, 4, false);
            if (iPack2 != 1229531648 && iPack2 != 1296891946) {
                Log.e(TAG, "Invalid byte order");
                return 0;
            }
            boolean z = iPack2 == 1229531648;
            int iPack3 = pack(bArr, i3 + 4, 4, z) + 2;
            if (iPack3 < 10 || iPack3 > i) {
                Log.e(TAG, "Invalid offset");
                return 0;
            }
            int i6 = i3 + iPack3;
            int i7 = i - iPack3;
            int iPack4 = pack(bArr, i6 - 2, 2, z);
            while (true) {
                int i8 = iPack4 - 1;
                if (iPack4 <= 0 || i7 < 12) {
                    break;
                }
                if (pack(bArr, i6, 2, z) == 274) {
                    int iPack5 = pack(bArr, i6 + 8, 2, z);
                    if (iPack5 == 1) {
                        return 0;
                    }
                    if (iPack5 == 3) {
                        return 180;
                    }
                    if (iPack5 == 6) {
                        return 90;
                    }
                    if (iPack5 == 8) {
                        return PropertyID.CHARACTER_DATA_DELAY;
                    }
                    Log.e(TAG, "Unsupported orientation");
                    return 0;
                }
                i6 += 12;
                i7 -= 12;
                iPack4 = i8;
            }
        }
        Log.e(TAG, "Orientation not found");
        return 0;
    }

    String extSuffix(InputStreamProvider inputStreamProvider) {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeStream(inputStreamProvider.open(), null, options);
            return options.outMimeType.replace("image/", ".");
        } catch (Exception unused) {
            return JPG;
        }
    }

    boolean needCompress(int i, String str) {
        if (i <= 0) {
            return true;
        }
        File file = new File(str);
        return file.exists() && file.length() > ((long) (i << 10));
    }

    private int pack(byte[] bArr, int i, int i2, boolean z) {
        int i3;
        if (z) {
            i += i2 - 1;
            i3 = -1;
        } else {
            i3 = 1;
        }
        int i4 = 0;
        while (true) {
            int i5 = i2 - 1;
            if (i2 <= 0) {
                return i4;
            }
            i4 = (bArr[i] & 255) | (i4 << 8);
            i += i3;
            i2 = i5;
        }
    }

    private byte[] toByteArray(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return new byte[0];
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        while (true) {
            try {
                try {
                    int i = inputStream.read(bArr, 0, bArr.length);
                    if (i != -1) {
                        byteArrayOutputStream.write(bArr, 0, i);
                    } else {
                        try {
                            break;
                        } catch (IOException unused) {
                        }
                    }
                } catch (Exception unused2) {
                    byte[] bArr2 = new byte[0];
                    try {
                        byteArrayOutputStream.close();
                    } catch (IOException unused3) {
                    }
                    return bArr2;
                }
            } finally {
                try {
                    byteArrayOutputStream.close();
                } catch (IOException unused4) {
                }
            }
        }
        return byteArrayOutputStream.toByteArray();
    }
}
