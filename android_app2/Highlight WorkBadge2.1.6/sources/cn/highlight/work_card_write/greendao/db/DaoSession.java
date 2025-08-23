package cn.highlight.work_card_write.greendao.db;

import cn.highlight.work_card_write.greendao.table.BadgeBean;
import cn.highlight.work_card_write.greendao.table.DoodleBean;
import cn.highlight.work_card_write.greendao.table.TestBean;
import java.util.Map;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.AbstractDaoSession;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.identityscope.IdentityScopeType;
import org.greenrobot.greendao.internal.DaoConfig;

/* loaded from: classes.dex */
public class DaoSession extends AbstractDaoSession {
    private final BadgeBeanDao badgeBeanDao;
    private final DaoConfig badgeBeanDaoConfig;
    private final DoodleBeanDao doodleBeanDao;
    private final DaoConfig doodleBeanDaoConfig;
    private final TestBeanDao testBeanDao;
    private final DaoConfig testBeanDaoConfig;

    public DaoSession(Database database, IdentityScopeType identityScopeType, Map<Class<? extends AbstractDao<?, ?>>, DaoConfig> map) {
        super(database);
        this.badgeBeanDaoConfig = map.get(BadgeBeanDao.class).clone();
        this.badgeBeanDaoConfig.initIdentityScope(identityScopeType);
        this.doodleBeanDaoConfig = map.get(DoodleBeanDao.class).clone();
        this.doodleBeanDaoConfig.initIdentityScope(identityScopeType);
        this.testBeanDaoConfig = map.get(TestBeanDao.class).clone();
        this.testBeanDaoConfig.initIdentityScope(identityScopeType);
        this.badgeBeanDao = new BadgeBeanDao(this.badgeBeanDaoConfig, this);
        this.doodleBeanDao = new DoodleBeanDao(this.doodleBeanDaoConfig, this);
        this.testBeanDao = new TestBeanDao(this.testBeanDaoConfig, this);
        registerDao(BadgeBean.class, this.badgeBeanDao);
        registerDao(DoodleBean.class, this.doodleBeanDao);
        registerDao(TestBean.class, this.testBeanDao);
    }

    public void clear() {
        this.badgeBeanDaoConfig.clearIdentityScope();
        this.doodleBeanDaoConfig.clearIdentityScope();
        this.testBeanDaoConfig.clearIdentityScope();
    }

    public BadgeBeanDao getBadgeBeanDao() {
        return this.badgeBeanDao;
    }

    public DoodleBeanDao getDoodleBeanDao() {
        return this.doodleBeanDao;
    }

    public TestBeanDao getTestBeanDao() {
        return this.testBeanDao;
    }
}
