package org.greenrobot.greendao.test;

import org.greenrobot.greendao.AbstractDao;

/* loaded from: classes2.dex */
public abstract class AbstractDaoTestStringPk<D extends AbstractDao<T, String>, T> extends AbstractDaoTestSinglePk<D, T, String> {
    public AbstractDaoTestStringPk(Class<D> cls) {
        super(cls);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.greenrobot.greendao.test.AbstractDaoTestSinglePk
    public String createRandomPk() {
        int iNextInt = this.random.nextInt(30) + 1;
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < iNextInt; i++) {
            sb.append((char) (this.random.nextInt(25) + 97));
        }
        return sb.toString();
    }
}
