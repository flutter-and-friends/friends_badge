package jxl.biff.formula;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.lang.reflect.Array;
import jxl.biff.WorkbookMethods;

/* loaded from: classes2.dex */
class Yylex {
    private final int YYINITIAL;
    private final int YYSTRING;
    private final int YY_BOL;
    private final int YY_BUFFER_SIZE;
    private final int YY_END;
    private final int YY_EOF;
    private final int YY_E_INTERNAL;
    private final int YY_E_MATCH;
    private final int YY_F;
    private final int YY_NOT_ACCEPT;
    private final int YY_NO_ANCHOR;
    private final int YY_NO_STATE;
    private final int YY_START;
    private boolean emptyString;
    private ExternalSheet externalSheet;
    private WorkbookMethods nameTable;
    private int[] yy_acpt;
    private boolean yy_at_bol;
    private char[] yy_buffer;
    private int yy_buffer_end;
    private int yy_buffer_index;
    private int yy_buffer_read;
    private int yy_buffer_start;
    private int[] yy_cmap;
    private boolean yy_eof_done;
    private String[] yy_error_string;
    private boolean yy_last_was_cr;
    private int yy_lexical_state;
    private int[][] yy_nxt;
    private BufferedReader yy_reader;
    private int[] yy_rmap;
    private final int[] yy_state_dtrans;
    private int yychar;
    private int yyline;

    int getPos() {
        return this.yychar;
    }

    void setExternalSheet(ExternalSheet externalSheet) {
        this.externalSheet = externalSheet;
    }

    void setNameTable(WorkbookMethods workbookMethods) {
        this.nameTable = workbookMethods;
    }

    Yylex(Reader reader) {
        this();
        if (reader == null) {
            throw new Error("Error: Bad input stream initializer.");
        }
        this.yy_reader = new BufferedReader(reader);
    }

    Yylex(InputStream inputStream) {
        this();
        if (inputStream == null) {
            throw new Error("Error: Bad input stream initializer.");
        }
        this.yy_reader = new BufferedReader(new InputStreamReader(inputStream));
    }

