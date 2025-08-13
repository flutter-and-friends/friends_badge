package com.google.zxing.aztec.encoder;

import com.google.zxing.common.BitArray;

/* loaded from: classes.dex */
abstract class Token {
    static final Token EMPTY = new SimpleToken(null, 0, 0);
    private final Token previous;

    abstract void appendTo(BitArray bitArray, byte[] bArr);

    Token(Token token) {
        this.previous = token;
    }

    final Token getPrevious() {
        return this.previous;
    }

    final Token add(int i, int i2) {
        return new SimpleToken(this, i, i2);
    }

    final Token addBinaryShift(int i, int i2) {
        return new BinaryShiftToken(this, i, i2);
    }
}
