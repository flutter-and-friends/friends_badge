package com.google.zxing.client.result;

import com.google.zxing.Result;

/* loaded from: classes.dex */
public final class AddressBookDoCoMoResultParser extends AbstractDoCoMoResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    public AddressBookParsedResult parse(Result result) {
        String[] strArrMatchDoCoMoPrefixedField;
        String massagedText = getMassagedText(result);
        if (!massagedText.startsWith("MECARD:") || (strArrMatchDoCoMoPrefixedField = matchDoCoMoPrefixedField("N:", massagedText, true)) == null) {
            return null;
        }
        String name = parseName(strArrMatchDoCoMoPrefixedField[0]);
        String strMatchSingleDoCoMoPrefixedField = matchSingleDoCoMoPrefixedField("SOUND:", massagedText, true);
        String[] strArrMatchDoCoMoPrefixedField2 = matchDoCoMoPrefixedField("TEL:", massagedText, true);
        String[] strArrMatchDoCoMoPrefixedField3 = matchDoCoMoPrefixedField("EMAIL:", massagedText, true);
        String strMatchSingleDoCoMoPrefixedField2 = matchSingleDoCoMoPrefixedField("NOTE:", massagedText, false);
        String[] strArrMatchDoCoMoPrefixedField4 = matchDoCoMoPrefixedField("ADR:", massagedText, true);
        String strMatchSingleDoCoMoPrefixedField3 = matchSingleDoCoMoPrefixedField("BDAY:", massagedText, true);
        return new AddressBookParsedResult(maybeWrap(name), null, strMatchSingleDoCoMoPrefixedField, strArrMatchDoCoMoPrefixedField2, null, strArrMatchDoCoMoPrefixedField3, null, null, strMatchSingleDoCoMoPrefixedField2, strArrMatchDoCoMoPrefixedField4, null, matchSingleDoCoMoPrefixedField("ORG:", massagedText, true), !isStringOfDigits(strMatchSingleDoCoMoPrefixedField3, 8) ? null : strMatchSingleDoCoMoPrefixedField3, null, matchDoCoMoPrefixedField("URL:", massagedText, true), null);
    }

    private static String parseName(String str) {
        int iIndexOf = str.indexOf(44);
        if (iIndexOf < 0) {
            return str;
        }
        return String.valueOf(str.substring(iIndexOf + 1)) + ' ' + str.substring(0, iIndexOf);
    }
}
