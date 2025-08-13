package jxl.demo;

import common.Logger;
import jxl.Cell;
import jxl.Range;
import jxl.Workbook;

/* loaded from: classes2.dex */
public class Demo {
    private static final int CSVFormat = 13;
    private static final int XMLFormat = 14;
    static /* synthetic */ Class class$jxl$demo$Demo;
    private static Logger logger;

    static {
        Class clsClass$ = class$jxl$demo$Demo;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.demo.Demo");
            class$jxl$demo$Demo = clsClass$;
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

    private static void displayHelp() {
        System.err.println("Command format:  Demo [-unicode] [-csv] [-hide] excelfile");
        System.err.println("                 Demo -xml [-format]  excelfile");
        System.err.println("                 Demo -readwrite|-rw excelfile output");
        System.err.println("                 Demo -biffdump | -bd | -wa | -write | -formulas | -features | -escher | -escherdg excelfile");
        System.err.println("                 Demo -ps excelfile [property] [output]");
        System.err.println("                 Demo -version | -logtest | -h | -help");
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0182 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0203 A[Catch: all -> 0x020d, TRY_ENTER, TryCatch #0 {all -> 0x020d, blocks: (B:98:0x0203, B:102:0x0212, B:104:0x021e, B:106:0x0235, B:108:0x024c, B:110:0x0263, B:112:0x0279, B:114:0x0288, B:116:0x0295, B:118:0x0299, B:119:0x029e, B:120:0x02a9, B:122:0x02b6, B:126:0x02c9, B:125:0x02c2), top: B:130:0x0201 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void main(java.lang.String[] r20) {
        /*
            Method dump skipped, instructions count: 730
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: jxl.demo.Demo.main(java.lang.String[]):void");
    }

    private static void findTest(Workbook workbook) {
        logger.info("Find test");
        Cell cellFindCellByName = workbook.findCellByName("named1");
        if (cellFindCellByName != null) {
            Logger logger2 = logger;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("named1 contents:  ");
            stringBuffer.append(cellFindCellByName.getContents());
            logger2.info(stringBuffer.toString());
        }
        Cell cellFindCellByName2 = workbook.findCellByName("named2");
        if (cellFindCellByName2 != null) {
            Logger logger3 = logger;
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("named2 contents:  ");
            stringBuffer2.append(cellFindCellByName2.getContents());
            logger3.info(stringBuffer2.toString());
        }
        Cell cellFindCellByName3 = workbook.findCellByName("namedrange");
        if (cellFindCellByName3 != null) {
            Logger logger4 = logger;
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append("named2 contents:  ");
            stringBuffer3.append(cellFindCellByName3.getContents());
            logger4.info(stringBuffer3.toString());
        }
        Range[] rangeArrFindByName = workbook.findByName("namedrange");
        if (rangeArrFindByName != null) {
            Cell topLeft = rangeArrFindByName[0].getTopLeft();
            Logger logger5 = logger;
            StringBuffer stringBuffer4 = new StringBuffer();
            stringBuffer4.append("namedrange top left contents:  ");
            stringBuffer4.append(topLeft.getContents());
            logger5.info(stringBuffer4.toString());
            Cell bottomRight = rangeArrFindByName[0].getBottomRight();
            Logger logger6 = logger;
            StringBuffer stringBuffer5 = new StringBuffer();
            stringBuffer5.append("namedrange bottom right contents:  ");
            stringBuffer5.append(bottomRight.getContents());
            logger6.info(stringBuffer5.toString());
        }
        Range[] rangeArrFindByName2 = workbook.findByName("nonadjacentrange");
        if (rangeArrFindByName2 != null) {
            for (int i = 0; i < rangeArrFindByName2.length; i++) {
                Cell topLeft2 = rangeArrFindByName2[i].getTopLeft();
                Logger logger7 = logger;
                StringBuffer stringBuffer6 = new StringBuffer();
                stringBuffer6.append("nonadjacent top left contents:  ");
                stringBuffer6.append(topLeft2.getContents());
                logger7.info(stringBuffer6.toString());
                Cell bottomRight2 = rangeArrFindByName2[i].getBottomRight();
                Logger logger8 = logger;
                StringBuffer stringBuffer7 = new StringBuffer();
                stringBuffer7.append("nonadjacent bottom right contents:  ");
                stringBuffer7.append(bottomRight2.getContents());
                logger8.info(stringBuffer7.toString());
            }
        }
        Range[] rangeArrFindByName3 = workbook.findByName("horizontalnonadjacentrange");
        if (rangeArrFindByName3 != null) {
            for (int i2 = 0; i2 < rangeArrFindByName3.length; i2++) {
                Cell topLeft3 = rangeArrFindByName3[i2].getTopLeft();
                Logger logger9 = logger;
                StringBuffer stringBuffer8 = new StringBuffer();
                stringBuffer8.append("horizontalnonadjacent top left contents:  ");
                stringBuffer8.append(topLeft3.getContents());
                logger9.info(stringBuffer8.toString());
                Cell bottomRight3 = rangeArrFindByName3[i2].getBottomRight();
                Logger logger10 = logger;
                StringBuffer stringBuffer9 = new StringBuffer();
                stringBuffer9.append("horizontalnonadjacent bottom right contents:  ");
                stringBuffer9.append(bottomRight3.getContents());
                logger10.info(stringBuffer9.toString());
            }
        }
    }
}
