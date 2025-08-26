package com.zhy.http.okhttp.request;

import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.Buffer;
import okio.BufferedSink;
import okio.ForwardingSink;
import okio.Okio;
import okio.Sink;

/* loaded from: classes2.dex */
public class CountingRequestBody extends RequestBody {
    protected CountingSink countingSink;
    protected RequestBody delegate;
    protected Listener listener;

    public interface Listener {
        void onRequestProgress(long j, long j2);
    }

    public CountingRequestBody(RequestBody requestBody, Listener listener) {
        this.delegate = requestBody;
        this.listener = listener;
    }

    @Override // okhttp3.RequestBody
    public MediaType contentType() {
        return this.delegate.contentType();
    }

    @Override // okhttp3.RequestBody
    public long contentLength() {
        try {
            return this.delegate.contentLength();
        } catch (IOException e) {
            e.printStackTrace();
            return -1L;
        }
    }

    @Override // okhttp3.RequestBody
    public void writeTo(BufferedSink bufferedSink) throws IOException {
        this.countingSink = new CountingSink(bufferedSink);
        BufferedSink bufferedSinkBuffer = Okio.buffer(this.countingSink);
        this.delegate.writeTo(bufferedSinkBuffer);
        bufferedSinkBuffer.flush();
    }

    protected final class CountingSink extends ForwardingSink {
        private long bytesWritten;

        public CountingSink(Sink sink) {
            super(sink);
            this.bytesWritten = 0L;
        }

        @Override // okio.ForwardingSink, okio.Sink
        public void write(Buffer buffer, long j) throws IOException {
            super.write(buffer, j);
            this.bytesWritten += j;
            CountingRequestBody.this.listener.onRequestProgress(this.bytesWritten, CountingRequestBody.this.contentLength());
        }
    }
}