    private Yylex() {
        this.YY_BUFFER_SIZE = 512;
        this.YY_F = -1;
        this.YY_NO_STATE = -1;
        this.YY_NOT_ACCEPT = 0;
        this.YY_START = 1;
        this.YY_END = 2;
        this.YY_NO_ANCHOR = 4;
        this.YY_BOL = 65536;
        this.YY_EOF = 65537;
        this.yy_eof_done = false;
        this.YYSTRING = 1;
        this.YYINITIAL = 0;
        this.yy_state_dtrans = new int[]{0, 32};
        this.yy_last_was_cr = false;
        this.YY_E_INTERNAL = 0;
        this.YY_E_MATCH = 1;
        this.yy_error_string = new String[]{"Error: Internal error.\n", "Error: Unmatched input.\n"};
        this.yy_acpt = new int[]{0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 4, 4, 4, 4, 4, 0, 4, 0, 4, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 0, 0, 4, 4, 4, 4};
        this.yy_cmap = unpackFromString(1, 65538, "14:8,26:3,14:21,26,15,37,29,11,14:2,13,27,28,3,1,8,2,10,4,34,9:9,16,14,7,6,5,36,14,22,12:2,31,20,21,12:2,32,12:2,23,35,30,12:3,18,24,17,19,33,12:4,14:4,25,14,12:26,14:65413,0:2")[0];
        this.yy_rmap = unpackFromString(1, 97, "0,1:5,2,1,3,1,4,5,1:8,6,1,7,8,9,10,11,12,10,1,13,14,15,1,16,17,18,1:2,19,20,10,21,22,7,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,9,45,46,47,48,49,50,51,11,52,53,54,55,56,57,58,59,60,61,62,14,63,64,65,66,67,68,69,70,71")[0];
        this.yy_nxt = unpackFromString(72, 38, "1,2,3,4,5,6,7,8,9,10,-1,34,11,40,-1:2,12,95,11:3,96,11:3,-1,13,14,15,42,11:4,10,11,-1,16,-1:44,17,-1:36,18,19,-1:40,10,44,-1:23,10,-1:12,20,-1,47,89,-1:2,48,49,89:8,35,-1,21,-1:2,89:4,20,89,-1:11,20,-1:2,35,-1:3,91,35:9,-1:4,35:4,20,35,-1:11,22,-1:24,22,-1:15,37,-1:4,37:8,-1:5,37:4,-1,37,-1:11,24,-1:24,24,-1:12,35,-1:2,41,-1:2,48,-1,41:8,35,-1,21,-1:2,41:4,35,41,-1:11,26,-1:24,26,-1:12,27,-1:6,83,-1:17,27,-1:15,38,-1:4,38:8,-1:5,38:4,-1,38,-1:11,31,-1:24,31,-1:3,1,39:36,33,-1:12,46,-1:4,46:8,-1:5,46:4,-1,46,-1:11,35,-1:2,35,-1:4,35:9,-1:4,35:6,-1:11,36,-1:6,91,-1:17,36,-1:4,39:36,-1:2,40:12,50,40:24,-1:18,51,-1:11,52,53,-1,54,-1:13,35,-1:2,41,-1:2,48,-1,41:3,25,41:4,35,-1,21,-1:2,41:4,35,41,-1:11,35,-1:2,41,-1:2,48,-1,41:3,28,41:4,35,-1,21,-1:2,41:4,35,41,-1:11,36,-1,47,55,-1:3,49,55:8,-1:5,55:4,36,55,-1:11,36,-1:24,36,-1:14,56,57,-1:4,57:8,-1:5,57:4,-1,57,-1:13,58,23,-1:4,23:8,-1:5,23:4,-1,23,-1:17,59,-1:42,60,-1:36,61,-1:2,62,-1:47,63,-1:27,64,-1:24,36,-1,47,-1:4,49,-1:17,36,-1:15,57,-1:4,57:8,-1:5,57:4,-1,57,-1:11,24,-1,67,68,-1:4,68:8,-1:5,68:4,24,68,-1:14,23,-1:4,23:8,-1:5,23:4,-1,23,-1:13,69,70,-1:4,70:8,-1:5,70:4,-1,70,-1:23,71,-1:39,92,-1:11,71,-1:37,72,-1:35,73,-1:27,74,-1:26,66,-1:4,66:8,-1:5,66:4,-1,66,-1:11,26,-1,75,76,-1:4,76:8,-1:5,76:4,26,76,-1:11,24,-1,67,-1:22,24,-1:15,70,-1:4,70:8,-1:5,70:4,-1,70,-1:11,27,-1,77,78,-1:3,79,78:8,-1:5,78:4,27,78,-1:17,29,-1:42,80,-1:21,81,-1:52,82,-1:27,26,-1,75,-1:22,26,-1:12,27,-1:24,27,-1:12,27,-1,77,-1:4,79,-1:17,27,-1:14,84,30,-1:4,30:8,-1:5,30:4,-1,30,-1:38,29,-1:35,71,-1:23,71,-1:28,85,86,-1:4,86:8,-1:5,86:4,-1,86,-1:14,30,-1:4,30:8,-1:5,30:4,-1,30,-1:14,86,-1:4,86:8,-1:5,86:4,-1,86,-1:11,31,-1,87,88,-1:4,88:8,-1:5,88:4,31,88,-1:11,31,-1,87,-1:22,31,-1:12,20,-1,47,41,-1:2,48,49,41:8,35,-1,21,-1:2,41:4,20,41,-1:11,35,-1:2,41,-1:2,48,-1,41:7,45,35,-1,21,-1:2,41:4,35,41,-1:13,65,66,-1:4,66:8,-1:5,66:4,-1,66,-1:25,71,-1:23,20,-1,47,41,-1:2,48,49,41:2,43,41:5,35,-1,21,-1:2,41:4,20,41,-1:11,20,-1,47,41,-1:2,48,49,41:6,90,41,35,-1,21,-1:2,41:4,20,41,-1:11,20,-1,47,89,-1:2,48,49,89,93,89:6,35,-1,21,-1:2,89:4,20,89,-1:11,20,-1,47,89,-1:2,48,49,89:5,94,89:2,35,-1,21,-1:2,89:4,20,89,-1:2");
        this.yy_buffer = new char[512];
        this.yy_buffer_read = 0;
        this.yy_buffer_index = 0;
        this.yy_buffer_start = 0;
        this.yy_buffer_end = 0;
        this.yychar = 0;
        this.yyline = 0;
        this.yy_at_bol = true;
        this.yy_lexical_state = 0;
    }

    private void yybegin(int i) {
        this.yy_lexical_state = i;
    }

    private int yy_advance() throws IOException {
        int i = this.yy_buffer_index;
        if (i < this.yy_buffer_read) {
            char[] cArr = this.yy_buffer;
            this.yy_buffer_index = i + 1;
            return cArr[i];
        }
        int i2 = this.yy_buffer_start;
        if (i2 != 0) {
            int i3 = 0;
            while (i2 < this.yy_buffer_read) {
                char[] cArr2 = this.yy_buffer;
                cArr2[i3] = cArr2[i2];
                i2++;
                i3++;
            }
            this.yy_buffer_end -= this.yy_buffer_start;
            this.yy_buffer_start = 0;
            this.yy_buffer_read = i3;
            this.yy_buffer_index = i3;
            BufferedReader bufferedReader = this.yy_reader;
            char[] cArr3 = this.yy_buffer;
            int i4 = this.yy_buffer_read;
            int i5 = bufferedReader.read(cArr3, i4, cArr3.length - i4);
            if (-1 == i5) {
                return 65537;
            }
            this.yy_buffer_read += i5;
        }
        while (true) {
            int i6 = this.yy_buffer_index;
            if (i6 >= this.yy_buffer_read) {
                char[] cArr4 = this.yy_buffer;
                if (i6 >= cArr4.length) {
                    this.yy_buffer = yy_double(cArr4);
                }
                BufferedReader bufferedReader2 = this.yy_reader;
                char[] cArr5 = this.yy_buffer;
                int i7 = this.yy_buffer_read;
                int i8 = bufferedReader2.read(cArr5, i7, cArr5.length - i7);
                if (-1 == i8) {
                    return 65537;
                }
                this.yy_buffer_read += i8;
            } else {
                char[] cArr6 = this.yy_buffer;
                this.yy_buffer_index = i6 + 1;
                return cArr6[i6];
            }
        }
    }

