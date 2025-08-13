package jxl.read.biff;

import common.Logger;
import java.util.ArrayList;
import java.util.Iterator;
import jxl.WorkbookSettings;
import jxl.biff.BaseCompoundFile;
import jxl.biff.IntegerHelper;

/* loaded from: classes2.dex */
public final class CompoundFile extends BaseCompoundFile {
    static /* synthetic */ Class class$jxl$read$biff$CompoundFile;
    private static Logger logger;
    private int[] bigBlockChain;
    private int[] bigBlockDepotBlocks;
    private byte[] data;
    private int extensionBlock;
    private int numBigBlockDepotBlocks;
    private int numExtensionBlocks;
    private ArrayList propertySets;
    private byte[] rootEntry;
    private BaseCompoundFile.PropertyStorage rootEntryPropertyStorage;
    private int rootStartBlock;
    private int sbdStartBlock;
    private WorkbookSettings settings;
    private int[] smallBlockChain;

    static {
        Class clsClass$ = class$jxl$read$biff$CompoundFile;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.read.biff.CompoundFile");
            class$jxl$read$biff$CompoundFile = clsClass$;
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

    public CompoundFile(byte[] bArr, WorkbookSettings workbookSettings) throws BiffException {
        int i;
        this.data = bArr;
        this.settings = workbookSettings;
        int i2 = 0;
        for (int i3 = 0; i3 < IDENTIFIER.length; i3++) {
            if (this.data[i3] != IDENTIFIER[i3]) {
                throw new BiffException(BiffException.unrecognizedOLEFile);
            }
        }
        this.propertySets = new ArrayList();
        byte[] bArr2 = this.data;
        this.numBigBlockDepotBlocks = IntegerHelper.getInt(bArr2[44], bArr2[45], bArr2[46], bArr2[47]);
        byte[] bArr3 = this.data;
        this.sbdStartBlock = IntegerHelper.getInt(bArr3[60], bArr3[61], bArr3[62], bArr3[63]);
        byte[] bArr4 = this.data;
        this.rootStartBlock = IntegerHelper.getInt(bArr4[48], bArr4[49], bArr4[50], bArr4[51]);
        byte[] bArr5 = this.data;
        this.extensionBlock = IntegerHelper.getInt(bArr5[68], bArr5[69], bArr5[70], bArr5[71]);
        byte[] bArr6 = this.data;
        this.numExtensionBlocks = IntegerHelper.getInt(bArr6[72], bArr6[73], bArr6[74], bArr6[75]);
        int i4 = this.numBigBlockDepotBlocks;
        this.bigBlockDepotBlocks = new int[i4];
        i4 = this.numExtensionBlocks != 0 ? 109 : i4;
        int i5 = 76;
        for (int i6 = 0; i6 < i4; i6++) {
            this.bigBlockDepotBlocks[i6] = IntegerHelper.getInt(bArr[i5], bArr[i5 + 1], bArr[i5 + 2], bArr[i5 + 3]);
            i5 += 4;
        }
        while (i2 < this.numExtensionBlocks) {
            int i7 = (this.extensionBlock + 1) * 512;
            int iMin = Math.min(this.numBigBlockDepotBlocks - i4, 127);
            int i8 = i7;
            int i9 = i4;
            while (true) {
                i = i4 + iMin;
                if (i9 >= i) {
                    break;
                }
                this.bigBlockDepotBlocks[i9] = IntegerHelper.getInt(bArr[i8], bArr[i8 + 1], bArr[i8 + 2], bArr[i8 + 3]);
                i8 += 4;
                i9++;
            }
            if (i < this.numBigBlockDepotBlocks) {
                this.extensionBlock = IntegerHelper.getInt(bArr[i8], bArr[i8 + 1], bArr[i8 + 2], bArr[i8 + 3]);
            }
            i2++;
            i4 = i;
        }
        readBigBlockDepot();
        readSmallBlockDepot();
        this.rootEntry = readData(this.rootStartBlock);
        readPropertySets();
    }

    private void readBigBlockDepot() {
        this.bigBlockChain = new int[(this.numBigBlockDepotBlocks * 512) / 4];
        int i = 0;
        int i2 = 0;
        while (i < this.numBigBlockDepotBlocks) {
            int i3 = (this.bigBlockDepotBlocks[i] + 1) * 512;
            int i4 = i2;
            for (int i5 = 0; i5 < 128; i5++) {
                int[] iArr = this.bigBlockChain;
                byte[] bArr = this.data;
                iArr[i4] = IntegerHelper.getInt(bArr[i3], bArr[i3 + 1], bArr[i3 + 2], bArr[i3 + 3]);
                i3 += 4;
                i4++;
            }
            i++;
            i2 = i4;
        }
    }

    private void readSmallBlockDepot() {
        int i = this.sbdStartBlock;
        this.smallBlockChain = new int[0];
        if (i == -1) {
            logger.warn("invalid small block depot number");
            return;
        }
        int i2 = 0;
        while (i != -2) {
            int[] iArr = this.smallBlockChain;
            this.smallBlockChain = new int[iArr.length + 128];
            System.arraycopy(iArr, 0, this.smallBlockChain, 0, iArr.length);
            int i3 = (i + 1) * 512;
            int i4 = i2;
            for (int i5 = 0; i5 < 128; i5++) {
                int[] iArr2 = this.smallBlockChain;
                byte[] bArr = this.data;
                iArr2[i4] = IntegerHelper.getInt(bArr[i3], bArr[i3 + 1], bArr[i3 + 2], bArr[i3 + 3]);
                i3 += 4;
                i4++;
            }
            i = this.bigBlockChain[i];
            i2 = i4;
        }
    }

    private void readPropertySets() {
        int i = 0;
        while (true) {
            byte[] bArr = this.rootEntry;
            if (i >= bArr.length) {
                break;
            }
            byte[] bArr2 = new byte[128];
            System.arraycopy(bArr, i, bArr2, 0, bArr2.length);
            BaseCompoundFile.PropertyStorage propertyStorage = new BaseCompoundFile.PropertyStorage(bArr2);
            if (propertyStorage.name == null || propertyStorage.name.length() == 0) {
                if (propertyStorage.type == 5) {
                    propertyStorage.name = BaseCompoundFile.ROOT_ENTRY_NAME;
                    Logger logger2 = logger;
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Property storage name for ");
                    stringBuffer.append(propertyStorage.type);
                    stringBuffer.append(" is empty - setting to ");
                    stringBuffer.append(BaseCompoundFile.ROOT_ENTRY_NAME);
                    logger2.warn(stringBuffer.toString());
                } else if (propertyStorage.size != 0) {
                    Logger logger3 = logger;
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("Property storage type ");
                    stringBuffer2.append(propertyStorage.type);
                    stringBuffer2.append(" is non-empty and has no associated name");
                    logger3.warn(stringBuffer2.toString());
                }
            }
            this.propertySets.add(propertyStorage);
            if (propertyStorage.name.equalsIgnoreCase(BaseCompoundFile.ROOT_ENTRY_NAME)) {
                this.rootEntryPropertyStorage = propertyStorage;
            }
            i += 128;
        }
        if (this.rootEntryPropertyStorage == null) {
            this.rootEntryPropertyStorage = (BaseCompoundFile.PropertyStorage) this.propertySets.get(0);
        }
    }

    public byte[] getStream(String str) throws BiffException {
        BaseCompoundFile.PropertyStorage propertyStorageFindPropertyStorage = findPropertyStorage(str, this.rootEntryPropertyStorage);
        if (propertyStorageFindPropertyStorage == null) {
            propertyStorageFindPropertyStorage = getPropertyStorage(str);
        }
        if (propertyStorageFindPropertyStorage.size >= 4096 || str.equalsIgnoreCase(BaseCompoundFile.ROOT_ENTRY_NAME)) {
            return getBigBlockStream(propertyStorageFindPropertyStorage);
        }
        return getSmallBlockStream(propertyStorageFindPropertyStorage);
    }

    public byte[] getStream(int i) throws BiffException {
        BaseCompoundFile.PropertyStorage propertyStorage = getPropertyStorage(i);
        if (propertyStorage.size >= 4096 || propertyStorage.name.equalsIgnoreCase(BaseCompoundFile.ROOT_ENTRY_NAME)) {
            return getBigBlockStream(propertyStorage);
        }
        return getSmallBlockStream(propertyStorage);
    }

    public BaseCompoundFile.PropertyStorage findPropertyStorage(String str) {
        return findPropertyStorage(str, this.rootEntryPropertyStorage);
    }

    private BaseCompoundFile.PropertyStorage findPropertyStorage(String str, BaseCompoundFile.PropertyStorage propertyStorage) {
        if (propertyStorage.child == -1) {
            return null;
        }
        BaseCompoundFile.PropertyStorage propertyStorage2 = getPropertyStorage(propertyStorage.child);
        if (propertyStorage2.name.equalsIgnoreCase(str)) {
            return propertyStorage2;
        }
        BaseCompoundFile.PropertyStorage propertyStorage3 = propertyStorage2;
        while (propertyStorage3.previous != -1) {
            propertyStorage3 = getPropertyStorage(propertyStorage3.previous);
            if (propertyStorage3.name.equalsIgnoreCase(str)) {
                return propertyStorage3;
            }
        }
        BaseCompoundFile.PropertyStorage propertyStorage4 = propertyStorage2;
        while (propertyStorage4.next != -1) {
            propertyStorage4 = getPropertyStorage(propertyStorage4.next);
            if (propertyStorage4.name.equalsIgnoreCase(str)) {
                return propertyStorage4;
            }
        }
        return findPropertyStorage(str, propertyStorage2);
    }

    private BaseCompoundFile.PropertyStorage getPropertyStorage(String str) throws BiffException {
        Iterator it = this.propertySets.iterator();
        BaseCompoundFile.PropertyStorage propertyStorage = null;
        boolean z = false;
        boolean z2 = false;
        while (it.hasNext()) {
            BaseCompoundFile.PropertyStorage propertyStorage2 = (BaseCompoundFile.PropertyStorage) it.next();
            if (propertyStorage2.name.equalsIgnoreCase(str)) {
                z = z2;
                propertyStorage = propertyStorage2;
                z2 = true;
            }
        }
        if (z) {
            Logger logger2 = logger;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("found multiple copies of property set ");
            stringBuffer.append(str);
            logger2.warn(stringBuffer.toString());
        }
        if (z2) {
            return propertyStorage;
        }
        throw new BiffException(BiffException.streamNotFound);
    }

    private BaseCompoundFile.PropertyStorage getPropertyStorage(int i) {
        return (BaseCompoundFile.PropertyStorage) this.propertySets.get(i);
    }

    private byte[] getBigBlockStream(BaseCompoundFile.PropertyStorage propertyStorage) {
        int i = propertyStorage.size / 512;
        if (propertyStorage.size % 512 != 0) {
            i++;
        }
        byte[] bArr = new byte[i * 512];
        int i2 = propertyStorage.startBlock;
        int i3 = 0;
        while (i2 != -2 && i3 < i) {
            System.arraycopy(this.data, (i2 + 1) * 512, bArr, i3 * 512, 512);
            i3++;
            i2 = this.bigBlockChain[i2];
        }
        if (i2 != -2 && i3 == i) {
            logger.warn("Property storage size inconsistent with block chain.");
        }
        return bArr;
    }

    private byte[] getSmallBlockStream(BaseCompoundFile.PropertyStorage propertyStorage) throws BiffException {
        byte[] data = readData(this.rootEntryPropertyStorage.startBlock);
        byte[] bArr = new byte[0];
        int i = propertyStorage.startBlock;
        while (i != -2) {
            byte[] bArr2 = new byte[bArr.length + 64];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            System.arraycopy(data, i * 64, bArr2, bArr.length, 64);
            int i2 = this.smallBlockChain[i];
            if (i2 == -1) {
                Logger logger2 = logger;
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Incorrect terminator for small block stream ");
                stringBuffer.append(propertyStorage.name);
                logger2.warn(stringBuffer.toString());
                i = -2;
            } else {
                i = i2;
            }
            bArr = bArr2;
        }
        return bArr;
    }

    private byte[] readData(int i) throws BiffException {
        byte[] bArr = new byte[0];
        while (i != -2) {
            byte[] bArr2 = new byte[bArr.length + 512];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            System.arraycopy(this.data, (i + 1) * 512, bArr2, bArr.length, 512);
            int[] iArr = this.bigBlockChain;
            if (iArr[i] == i) {
                throw new BiffException(BiffException.corruptFileFormat);
            }
            i = iArr[i];
            bArr = bArr2;
        }
        return bArr;
    }

    public int getNumberOfPropertySets() {
        return this.propertySets.size();
    }

    public BaseCompoundFile.PropertyStorage getPropertySet(int i) {
        return getPropertyStorage(i);
    }
}
