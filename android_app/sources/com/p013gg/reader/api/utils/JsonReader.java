package com.p013gg.reader.api.utils;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.text.CharacterIterator;
import java.text.StringCharacterIterator;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import kotlin.text.Typography;

/* loaded from: classes.dex */
public class JsonReader {
    public static final int CURRENT = 1;
    public static final int FIRST = 0;
    public static final int NEXT = 2;
    private StringBuffer buf = new StringBuffer();

    /* renamed from: c */
    private char f362c;

    /* renamed from: it */
    private CharacterIterator f363it;
    private Object token;
    private static final Object OBJECT_END = new Object();
    private static final Object ARRAY_END = new Object();
    private static final Object COLON = new Object();
    private static final Object COMMA = new Object();
    private static Map<Character, Character> escapes = new HashMap();

    static {
        Map<Character, Character> map = escapes;
        Character chValueOf = Character.valueOf(Typography.quote);
        map.put(chValueOf, chValueOf);
        escapes.put('\\', '\\');
        escapes.put('/', '/');
        escapes.put('b', '\b');
        escapes.put('f', '\f');
        escapes.put('n', '\n');
        escapes.put('r', '\r');
        escapes.put('t', '\t');
    }

    private char next() {
        this.f362c = this.f363it.next();
        return this.f362c;
    }

    private void skipWhiteSpace() {
        while (Character.isWhitespace(this.f362c)) {
            next();
        }
    }

    public Object read(CharacterIterator characterIterator, int i) {
        this.f363it = characterIterator;
        if (i == 0) {
            this.f362c = this.f363it.first();
        } else if (i == 1) {
            this.f362c = this.f363it.current();
        } else if (i == 2) {
            this.f362c = this.f363it.next();
        }
        return read();
    }

    public Object read(CharacterIterator characterIterator) {
        return read(characterIterator, 2);
    }

    public Object read(String str) {
        return read(new StringCharacterIterator(str), 0);
    }

    private Object read() {
        skipWhiteSpace();
        char c = this.f362c;
        next();
        if (c == '\"') {
            this.token = string();
        } else if (c == ',') {
            this.token = COMMA;
        } else if (c == ':') {
            this.token = COLON;
        } else if (c == '[') {
            this.token = array();
        } else if (c == ']') {
            this.token = ARRAY_END;
        } else if (c == 'f') {
            next();
            next();
            next();
            next();
            this.token = Boolean.FALSE;
        } else if (c == 'n') {
            next();
            next();
            next();
            this.token = null;
        } else if (c == 't') {
            next();
            next();
            next();
            this.token = Boolean.TRUE;
        } else if (c == '{') {
            this.token = object();
        } else if (c == '}') {
            this.token = OBJECT_END;
        } else {
            this.f362c = this.f363it.previous();
            if (Character.isDigit(this.f362c) || this.f362c == '-') {
                this.token = number();
            }
        }
        return this.token;
    }

    private Object object() {
        HashMap map = new HashMap();
        Object obj = read();
        while (this.token != OBJECT_END) {
            read();
            if (this.token != OBJECT_END) {
                map.put(obj, read());
                if (read() == COMMA) {
                    obj = read();
                }
            }
        }
        return map;
    }

    private Object array() {
        ArrayList arrayList = new ArrayList();
        Object obj = read();
        while (this.token != ARRAY_END) {
            arrayList.add(obj);
            if (read() == COMMA) {
                obj = read();
            }
        }
        return arrayList;
    }

    private Object number() {
        boolean z = false;
        this.buf.setLength(0);
        if (this.f362c == '-') {
            add();
        }
        int iAddDigits = addDigits() + 0;
        if (this.f362c == '.') {
            add();
            iAddDigits += addDigits();
            z = true;
        }
        char c = this.f362c;
        if (c == 'e' || c == 'E') {
            add();
            char c2 = this.f362c;
            if (c2 == '+' || c2 == '-') {
                add();
            }
            addDigits();
            z = true;
        }
        String string = this.buf.toString();
        return z ? iAddDigits < 17 ? Double.valueOf(string) : new BigDecimal(string) : iAddDigits < 19 ? Long.valueOf(string) : new BigInteger(string);
    }

    private int addDigits() {
        int i = 0;
        while (Character.isDigit(this.f362c)) {
            add();
            i++;
        }
        return i;
    }

    private Object string() {
        this.buf.setLength(0);
        while (true) {
            char c = this.f362c;
            if (c == '\"') {
                next();
                return this.buf.toString();
            }
            if (c == '\\') {
                next();
                char c2 = this.f362c;
                if (c2 == 'u') {
                    add(unicode());
                } else {
                    Character ch = escapes.get(Character.valueOf(c2));
                    if (ch != null) {
                        add(ch.charValue());
                    }
                }
            } else {
                add();
            }
        }
    }

    private void add(char c) {
        this.buf.append(c);
        next();
    }

    private void add() {
        add(this.f362c);
    }

    private char unicode() {
        int i = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            char next = next();
            switch (next) {
                case '0':
                case '1':
                case '2':
                case '3':
                case '4':
                case '5':
                case '6':
                case '7':
                case '8':
                case '9':
                    i = ((i << 4) + this.f362c) - 48;
                    break;
                default:
                    switch (next) {
                        case 'A':
                        case 'B':
                        case 'C':
                        case 'D':
                        case 'E':
                        case 'F':
                            i = ((i << 4) + this.f362c) - 75;
                            break;
                        default:
                            switch (next) {
                                case 'a':
                                case 'b':
                                case 'c':
                                case 'd':
                                case 'e':
                                case 'f':
                                    i = ((i << 4) + this.f362c) - 107;
                                    break;
                            }
                    }
            }
        }
        return (char) i;
    }

    public <T> T jsonToClass(String str, Class<T> cls) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        try {
            Map map = (Map) read(str);
            if (map.size() <= 0) {
                return null;
            }
            T tNewInstance = cls.newInstance();
            Field[] declaredFields = cls.getDeclaredFields();
            for (int i = 0; i < declaredFields.length; i++) {
                declaredFields[i].setAccessible(true);
                String name = declaredFields[i].getName();
                String strReplaceFirst = name.replaceFirst(name.substring(0, 1), name.substring(0, 1).toUpperCase());
                if (map.get(name).getClass().getName().equals("java.lang.String")) {
                    tNewInstance.getClass().getMethod("set" + strReplaceFirst, String.class).invoke(tNewInstance, map.get(name));
                }
                if (map.get(name).getClass().getName().equals("java.lang.Integer")) {
                    tNewInstance.getClass().getMethod("set" + strReplaceFirst, Integer.class).invoke(tNewInstance, map.get(name));
                }
                if (map.get(name).getClass().getName().equals("java.lang.Long")) {
                    tNewInstance.getClass().getMethod("set" + strReplaceFirst, Integer.TYPE).invoke(tNewInstance, Integer.valueOf(((Long) map.get(name)).intValue()));
                }
            }
            return tNewInstance;
        } catch (Exception unused) {
            return null;
        }
    }
}
