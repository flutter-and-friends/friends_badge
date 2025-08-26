package com.p013gg.reader.api.utils;

import com.p013gg.reader.api.dal.GClient;
import com.p013gg.reader.api.protocol.p014gx.MsgAppImportWhiteList;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;

/* loaded from: classes.dex */
public class WhiteListUtils {
    public static void importData(File file, GClient gClient) throws Exception {
        if (file != null && !file.exists()) {
            throw new Exception("dbFile not found!!!");
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
        byte[] bArr = new byte[256];
        MsgAppImportWhiteList msgAppImportWhiteList = new MsgAppImportWhiteList();
        msgAppImportWhiteList.setPacketNumber(0L);
        gClient.sendSynMsg(msgAppImportWhiteList);
        if (msgAppImportWhiteList.getRtCode() == 0) {
            long j = 1;
            while (bufferedInputStream.read(bArr) != -1) {
                msgAppImportWhiteList.setPacketNumber(Long.valueOf(j));
                msgAppImportWhiteList.setPacketContent(bArr);
                gClient.sendSynMsg(msgAppImportWhiteList);
                if (msgAppImportWhiteList.getRtCode() == 0 && msgAppImportWhiteList.getPacketNumber().longValue() == j) {
                    msgAppImportWhiteList.setRtCode((byte) -1);
                    j++;
                    try {
                        Thread.sleep(50L);
                    } catch (InterruptedException unused) {
                    }
                } else {
                    throw new Exception("Import white list Failure");
                }
            }
            msgAppImportWhiteList.setPacketNumber(Long.valueOf(Long.parseLong("FFFFFFFF", 16)));
            msgAppImportWhiteList.setPacketContent(null);
            gClient.sendSynMsg(msgAppImportWhiteList);
            if (msgAppImportWhiteList.getRtCode() != 0) {
                throw new Exception("Import white list Failure");
            }
            bufferedInputStream.close();
            return;
        }
        throw new Exception("Import white list Failure");
    }
}
