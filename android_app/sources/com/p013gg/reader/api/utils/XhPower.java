package com.p013gg.reader.api.utils;

import java.io.FileWriter;

/* loaded from: classes.dex */
public class XhPower {
    public static void setPower(boolean z) {
        try {
            if (z) {
                FileWriter fileWriter = new FileWriter("/sys/cgp_ctrl/cgp_on");
                fileWriter.write("1");
                fileWriter.close();
                FileWriter fileWriter2 = new FileWriter("/sys/cgp_ctrl/cgp_switch_vbat");
                fileWriter2.write("1");
                fileWriter2.close();
                FileWriter fileWriter3 = new FileWriter("/sys/cgp_ctrl/cgp_uart_switch");
                fileWriter3.write("0");
                fileWriter3.close();
                FileWriter fileWriter4 = new FileWriter("/sys/cgp_ctrl/cgp_vbus_5v");
                fileWriter4.write("1");
                fileWriter4.close();
            } else {
                FileWriter fileWriter5 = new FileWriter("/sys/cgp_ctrl/cgp_on");
                fileWriter5.write("0");
                fileWriter5.close();
                FileWriter fileWriter6 = new FileWriter("/sys/cgp_ctrl/cgp_switch_vbat");
                fileWriter6.write("0");
                fileWriter6.close();
                FileWriter fileWriter7 = new FileWriter("/sys/cgp_ctrl/cgp_vbus_5v");
                fileWriter7.write("0");
                fileWriter7.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
