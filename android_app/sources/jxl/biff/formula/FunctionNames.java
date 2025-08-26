package jxl.biff.formula;

import common.Logger;
import java.util.HashMap;
import java.util.Locale;
import java.util.ResourceBundle;

/* loaded from: classes2.dex */
public class FunctionNames {
    static /* synthetic */ Class class$jxl$biff$formula$FunctionNames;
    private static Logger logger;
    private HashMap functions;
    private HashMap names;

    static {
        Class clsClass$ = class$jxl$biff$formula$FunctionNames;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.formula.FunctionNames");
            class$jxl$biff$formula$FunctionNames = clsClass$;
        }
        logger = Logger.getLogger(clsClass$);
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    public FunctionNames(Locale locale) {
        ResourceBundle bundle = ResourceBundle.getBundle("functions", locale);
        Function[] functions = Function.getFunctions();
        this.names = new HashMap(functions.length);
        this.functions = new HashMap(functions.length);
        for (Function function : functions) {
            String propertyName = function.getPropertyName();
            String string = propertyName.length() != 0 ? bundle.getString(propertyName) : null;
            if (string != null) {
                this.names.put(function, string);
                this.functions.put(string, function);
            }
        }
    }

    Function getFunction(String str) {
        return (Function) this.functions.get(str);
    }

    String getName(Function function) {
        return (String) this.names.get(function);
    }
}
