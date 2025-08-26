package android.content.p000pm;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IPackageInstallObserver extends IInterface {
    void packageInstalled(String str, int i) throws RemoteException;

    public static abstract class Stub extends Binder implements IPackageInstallObserver {
        public Stub() {
            throw new RuntimeException("Stub!");
        }

        public static IPackageInstallObserver asInterface(IBinder iBinder) {
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
