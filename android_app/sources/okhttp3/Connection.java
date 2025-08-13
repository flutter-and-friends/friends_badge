package okhttp3;

import java.net.Socket;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public interface Connection {
    @Nullable
    Handshake handshake();

    Protocol protocol();

    Route route();

    Socket socket();
}
