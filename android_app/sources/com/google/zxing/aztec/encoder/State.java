package com.google.zxing.aztec.encoder;

import com.google.zxing.common.BitArray;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes.dex */
final class State {
    static final State INITIAL_STATE = new State(Token.EMPTY, 0, 0, 0);
    private final int binaryShiftByteCount;
    private final int bitCount;
    private final int mode;
    private final Token token;

    private State(Token token, int i, int i2, int i3) {
        this.token = token;
        this.mode = i;
        this.binaryShiftByteCount = i2;
        this.bitCount = i3;
    }

    int getMode() {
        return this.mode;
    }

    Token getToken() {
        return this.token;
    }

    int getBinaryShiftByteCount() {
        return this.binaryShiftByteCount;
    }

    int getBitCount() {
        return this.bitCount;
    }

    State latchAndAppend(int i, int i2) {
        int i3 = this.bitCount;
        Token tokenAdd = this.token;
        if (i != this.mode) {
            int i4 = HighLevelEncoder.LATCH_TABLE[this.mode][i];
            int i5 = 65535 & i4;
            int i6 = i4 >> 16;
            tokenAdd = tokenAdd.add(i5, i6);
            i3 += i6;
        }
        int i7 = i == 2 ? 4 : 5;
        return new State(tokenAdd.add(i2, i7), i, 0, i3 + i7);
    }

    State shiftAndAppend(int i, int i2) {
        Token token = this.token;
        int i3 = this.mode == 2 ? 4 : 5;
        return new State(token.add(HighLevelEncoder.SHIFT_TABLE[this.mode][i], i3).add(i2, 5), this.mode, 0, this.bitCount + i3 + 5);
    }

    State addBinaryShiftChar(int i) {
        Token tokenAdd = this.token;
        int i2 = this.mode;
        int i3 = this.bitCount;
        if (i2 == 4 || i2 == 2) {
            int i4 = HighLevelEncoder.LATCH_TABLE[i2][0];
            int i5 = 65535 & i4;
            int i6 = i4 >> 16;
            tokenAdd = tokenAdd.add(i5, i6);
            i3 += i6;
            i2 = 0;
        }
        int i7 = this.binaryShiftByteCount;
        State state = new State(tokenAdd, i2, this.binaryShiftByteCount + 1, i3 + ((i7 == 0 || i7 == 31) ? 18 : i7 == 62 ? 9 : 8));
        return state.binaryShiftByteCount == 2078 ? state.endBinaryShift(i + 1) : state;
    }

    State endBinaryShift(int i) {
        int i2 = this.binaryShiftByteCount;
        return i2 == 0 ? this : new State(this.token.addBinaryShift(i - i2, i2), this.mode, 0, this.bitCount);
    }

    boolean isBetterThanOrEqualTo(State state) {
        int i;
        int i2 = this.bitCount + (HighLevelEncoder.LATCH_TABLE[this.mode][state.mode] >> 16);
        int i3 = state.binaryShiftByteCount;
        if (i3 > 0 && ((i = this.binaryShiftByteCount) == 0 || i > i3)) {
            i2 += 10;
        }
        return i2 <= state.bitCount;
    }

    BitArray toBitArray(byte[] bArr) {
        LinkedList linkedList = new LinkedList();
        for (Token previous = endBinaryShift(bArr.length).token; previous != null; previous = previous.getPrevious()) {
            linkedList.addFirst(previous);
        }
        BitArray bitArray = new BitArray();
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            ((Token) it.next()).appendTo(bitArray, bArr);
        }
        return bitArray;
    }

    public String toString() {
        return String.format("%s bits=%d bytes=%d", HighLevelEncoder.MODE_NAMES[this.mode], Integer.valueOf(this.bitCount), Integer.valueOf(this.binaryShiftByteCount));
    }
}
