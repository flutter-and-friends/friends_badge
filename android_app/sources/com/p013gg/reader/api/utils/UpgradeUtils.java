package com.p013gg.reader.api.utils;

import com.p013gg.reader.api.dal.GClient;
import com.p013gg.reader.api.protocol.p014gx.MsgAppReset;
import com.p013gg.reader.api.protocol.p014gx.MsgUpgradeApp;
import com.p013gg.reader.api.protocol.p014gx.MsgUpgradeBaseband;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;

/* loaded from: classes.dex */
public class UpgradeUtils {
    public static void upgradeBase(File file, GClient gClient) throws Exception {
        if (file == null || !file.exists()) {
            throw new Exception("binFile not found!!!");
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
        byte[] bArr = new byte[256];
        MsgUpgradeBaseband msgUpgradeBaseband = new MsgUpgradeBaseband();
        msgUpgradeBaseband.setPacketNumber(0L);
        gClient.sendSynMsg(msgUpgradeBaseband);
        if (msgUpgradeBaseband.getRtCode() != 0) {
            gClient.sendSynMsg(msgUpgradeBaseband);
        }
        if (msgUpgradeBaseband.getRtCode() == 0) {
            long j = 1;
            while (bufferedInputStream.read(bArr) != -1) {
                msgUpgradeBaseband.setPacketNumber(Long.valueOf(j));
                msgUpgradeBaseband.setPacketContent(bArr);
                gClient.sendSynMsg(msgUpgradeBaseband);
                if (msgUpgradeBaseband.getRtCode() == 0 && msgUpgradeBaseband.getPacketNumber().longValue() == j) {
                    msgUpgradeBaseband.setRtCode((byte) -1);
                    j++;
                } else {
                    throw new Exception("upgrade Failure");
                }
            }
            msgUpgradeBaseband.setPacketNumber(Long.valueOf(Long.parseLong("FFFFFFFF", 16)));
            msgUpgradeBaseband.setPacketContent(null);
            gClient.sendSynMsg(msgUpgradeBaseband);
            if (msgUpgradeBaseband.getRtCode() != 0) {
                throw new Exception("upgrade Failure");
            }
            Thread.sleep(2000L);
            gClient.sendSynMsg(new MsgAppReset());
            bufferedInputStream.close();
            return;
        }
        throw new Exception("upgrade Failure");
    }

    public static void upgradeApp(File file, GClient gClient) throws Exception {
        if (file == null || !file.exists()) {
            throw new Exception("binFile not found!!!");
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
        byte[] bArr = new byte[256];
        MsgUpgradeApp msgUpgradeApp = new MsgUpgradeApp();
        msgUpgradeApp.setPacketNumber(0L);
        gClient.sendSynMsg(msgUpgradeApp);
        if (msgUpgradeApp.getRtCode() != 0) {
            gClient.sendSynMsg(msgUpgradeApp);
        }
        if (msgUpgradeApp.getRtCode() == 0) {
            long j = 1;
            while (bufferedInputStream.read(bArr) != -1) {
                msgUpgradeApp.setPacketNumber(Long.valueOf(j));
                msgUpgradeApp.setPacketContent(bArr);
                gClient.sendSynMsg(msgUpgradeApp);
                if (msgUpgradeApp.getRtCode() == 0 && msgUpgradeApp.getPacketNumber().longValue() == j) {
                    msgUpgradeApp.setRtCode((byte) -1);
                    j++;
                } else {
                    throw new Exception("upgrade Failure");
                }
            }
            msgUpgradeApp.setPacketNumber(Long.valueOf(Long.parseLong("FFFFFFFF", 16)));
            msgUpgradeApp.setPacketContent(null);
            gClient.sendSynMsg(msgUpgradeApp);
            if (msgUpgradeApp.getRtCode() != 0) {
                throw new Exception("upgrade Failure");
            }
            Thread.sleep(5000L);
            gClient.sendSynMsg(new MsgAppReset());
            bufferedInputStream.close();
            return;
        }
        throw new Exception("upgrade Failure");
    }
}
