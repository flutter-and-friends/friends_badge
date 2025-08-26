package top.zibin.luban;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public interface InputStreamProvider {
    void close();

    String getPath();

    InputStream open() throws IOException;
}
