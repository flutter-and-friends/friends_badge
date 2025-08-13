package jxl.biff.drawing;

import common.Logger;
import java.util.ArrayList;
import java.util.Iterator;
import jxl.biff.IntegerHelper;
import jxl.biff.StringHelper;

/* loaded from: classes2.dex */
class Opt extends EscherAtom {
    static /* synthetic */ Class class$jxl$biff$drawing$Opt;
    private static Logger logger;
    private byte[] data;
    private int numProperties;
    private ArrayList properties;

    static {
        Class clsClass$ = class$jxl$biff$drawing$Opt;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.drawing.Opt");
            class$jxl$biff$drawing$Opt = clsClass$;
        }
        logger = Logger.getLogger(clsClass$);
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    static final class Property {
        boolean blipId;
        boolean complex;

        /* renamed from: id */
        int f1138id;
        String stringValue;
        int value;

        public Property(int i, boolean z, boolean z2, int i2) {
            this.f1138id = i;
            this.blipId = z;
            this.complex = z2;
            this.value = i2;
        }

        public Property(int i, boolean z, boolean z2, int i2, String str) {
            this.f1138id = i;
            this.blipId = z;
            this.complex = z2;
            this.value = i2;
            this.stringValue = str;
        }
    }

    public Opt(EscherRecordData escherRecordData) {
        super(escherRecordData);
        this.numProperties = getInstance();
        readProperties();
    }

    private void readProperties() {
        this.properties = new ArrayList();
        byte[] bytes = getBytes();
        int i = 0;
        for (int i2 = 0; i2 < this.numProperties; i2++) {
            int i3 = IntegerHelper.getInt(bytes[i], bytes[i + 1]);
            int i4 = i3 & 16383;
            int i5 = IntegerHelper.getInt(bytes[i + 2], bytes[i + 3], bytes[i + 4], bytes[i + 5]);
            boolean z = true;
            boolean z2 = (i3 & 16384) != 0;
            if ((i3 & 32768) == 0) {
                z = false;
            }
            i += 6;
            this.properties.add(new Property(i4, z2, z, i5));
        }
        Iterator it = this.properties.iterator();
        while (it.hasNext()) {
            Property property = (Property) it.next();
            if (property.complex) {
                property.stringValue = StringHelper.getUnicodeString(bytes, property.value / 2, i);
                i += property.value;
            }
        }
    }

    public Opt() {
        super(EscherRecordType.OPT);
        this.properties = new ArrayList();
        setVersion(3);
    }

    @Override // jxl.biff.drawing.EscherAtom, jxl.biff.drawing.EscherRecord
    byte[] getData() {
        this.numProperties = this.properties.size();
        setInstance(this.numProperties);
        this.data = new byte[this.numProperties * 6];
        Iterator it = this.properties.iterator();
        int i = 0;
        while (it.hasNext()) {
            Property property = (Property) it.next();
            int i2 = property.f1138id & 16383;
            if (property.blipId) {
                i2 |= 16384;
            }
            if (property.complex) {
                i2 |= 32768;
            }
            IntegerHelper.getTwoBytes(i2, this.data, i);
            IntegerHelper.getFourBytes(property.value, this.data, i + 2);
            i += 6;
        }
        Iterator it2 = this.properties.iterator();
        while (it2.hasNext()) {
            Property property2 = (Property) it2.next();
            if (property2.complex && property2.stringValue != null) {
                byte[] bArr = new byte[this.data.length + (property2.stringValue.length() * 2)];
                byte[] bArr2 = this.data;
                System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
                StringHelper.getUnicodeBytes(property2.stringValue, bArr, this.data.length);
                this.data = bArr;
            }
        }
        return setHeaderData(this.data);
    }

    void addProperty(int i, boolean z, boolean z2, int i2) {
        this.properties.add(new Property(i, z, z2, i2));
    }

    void addProperty(int i, boolean z, boolean z2, int i2, String str) {
        this.properties.add(new Property(i, z, z2, i2, str));
    }

    Property getProperty(int i) {
        Iterator it = this.properties.iterator();
        boolean z = false;
        Property property = null;
        while (it.hasNext() && !z) {
            property = (Property) it.next();
            if (property.f1138id == i) {
                z = true;
            }
        }
        if (z) {
            return property;
        }
        return null;
    }
}
