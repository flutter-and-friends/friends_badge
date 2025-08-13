package android.os;

import android.os.Bundle;
/** */
interface IInputActionListener 
{
    /** */
    void onInputChanged(int result, int keylen, in Bundle bundle);
}
