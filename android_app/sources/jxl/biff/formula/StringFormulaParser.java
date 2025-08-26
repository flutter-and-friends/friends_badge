package jxl.biff.formula;

import common.Logger;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Stack;
import jxl.WorkbookSettings;
import jxl.biff.WorkbookMethods;
import jxl.biff.formula.FormulaException;

/* loaded from: classes2.dex */
class StringFormulaParser implements Parser {
    static /* synthetic */ Class class$jxl$biff$formula$StringFormulaParser;
    private static Logger logger;
    private Stack arguments;
    private ExternalSheet externalSheet;
    private String formula;
    private WorkbookMethods nameTable;
    private String parsedFormula;
    private ParseItem root;
    private WorkbookSettings settings;

    static {
        Class clsClass$ = class$jxl$biff$formula$StringFormulaParser;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.formula.StringFormulaParser");
            class$jxl$biff$formula$StringFormulaParser = clsClass$;
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

    public StringFormulaParser(String str, ExternalSheet externalSheet, WorkbookMethods workbookMethods, WorkbookSettings workbookSettings) {
        this.formula = str;
        this.settings = workbookSettings;
        this.externalSheet = externalSheet;
        this.nameTable = workbookMethods;
    }

    @Override // jxl.biff.formula.Parser
    public void parse() throws FormulaException {
        this.root = parseCurrent(getTokens().iterator());
    }

    private ParseItem parseCurrent(Iterator it) throws FormulaException {
        Stack stack = new Stack();
        Stack stack2 = new Stack();
        boolean z = false;
        Stack stack3 = null;
        ParseItem parseItem = null;
        while (it.hasNext() && !z) {
            ParseItem parseItem2 = (ParseItem) it.next();
            if (parseItem2 instanceof Operand) {
                handleOperand((Operand) parseItem2, stack);
            } else if (parseItem2 instanceof StringFunction) {
                handleFunction((StringFunction) parseItem2, it, stack);
            } else if (parseItem2 instanceof Operator) {
                Operator unaryOperator = (Operator) parseItem2;
                if (unaryOperator instanceof StringOperator) {
                    StringOperator stringOperator = (StringOperator) unaryOperator;
                    if (stack.isEmpty() || (parseItem instanceof Operator)) {
                        unaryOperator = stringOperator.getUnaryOperator();
                    } else {
                        unaryOperator = stringOperator.getBinaryOperator();
                    }
                }
                if (stack2.empty()) {
                    stack2.push(unaryOperator);
                } else {
                    Operator operator = (Operator) stack2.peek();
                    if (unaryOperator.getPrecedence() <= operator.getPrecedence()) {
                        stack2.push(unaryOperator);
                    } else {
                        stack2.pop();
                        operator.getOperands(stack);
                        stack.push(operator);
                        stack2.push(unaryOperator);
                    }
                }
            } else if (parseItem2 instanceof ArgumentSeparator) {
                while (!stack2.isEmpty()) {
                    Operator operator2 = (Operator) stack2.pop();
                    operator2.getOperands(stack);
                    stack.push(operator2);
                }
                if (stack3 == null) {
                    stack3 = new Stack();
                }
                stack3.push(stack.pop());
                stack.clear();
            } else if (parseItem2 instanceof OpenParentheses) {
                ParseItem current = parseCurrent(it);
                Parenthesis parenthesis = new Parenthesis();
                current.setParent(parenthesis);
                parenthesis.add(current);
                stack.push(parenthesis);
            } else if (parseItem2 instanceof CloseParentheses) {
                z = true;
            }
            parseItem = parseItem2;
        }
        while (!stack2.isEmpty()) {
            Operator operator3 = (Operator) stack2.pop();
            operator3.getOperands(stack);
            stack.push(operator3);
        }
        ParseItem parseItem3 = stack.empty() ? null : (ParseItem) stack.pop();
        if (stack3 != null && parseItem3 != null) {
            stack3.push(parseItem3);
        }
        this.arguments = stack3;
        if (!stack.empty() || !stack2.empty()) {
            Logger logger2 = logger;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Formula ");
            stringBuffer.append(this.formula);
            stringBuffer.append(" has a non-empty parse stack");
            logger2.warn(stringBuffer.toString());
        }
        return parseItem3;
    }

    private ArrayList getTokens() throws FormulaException {
        ArrayList arrayList = new ArrayList();
        Yylex yylex = new Yylex(new StringReader(this.formula));
        yylex.setExternalSheet(this.externalSheet);
        yylex.setNameTable(this.nameTable);
        try {
            for (ParseItem parseItemYylex = yylex.yylex(); parseItemYylex != null; parseItemYylex = yylex.yylex()) {
                arrayList.add(parseItemYylex);
            }
        } catch (IOException e) {
            logger.warn(e.toString());
        } catch (Error unused) {
            FormulaException.FormulaMessage formulaMessage = FormulaException.LEXICAL_ERROR;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(this.formula);
            stringBuffer.append(" at char  ");
            stringBuffer.append(yylex.getPos());
            throw new FormulaException(formulaMessage, stringBuffer.toString());
        }
        return arrayList;
    }

    @Override // jxl.biff.formula.Parser
    public String getFormula() {
        if (this.parsedFormula == null) {
            StringBuffer stringBuffer = new StringBuffer();
            this.root.getString(stringBuffer);
            this.parsedFormula = stringBuffer.toString();
        }
        return this.parsedFormula;
    }

    @Override // jxl.biff.formula.Parser
    public byte[] getBytes() {
        byte[] bytes = this.root.getBytes();
        if (!this.root.isVolatile()) {
            return bytes;
        }
        byte[] bArr = new byte[bytes.length + 4];
        System.arraycopy(bytes, 0, bArr, 4, bytes.length);
        bArr[0] = Token.ATTRIBUTE.getCode();
        bArr[1] = 1;
        return bArr;
    }

    private void handleFunction(StringFunction stringFunction, Iterator it, Stack stack) throws FormulaException {
        Stack stack2;
        ParseItem current = parseCurrent(it);
        if (stringFunction.getFunction(this.settings) == Function.UNKNOWN) {
            throw new FormulaException(FormulaException.UNRECOGNIZED_FUNCTION);
        }
        if (stringFunction.getFunction(this.settings) == Function.SUM && this.arguments == null) {
            Attribute attribute = new Attribute(stringFunction, this.settings);
            attribute.add(current);
            stack.push(attribute);
            return;
        }
        if (stringFunction.getFunction(this.settings) == Function.f1141IF) {
            Attribute attribute2 = new Attribute(stringFunction, this.settings);
            VariableArgFunction variableArgFunction = new VariableArgFunction(this.settings);
            int size = this.arguments.size();
            while (i < size) {
                variableArgFunction.add((ParseItem) this.arguments.get(i));
                i++;
            }
            attribute2.setIfConditions(variableArgFunction);
            stack.push(attribute2);
            return;
        }
        if (stringFunction.getFunction(this.settings).getNumArgs() == 255) {
            Stack stack3 = this.arguments;
            if (stack3 == null) {
                VariableArgFunction variableArgFunction2 = new VariableArgFunction(stringFunction.getFunction(this.settings), current != null ? 1 : 0, this.settings);
                if (current != null) {
                    variableArgFunction2.add(current);
                }
                stack.push(variableArgFunction2);
                return;
            }
            int size2 = stack3.size();
            VariableArgFunction variableArgFunction3 = new VariableArgFunction(stringFunction.getFunction(this.settings), size2, this.settings);
            ParseItem[] parseItemArr = new ParseItem[size2];
            for (int i = 0; i < size2; i++) {
                parseItemArr[(size2 - i) - 1] = (ParseItem) this.arguments.pop();
            }
            while (i < parseItemArr.length) {
                variableArgFunction3.add(parseItemArr[i]);
                i++;
            }
            stack.push(variableArgFunction3);
            this.arguments.clear();
            this.arguments = null;
            return;
        }
        BuiltInFunction builtInFunction = new BuiltInFunction(stringFunction.getFunction(this.settings), this.settings);
        int numArgs = stringFunction.getFunction(this.settings).getNumArgs();
        if (numArgs == 1) {
            builtInFunction.add(current);
        } else {
            if ((this.arguments == null && numArgs != 0) || ((stack2 = this.arguments) != null && numArgs != stack2.size())) {
                throw new FormulaException(FormulaException.INCORRECT_ARGUMENTS);
            }
            while (i < numArgs) {
                builtInFunction.add((ParseItem) this.arguments.get(i));
                i++;
            }
        }
        stack.push(builtInFunction);
    }

    @Override // jxl.biff.formula.Parser
    public void adjustRelativeCellReferences(int i, int i2) {
        this.root.adjustRelativeCellReferences(i, i2);
    }

    @Override // jxl.biff.formula.Parser
    public void columnInserted(int i, int i2, boolean z) {
        this.root.columnInserted(i, i2, z);
    }

    @Override // jxl.biff.formula.Parser
    public void columnRemoved(int i, int i2, boolean z) {
        this.root.columnRemoved(i, i2, z);
    }

    @Override // jxl.biff.formula.Parser
    public void rowInserted(int i, int i2, boolean z) {
        this.root.rowInserted(i, i2, z);
    }

    @Override // jxl.biff.formula.Parser
    public void rowRemoved(int i, int i2, boolean z) {
        this.root.rowRemoved(i, i2, z);
    }

    private void handleOperand(Operand operand, Stack stack) {
        boolean z = operand instanceof IntegerValue;
        if (!z) {
            stack.push(operand);
            return;
        }
        if (z) {
            IntegerValue integerValue = (IntegerValue) operand;
            if (!integerValue.isOutOfRange()) {
                stack.push(integerValue);
            } else {
                stack.push(new DoubleValue(integerValue.getValue()));
            }
        }
    }

    @Override // jxl.biff.formula.Parser
    public boolean handleImportedCellReferences() {
        this.root.handleImportedCellReferences();
        return this.root.isValid();
    }
}
