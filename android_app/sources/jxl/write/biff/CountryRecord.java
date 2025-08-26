package jxl.write.biff;

import jxl.biff.CountryCode;
import jxl.biff.IntegerHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class CountryRecord extends WritableRecordData {
    private int language;
    private int regionalSettings;

    public CountryRecord(CountryCode countryCode, CountryCode countryCode2) {
        super(Type.COUNTRY);
        this.language = countryCode.getValue();
        this.regionalSettings = countryCode2.getValue();
    }

    public CountryRecord(jxl.read.biff.CountryRecord countryRecord) {
        super(Type.COUNTRY);
        this.language = countryRecord.getLanguageCode();
        this.regionalSettings = countryRecord.getRegionalSettingsCode();
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        byte[] bArr = new byte[4];
        IntegerHelper.getTwoBytes(this.language, bArr, 0);
        IntegerHelper.getTwoBytes(this.regionalSettings, bArr, 2);
        return bArr;
    }
}
