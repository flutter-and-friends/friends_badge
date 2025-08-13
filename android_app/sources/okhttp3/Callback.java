package okhttp3;

import java.io.IOException;

/* loaded from: classes2.dex */
public interface Callback {
    void onFailure(Call call, IOException iOException);

    void onResponse(Call call, Response response) throws IOException;
}
