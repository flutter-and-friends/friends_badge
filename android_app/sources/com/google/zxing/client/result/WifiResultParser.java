package com.google.zxing.client.result;

import com.google.zxing.Result;

/* loaded from: classes.dex */
public final class WifiResultParser extends ResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    public WifiParsedResult parse(Result result) {
        String strMatchSinglePrefixedField;
        String massagedText = getMassagedText(result);
        if (!massagedText.startsWith("WIFI:") || (strMatchSinglePrefixedField = matchSinglePrefixedField("S:", massagedText, ';', false)) == null || strMatchSinglePrefixedField.isEmpty()) {
            return null;
        }
        String strMatchSinglePrefixedField2 = matchSinglePrefixedField("P:", massagedText, ';', false);
        String strMatchSinglePrefixedField3 = matchSinglePrefixedField("T:", massagedText, ';', false);
        if (strMatchSinglePrefixedField3 == null) {
            strMatchSinglePrefixedField3 = "nopass";
        }
        return new WifiParsedResult(strMatchSinglePrefixedField3, strMatchSinglePrefixedField, strMatchSinglePrefixedField2, Boolean.parseBoolean(matchSinglePrefixedField("H:", massagedText, ';', false)));
    }
}
