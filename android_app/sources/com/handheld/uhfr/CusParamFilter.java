package com.handheld.uhfr;

import com.p013gg.reader.api.protocol.p014gx.ParamEpcFilter;

/* loaded from: classes.dex */
public class CusParamFilter {
    ParamEpcFilter filter;
    boolean matching;

    public CusParamFilter(ParamEpcFilter paramEpcFilter, boolean z) {
        this.filter = paramEpcFilter;
        this.matching = z;
    }

    public ParamEpcFilter getFilter() {
        return this.filter;
    }

    public void setFilter(ParamEpcFilter paramEpcFilter) {
        this.filter = paramEpcFilter;
    }

    public boolean isMatching() {
        return this.matching;
    }

    public void setMatching(boolean z) {
        this.matching = z;
    }

    public String toString() {
        return "CusParamFilter{filter=" + this.filter + ", matching=" + this.matching + '}';
    }
}
