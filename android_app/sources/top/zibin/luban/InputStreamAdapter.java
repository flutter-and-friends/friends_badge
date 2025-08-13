package top.zibin.luban;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public abstract class InputStreamAdapter implements InputStreamProvider {
    private InputStream inputStream;

    public abstract InputStream openInternal() throws IOException;

    @Override // top.zibin.luban.InputStreamProvider
    public InputStream open() throws IOException {
        close();
        this.inputStream = openInternal();
        return this.inputStream;
    }

    @Override // top.zibin.luban.InputStreamProvider
    public void close() {
        InputStream inputStream = this.inputStream;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            } catch (Throwable th) {
                this.inputStream = null;
                throw th;
            }
            this.inputStream = null;
        }
    }
}
