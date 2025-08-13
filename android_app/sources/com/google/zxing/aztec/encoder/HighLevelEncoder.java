package com.google.zxing.aztec.encoder;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes.dex */
public final class HighLevelEncoder {
    static final int MODE_DIGIT = 2;
    static final int MODE_LOWER = 1;
    static final int MODE_MIXED = 3;
    static final int MODE_PUNCT = 4;
    static final int MODE_UPPER = 0;
    static final int[][] SHIFT_TABLE;
    private final byte[] text;
    static final String[] MODE_NAMES = {"UPPER", "LOWER", "DIGIT", "MIXED", "PUNCT"};
    static final int[][] LATCH_TABLE = {new int[]{0, 327708, 327710, 327709, 656318}, new int[]{590318, 0, 327710, 327709, 656318}, new int[]{262158, 590300, 0, 590301, 932798}, new int[]{327709, 327708, 656318, 0, 327710}, new int[]{327711, 656380, 656382, 656381, 0}};
    private static final int[][] CHAR_MAP = (int[][]) Array.newInstance((Class<?>) int.class, 5, 256);

    static {
        CHAR_MAP[0][32] = 1;
        for (int i = 65; i <= 90; i++) {
            CHAR_MAP[0][i] = (i - 65) + 2;
        }
        CHAR_MAP[1][32] = 1;
        for (int i2 = 97; i2 <= 122; i2++) {
            CHAR_MAP[1][i2] = (i2 - 97) + 2;
        }
        CHAR_MAP[2][32] = 1;
        for (int i3 = 48; i3 <= 57; i3++) {
            CHAR_MAP[2][i3] = (i3 - 48) + 2;
        }
        int[][] iArr = CHAR_MAP;
        iArr[2][44] = 12;
        iArr[2][46] = 13;
        int[] iArr2 = {0, 32, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 27, 28, 29, 30, 31, 64, 92, 94, 95, 96, 124, 126, 127};
        for (int i4 = 0; i4 < iArr2.length; i4++) {
            CHAR_MAP[3][iArr2[i4]] = i4;
        }
        int[] iArr3 = {0, 13, 0, 0, 0, 0, 33, 39, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 58, 59, 60, 61, 62, 63, 91, 93, 123, 125};
        for (int i5 = 0; i5 < iArr3.length; i5++) {
            if (iArr3[i5] > 0) {
                CHAR_MAP[4][iArr3[i5]] = i5;
            }
        }
        SHIFT_TABLE = (int[][]) Array.newInstance((Class<?>) int.class, 6, 6);
        for (int[] iArr4 : SHIFT_TABLE) {
            Arrays.fill(iArr4, -1);
        }
        int[][] iArr5 = SHIFT_TABLE;
        iArr5[0][4] = 0;
        iArr5[1][4] = 0;
        iArr5[1][0] = 28;
        iArr5[3][4] = 0;
        iArr5[2][4] = 0;
        iArr5[2][0] = 15;
    }

