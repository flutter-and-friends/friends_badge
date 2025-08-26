package jxl.biff;

import common.Assert;
import common.Logger;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import jxl.WorkbookSettings;
import jxl.biff.formula.ExternalSheet;
import jxl.write.biff.File;

/* loaded from: classes2.dex */
public class DataValidation {
    public static final int DEFAULT_OBJECT_ID = -1;
    static /* synthetic */ Class class$jxl$biff$DataValidation;
    private static Logger logger;
    private int comboBoxObjectId;
    private boolean copied;
    private ExternalSheet externalSheet;
    private DataValidityListRecord validityList;
    private ArrayList validitySettings;
    private WorkbookMethods workbook;
    private WorkbookSettings workbookSettings;

    static {
        Class clsClass$ = class$jxl$biff$DataValidation;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.DataValidation");
            class$jxl$biff$DataValidation = clsClass$;
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

    public DataValidation(DataValidityListRecord dataValidityListRecord) {
        this.validityList = dataValidityListRecord;
        this.validitySettings = new ArrayList(this.validityList.getNumberOfSettings());
        this.copied = false;
    }

    public DataValidation(int i, ExternalSheet externalSheet, WorkbookMethods workbookMethods, WorkbookSettings workbookSettings) {
        this.workbook = workbookMethods;
        this.externalSheet = externalSheet;
        this.workbookSettings = workbookSettings;
        this.validitySettings = new ArrayList();
        this.comboBoxObjectId = i;
        this.copied = false;
    }

    public DataValidation(DataValidation dataValidation, ExternalSheet externalSheet, WorkbookMethods workbookMethods, WorkbookSettings workbookSettings) {
        this.workbook = workbookMethods;
        this.externalSheet = externalSheet;
        this.workbookSettings = workbookSettings;
        this.copied = true;
        this.validityList = new DataValidityListRecord(dataValidation.getDataValidityList());
        this.validitySettings = new ArrayList();
        for (DataValiditySettingsRecord dataValiditySettingsRecord : dataValidation.getDataValiditySettings()) {
            this.validitySettings.add(new DataValiditySettingsRecord(dataValiditySettingsRecord, this.externalSheet, this.workbook, this.workbookSettings));
        }
    }

    public void add(DataValiditySettingsRecord dataValiditySettingsRecord) {
        this.validitySettings.add(dataValiditySettingsRecord);
        dataValiditySettingsRecord.setDataValidation(this);
        if (this.copied) {
            Assert.verify(this.validityList != null);
            this.validityList.dvAdded();
        }
    }

    public DataValidityListRecord getDataValidityList() {
        return this.validityList;
    }

    public DataValiditySettingsRecord[] getDataValiditySettings() {
        return (DataValiditySettingsRecord[]) this.validitySettings.toArray(new DataValiditySettingsRecord[0]);
    }

    public void write(File file) throws IOException {
        if (this.validityList == null) {
            this.validityList = new DataValidityListRecord(new DValParser(this.comboBoxObjectId, this.validitySettings.size()));
        }
        if (this.validityList.hasDVRecords()) {
            file.write(this.validityList);
            Iterator it = this.validitySettings.iterator();
            while (it.hasNext()) {
                file.write((DataValiditySettingsRecord) it.next());
            }
        }
    }

    public void insertRow(int i) {
        Iterator it = this.validitySettings.iterator();
        while (it.hasNext()) {
            ((DataValiditySettingsRecord) it.next()).insertRow(i);
        }
    }

    public void removeRow(int i) {
        Iterator it = this.validitySettings.iterator();
        while (it.hasNext()) {
            DataValiditySettingsRecord dataValiditySettingsRecord = (DataValiditySettingsRecord) it.next();
            if (dataValiditySettingsRecord.getFirstRow() == i && dataValiditySettingsRecord.getLastRow() == i) {
                it.remove();
                this.validityList.dvRemoved();
            } else {
                dataValiditySettingsRecord.removeRow(i);
            }
        }
    }

    public void insertColumn(int i) {
        Iterator it = this.validitySettings.iterator();
        while (it.hasNext()) {
            ((DataValiditySettingsRecord) it.next()).insertColumn(i);
        }
    }

    public void removeColumn(int i) {
        Iterator it = this.validitySettings.iterator();
        while (it.hasNext()) {
            DataValiditySettingsRecord dataValiditySettingsRecord = (DataValiditySettingsRecord) it.next();
            if (dataValiditySettingsRecord.getFirstColumn() == i && dataValiditySettingsRecord.getLastColumn() == i) {
                it.remove();
                this.validityList.dvRemoved();
            } else {
                dataValiditySettingsRecord.removeColumn(i);
            }
        }
    }

    public DataValiditySettingsRecord getDataValiditySettings(int i, int i2) {
        Iterator it = this.validitySettings.iterator();
        boolean z = false;
        DataValiditySettingsRecord dataValiditySettingsRecord = null;
        while (it.hasNext() && !z) {
            DataValiditySettingsRecord dataValiditySettingsRecord2 = (DataValiditySettingsRecord) it.next();
            if (dataValiditySettingsRecord2.getFirstColumn() == i && dataValiditySettingsRecord2.getFirstRow() == i2) {
                z = true;
                dataValiditySettingsRecord = dataValiditySettingsRecord2;
            }
        }
        return dataValiditySettingsRecord;
    }

    public int getComboBoxObjectId() {
        return this.comboBoxObjectId;
    }
}
