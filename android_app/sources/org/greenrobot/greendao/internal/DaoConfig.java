package org.greenrobot.greendao.internal;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.DaoException;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.identityscope.IdentityScope;
import org.greenrobot.greendao.identityscope.IdentityScopeLong;
import org.greenrobot.greendao.identityscope.IdentityScopeObject;
import org.greenrobot.greendao.identityscope.IdentityScopeType;

/* loaded from: classes2.dex */
public final class DaoConfig implements Cloneable {
    public final String[] allColumns;

    /* renamed from: db */
    public final Database f1192db;
    private IdentityScope<?, ?> identityScope;
    public final boolean keyIsNumeric;
    public final String[] nonPkColumns;
    public final String[] pkColumns;
    public final Property pkProperty;
    public final Property[] properties;
    public final TableStatements statements;
    public final String tablename;

    public DaoConfig(Database database, Class<? extends AbstractDao<?, ?>> cls) {
        this.f1192db = database;
        try {
            this.tablename = (String) cls.getField("TABLENAME").get(null);
            Property[] propertyArrReflectProperties = reflectProperties(cls);
            this.properties = propertyArrReflectProperties;
            this.allColumns = new String[propertyArrReflectProperties.length];
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            Property property = null;
            for (int i = 0; i < propertyArrReflectProperties.length; i++) {
                Property property2 = propertyArrReflectProperties[i];
                String str = property2.columnName;
                this.allColumns[i] = str;
                if (property2.primaryKey) {
                    arrayList.add(str);
                    property = property2;
                } else {
                    arrayList2.add(str);
                }
            }
            this.nonPkColumns = (String[]) arrayList2.toArray(new String[arrayList2.size()]);
            this.pkColumns = (String[]) arrayList.toArray(new String[arrayList.size()]);
            boolean z = true;
            this.pkProperty = this.pkColumns.length == 1 ? property : null;
            this.statements = new TableStatements(database, this.tablename, this.allColumns, this.pkColumns);
            if (this.pkProperty != null) {
                Class<?> cls2 = this.pkProperty.type;
                if (!cls2.equals(Long.TYPE) && !cls2.equals(Long.class) && !cls2.equals(Integer.TYPE) && !cls2.equals(Integer.class) && !cls2.equals(Short.TYPE) && !cls2.equals(Short.class) && !cls2.equals(Byte.TYPE) && !cls2.equals(Byte.class)) {
                    z = false;
                }
                this.keyIsNumeric = z;
                return;
            }
            this.keyIsNumeric = false;
        } catch (Exception e) {
            throw new DaoException("Could not init DAOConfig", e);
        }
    }

    private static Property[] reflectProperties(Class<? extends AbstractDao<?, ?>> cls) throws IllegalAccessException, ClassNotFoundException, IllegalArgumentException {
        Field[] declaredFields = Class.forName(cls.getName() + "$Properties").getDeclaredFields();
        ArrayList arrayList = new ArrayList();
        for (Field field : declaredFields) {
            if ((field.getModifiers() & 9) == 9) {
                Object obj = field.get(null);
                if (obj instanceof Property) {
                    arrayList.add((Property) obj);
                }
            }
        }
        Property[] propertyArr = new Property[arrayList.size()];
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Property property = (Property) it.next();
            if (propertyArr[property.ordinal] != null) {
                throw new DaoException("Duplicate property ordinals");
            }
            propertyArr[property.ordinal] = property;
        }
        return propertyArr;
    }

    public DaoConfig(DaoConfig daoConfig) {
        this.f1192db = daoConfig.f1192db;
        this.tablename = daoConfig.tablename;
        this.properties = daoConfig.properties;
        this.allColumns = daoConfig.allColumns;
        this.pkColumns = daoConfig.pkColumns;
        this.nonPkColumns = daoConfig.nonPkColumns;
        this.pkProperty = daoConfig.pkProperty;
        this.statements = daoConfig.statements;
        this.keyIsNumeric = daoConfig.keyIsNumeric;
    }

    public DaoConfig clone() {
        return new DaoConfig(this);
    }

    public IdentityScope<?, ?> getIdentityScope() {
        return this.identityScope;
    }

    public void clearIdentityScope() {
        IdentityScope<?, ?> identityScope = this.identityScope;
        if (identityScope != null) {
            identityScope.clear();
        }
    }

    public void setIdentityScope(IdentityScope<?, ?> identityScope) {
        this.identityScope = identityScope;
    }

    public void initIdentityScope(IdentityScopeType identityScopeType) {
        if (identityScopeType == IdentityScopeType.None) {
            this.identityScope = null;
            return;
        }
        if (identityScopeType == IdentityScopeType.Session) {
            if (this.keyIsNumeric) {
                this.identityScope = new IdentityScopeLong();
                return;
            } else {
                this.identityScope = new IdentityScopeObject();
                return;
            }
        }
        throw new IllegalArgumentException("Unsupported type: " + identityScopeType);
    }
}