    public HighLevelEncoder(byte[] bArr) {
        this.text = bArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.google.zxing.common.BitArray encode() {
        /*
            r8 = this;
            com.google.zxing.aztec.encoder.State r0 = com.google.zxing.aztec.encoder.State.INITIAL_STATE
            java.util.List r0 = java.util.Collections.singletonList(r0)
            r1 = 0
            r2 = r0
            r0 = 0
        L9:
            byte[] r3 = r8.text
            int r4 = r3.length
            if (r0 < r4) goto L20
            com.google.zxing.aztec.encoder.HighLevelEncoder$1 r0 = new com.google.zxing.aztec.encoder.HighLevelEncoder$1
            r0.<init>()
            java.lang.Object r0 = java.util.Collections.min(r2, r0)
            com.google.zxing.aztec.encoder.State r0 = (com.google.zxing.aztec.encoder.State) r0
            byte[] r1 = r8.text
            com.google.zxing.common.BitArray r0 = r0.toBitArray(r1)
            return r0
        L20:
            int r4 = r0 + 1
            int r5 = r3.length
            if (r4 >= r5) goto L28
            r3 = r3[r4]
            goto L29
        L28:
            r3 = 0
        L29:
            byte[] r5 = r8.text
            r5 = r5[r0]
            r6 = 13
            if (r5 == r6) goto L4d
            r6 = 44
            r7 = 32
            if (r5 == r6) goto L49
            r6 = 46
            if (r5 == r6) goto L45
            r6 = 58
            if (r5 == r6) goto L41
        L3f:
            r3 = 0
            goto L52
        L41:
            if (r3 != r7) goto L3f
            r3 = 5
            goto L52
        L45:
            if (r3 != r7) goto L3f
            r3 = 3
            goto L52
        L49:
            if (r3 != r7) goto L3f
            r3 = 4
            goto L52
        L4d:
            r5 = 10
            if (r3 != r5) goto L3f
            r3 = 2
        L52:
            if (r3 <= 0) goto L5b
            java.util.Collection r0 = updateStateListForPair(r2, r0, r3)
            r2 = r0
            r0 = r4
            goto L5f
        L5b:
            java.util.Collection r2 = r8.updateStateListForChar(r2, r0)
        L5f:
            int r0 = r0 + 1
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.aztec.encoder.HighLevelEncoder.encode():com.google.zxing.common.BitArray");
    }

    private Collection<State> updateStateListForChar(Iterable<State> iterable, int i) {
        LinkedList linkedList = new LinkedList();
        Iterator<State> it = iterable.iterator();
        while (it.hasNext()) {
            updateStateForChar(it.next(), i, linkedList);
        }
        return simplifyStates(linkedList);
    }

    private void updateStateForChar(State state, int i, Collection<State> collection) {
        char c = (char) (this.text[i] & 255);
        boolean z = CHAR_MAP[state.getMode()][c] > 0;
        State stateEndBinaryShift = null;
        for (int i2 = 0; i2 <= 4; i2++) {
            int i3 = CHAR_MAP[i2][c];
            if (i3 > 0) {
                if (stateEndBinaryShift == null) {
                    stateEndBinaryShift = state.endBinaryShift(i);
                }
                if (!z || i2 == state.getMode() || i2 == 2) {
                    collection.add(stateEndBinaryShift.latchAndAppend(i2, i3));
                }
                if (!z && SHIFT_TABLE[state.getMode()][i2] >= 0) {
                    collection.add(stateEndBinaryShift.shiftAndAppend(i2, i3));
                }
            }
        }
        if (state.getBinaryShiftByteCount() > 0 || CHAR_MAP[state.getMode()][c] == 0) {
            collection.add(state.addBinaryShiftChar(i));
        }
    }

    private static Collection<State> updateStateListForPair(Iterable<State> iterable, int i, int i2) {
        LinkedList linkedList = new LinkedList();
        Iterator<State> it = iterable.iterator();
        while (it.hasNext()) {
            updateStateForPair(it.next(), i, i2, linkedList);
        }
        return simplifyStates(linkedList);
    }

    private static void updateStateForPair(State state, int i, int i2, Collection<State> collection) {
        State stateEndBinaryShift = state.endBinaryShift(i);
        collection.add(stateEndBinaryShift.latchAndAppend(4, i2));
        if (state.getMode() != 4) {
            collection.add(stateEndBinaryShift.shiftAndAppend(4, i2));
        }
        if (i2 == 3 || i2 == 4) {
            collection.add(stateEndBinaryShift.latchAndAppend(2, 16 - i2).latchAndAppend(2, 1));
        }
        if (state.getBinaryShiftByteCount() > 0) {
            collection.add(state.addBinaryShiftChar(i).addBinaryShiftChar(i + 1));
        }
    }

    private static Collection<State> simplifyStates(Iterable<State> iterable) {
        LinkedList linkedList = new LinkedList();
        for (State state : iterable) {
            boolean z = true;
            Iterator it = linkedList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                State state2 = (State) it.next();
                if (state2.isBetterThanOrEqualTo(state)) {
                    z = false;
                    break;
                }
                if (state.isBetterThanOrEqualTo(state2)) {
                    it.remove();
                }
            }
            if (z) {
                linkedList.add(state);
            }
        }
        return linkedList;
    }
}
