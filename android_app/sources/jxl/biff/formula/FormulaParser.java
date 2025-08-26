package jxl.biff.formula;

import common.Assert;
import common.Logger;
import jxl.Cell;
import jxl.WorkbookSettings;
import jxl.biff.WorkbookMethods;

/* loaded from: classes2.dex */
public class FormulaParser {
    static /* synthetic */ Class class$jxl$biff$formula$FormulaParser;
    private static final Logger logger;
    private Parser parser;

    static {
        Class clsClass$ = class$jxl$biff$formula$FormulaParser;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.formula.FormulaParser");
            class$jxl$biff$formula$FormulaParser = clsClass$;
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

    public FormulaParser(byte[] bArr, Cell cell, ExternalSheet externalSheet, WorkbookMethods workbookMethods, WorkbookSettings workbookSettings) throws FormulaException {
        if (externalSheet.getWorkbookBof() != null && !externalSheet.getWorkbookBof().isBiff8()) {
            throw new FormulaException(FormulaException.BIFF8_SUPPORTED);
        }
        Assert.verify(workbookMethods != null);
        this.parser = new TokenFormulaParser(bArr, cell, externalSheet, workbookMethods, workbookSettings);
    }

    public FormulaParser(String str, ExternalSheet externalSheet, WorkbookMethods workbookMethods, WorkbookSettings workbookSettings) {
        this.parser = new StringFormulaParser(str, externalSheet, workbookMethods, workbookSettings);
    }

    public void adjustRelativeCellReferences(int i, int i2) {
        this.parser.adjustRelativeCellReferences(i, i2);
    }

    public void parse() throws FormulaException {
        this.parser.parse();
    }

    public String getFormula() throws FormulaException {
        return this.parser.getFormula();
    }

    public byte[] getBytes() {
        return this.parser.getBytes();
    }

    public void columnInserted(int i, int i2, boolean z) {
        this.parser.columnInserted(i, i2, z);
    }

    public void columnRemoved(int i, int i2, boolean z) {
        this.parser.columnRemoved(i, i2, z);
    }

    public void rowInserted(int i, int i2, boolean z) {
        this.parser.rowInserted(i, i2, z);
    }

    public void rowRemoved(int i, int i2, boolean z) {
        this.parser.rowRemoved(i, i2, z);
    }

    public boolean handleImportedCellReferences() {
        return this.parser.handleImportedCellReferences();
    }
}
