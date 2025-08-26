package p024rx.internal.util;

import android.Manifest;
import java.util.Arrays;
import p024rx.functions.Action1;
import p024rx.internal.util.unsafe.Pow2;

/* loaded from: classes2.dex */
public final class OpenHashSet<T> {
    private static final int INT_PHI = -1640531527;
    T[] keys;
    final float loadFactor;
    int mask;
    int maxSize;
    int size;

    static int mix(int i) {
        int i2 = i * INT_PHI;
        return i2 ^ (i2 >>> 16);
    }

    public OpenHashSet() {
        this(16, 0.75f);
    }

    public OpenHashSet(int i) {
        this(i, 0.75f);
    }

    public OpenHashSet(int i, float f) {
        this.loadFactor = f;
        int iRoundToPowerOfTwo = Pow2.roundToPowerOfTwo(i);
        this.mask = iRoundToPowerOfTwo - 1;
        this.maxSize = (int) (f * iRoundToPowerOfTwo);
        this.keys = (T[]) new Object[iRoundToPowerOfTwo];
    }

    public boolean add(T t) {
        T t2;
        T[] tArr = this.keys;
        int i = this.mask;
        int iMix = mix(t.hashCode()) & i;
        T t3 = tArr[iMix];
        if (t3 != null) {
            if (t3.equals(t)) {
                return false;
            }
            do {
                iMix = (iMix + 1) & i;
                t2 = tArr[iMix];
                if (t2 == null) {
                }
            } while (!t2.equals(t));
            return false;
        }
        tArr[iMix] = t;
        int i2 = this.size + 1;
        this.size = i2;
        if (i2 >= this.maxSize) {
            rehash();
        }
        return true;
    }

    public boolean remove(T t) {
        T t2;
        T[] tArr = this.keys;
        int i = this.mask;
        int iMix = mix(t.hashCode()) & i;
        T t3 = tArr[iMix];
        if (t3 == null) {
            return false;
        }
        if (t3.equals(t)) {
            return removeEntry(iMix, tArr, i);
        }
        do {
            iMix = (iMix + 1) & i;
            t2 = tArr[iMix];
            if (t2 == null) {
                return false;
            }
        } while (!t2.equals(t));
        return removeEntry(iMix, tArr, i);
    }

    boolean removeEntry(int i, T[] tArr, int i2) {
        int i3;
        T t;
        this.size--;
        while (true) {
            int i4 = i + 1;
            while (true) {
                i3 = i4 & i2;
                t = tArr[i3];
                if (t == null) {
                    tArr[i] = null;
                    return true;
                }
                int iMix = mix(t.hashCode()) & i2;
                if (i <= i3) {
                    if (i >= iMix || iMix > i3) {
                        break;
                    }
                    i4 = i3 + 1;
                } else if (i < iMix || iMix <= i3) {
                    i4 = i3 + 1;
                }
            }
            tArr[i] = t;
            i = i3;
        }
    }

    public void clear(Action1<? super T> action1) {
        if (this.size == 0) {
            return;
        }
        T[] tArr = this.keys;
        for (Manifest manifest : tArr) {
            if (manifest != null) {
                action1.call(manifest);
            }
        }
        Arrays.fill(tArr, (Object) null);
        this.size = 0;
    }

    public void terminate() {
        this.size = 0;
        this.keys = (T[]) new Object[0];
    }

    void rehash() {
        T[] tArr = this.keys;
        int length = tArr.length;
        int i = length << 1;
        int i2 = i - 1;
        T[] tArr2 = (T[]) new Object[i];
        int i3 = this.size;
        while (true) {
            int i4 = i3 - 1;
            if (i3 != 0) {
                do {
                    length--;
                } while (tArr[length] == null);
                int iMix = mix(tArr[length].hashCode()) & i2;
                if (tArr2[iMix] != null) {
                    do {
                        iMix = (iMix + 1) & i2;
                    } while (tArr2[iMix] != null);
                }
                tArr2[iMix] = tArr[length];
                i3 = i4;
            } else {
                this.mask = i2;
                this.maxSize = (int) (i * this.loadFactor);
                this.keys = tArr2;
                return;
            }
        }
    }

    public boolean isEmpty() {
        return this.size == 0;
    }

    public T[] values() {
        return this.keys;
    }
}
