package com.seuic.scankey;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IKeyEventCallback extends IInterface {
    void onKeyDown(int i) throws RemoteException;

    void onKeyUp(int i) throws RemoteException;

    public static abstract class Stub extends Binder implements IKeyEventCallback {
        public Stub() {
            throw new RuntimeException("Stub!");
        }

        public static IKeyEventCallback asInterface(IBinder iBinder) {
            throw new RuntimeException("Stub!");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            throw new RuntimeException("Stub!");
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            throw new RuntimeException("Stub!");
        }
    }
}