    private void yy_move_end() {
        int i = this.yy_buffer_end;
        if (i > this.yy_buffer_start && '\n' == this.yy_buffer[i - 1]) {
            this.yy_buffer_end = i - 1;
        }
        int i2 = this.yy_buffer_end;
        if (i2 <= this.yy_buffer_start || '\r' != this.yy_buffer[i2 - 1]) {
            return;
        }
        this.yy_buffer_end = i2 - 1;
    }

    private void yy_mark_start() {
        int i = this.yy_buffer_start;
        while (true) {
            int i2 = this.yy_buffer_index;
            if (i < i2) {
                if ('\n' == this.yy_buffer[i] && !this.yy_last_was_cr) {
                    this.yyline++;
                }
                if ('\r' == this.yy_buffer[i]) {
                    this.yyline++;
                    this.yy_last_was_cr = true;
                } else {
                    this.yy_last_was_cr = false;
                }
                i++;
            } else {
                this.yychar = (this.yychar + i2) - this.yy_buffer_start;
                this.yy_buffer_start = i2;
                return;
            }
        }
    }

    private void yy_mark_end() {
        this.yy_buffer_end = this.yy_buffer_index;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void yy_to_mark() {
        /*
            r5 = this;
            int r0 = r5.yy_buffer_end
            r5.yy_buffer_index = r0
            int r1 = r5.yy_buffer_start
            r2 = 1
            if (r0 <= r1) goto L2b
            r1 = 13
            char[] r3 = r5.yy_buffer
            int r4 = r0 + (-1)
            char r4 = r3[r4]
            if (r1 == r4) goto L2c
            r1 = 10
            int r4 = r0 + (-1)
            char r4 = r3[r4]
            if (r1 == r4) goto L2c
            r1 = 2028(0x7ec, float:2.842E-42)
            int r4 = r0 + (-1)
            char r4 = r3[r4]
            if (r1 == r4) goto L2c
            r1 = 2029(0x7ed, float:2.843E-42)
            int r0 = r0 - r2
            char r0 = r3[r0]
            if (r1 != r0) goto L2b
            goto L2c
        L2b:
            r2 = 0
        L2c:
            r5.yy_at_bol = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: jxl.biff.formula.Yylex.yy_to_mark():void");
    }

    private String yytext() {
        char[] cArr = this.yy_buffer;
        int i = this.yy_buffer_start;
        return new String(cArr, i, this.yy_buffer_end - i);
    }

    private int yylength() {
        return this.yy_buffer_end - this.yy_buffer_start;
    }

    private char[] yy_double(char[] cArr) {
        char[] cArr2 = new char[cArr.length * 2];
        for (int i = 0; i < cArr.length; i++) {
            cArr2[i] = cArr[i];
        }
        return cArr2;
    }

    private void yy_error(int i, boolean z) {
        System.out.print(this.yy_error_string[i]);
        System.out.flush();
        if (z) {
            throw new Error("Fatal Error.\n");
        }
    }

    private int[][] unpackFromString(int i, int i2, String str) throws NumberFormatException {
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) int.class, i, i2);
        String str2 = str;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i3 < i) {
            int i6 = i5;
            String strSubstring = str2;
            int i7 = i4;
            for (int i8 = 0; i8 < i2; i8++) {
                if (i7 != 0) {
                    iArr[i3][i8] = i6;
                    i7--;
                } else {
                    int iIndexOf = strSubstring.indexOf(44);
                    String strSubstring2 = iIndexOf == -1 ? strSubstring : strSubstring.substring(0, iIndexOf);
                    strSubstring = strSubstring.substring(iIndexOf + 1);
                    int iIndexOf2 = strSubstring2.indexOf(58);
                    if (iIndexOf2 == -1) {
                        iArr[i3][i8] = Integer.parseInt(strSubstring2);
                    } else {
                        int i9 = Integer.parseInt(strSubstring2.substring(iIndexOf2 + 1));
                        i6 = Integer.parseInt(strSubstring2.substring(0, iIndexOf2));
                        iArr[i3][i8] = i6;
                        i7 = i9 - 1;
                    }
                }
            }
            i3++;
            i4 = i7;
            str2 = strSubstring;
            i5 = i6;
        }
        return iArr;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Path cross not found for [B:9:0x001e, B:12:0x0025], limit reached: 192 */
    /* JADX WARN: Removed duplicated region for block: B:141:0x004e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0042 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:125:0x0205 -> B:5:0x0017). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public jxl.biff.formula.ParseItem yylex() throws jxl.biff.formula.FormulaException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 790
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: jxl.biff.formula.Yylex.yylex():jxl.biff.formula.ParseItem");
    }
}
