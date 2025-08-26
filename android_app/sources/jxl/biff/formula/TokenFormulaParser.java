package jxl.biff.formula;

import common.Assert;
import common.Logger;
import java.util.Stack;
import jxl.Cell;
import jxl.WorkbookSettings;
import jxl.biff.WorkbookMethods;

/* loaded from: classes2.dex */
class TokenFormulaParser implements Parser {
    static /* synthetic */ Class class$jxl$biff$formula$TokenFormulaParser;
    private static Logger logger;
    private WorkbookMethods nameTable;
    private Cell relativeTo;
    private ParseItem root;
    private WorkbookSettings settings;
    private byte[] tokenData;
    private ExternalSheet workbook;
    private int pos = 0;
    private Stack tokenStack = new Stack();

    static {
        Class clsClass$ = class$jxl$biff$formula$TokenFormulaParser;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.formula.TokenFormulaParser");
            class$jxl$biff$formula$TokenFormulaParser = clsClass$;
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

    public TokenFormulaParser(byte[] bArr, Cell cell, ExternalSheet externalSheet, WorkbookMethods workbookMethods, WorkbookSettings workbookSettings) {
        this.tokenData = bArr;
        this.relativeTo = cell;
        this.workbook = externalSheet;
        this.nameTable = workbookMethods;
        this.settings = workbookSettings;
        Assert.verify(this.nameTable != null);
    }

    @Override // jxl.biff.formula.Parser
    public void parse() throws FormulaException {
        parseSubExpression(this.tokenData.length);
        this.root = (ParseItem) this.tokenStack.pop();
        Assert.verify(this.tokenStack.empty());
    }

    private void parseSubExpression(int i) throws FormulaException {
        Attribute attribute;
        Stack stack = new Stack();
        int i2 = this.pos + i;
        while (true) {
            int i3 = this.pos;
            if (i3 >= i2) {
                return;
            }
            byte b = this.tokenData[i3];
            this.pos = i3 + 1;
            Token token = Token.getToken(b);
            if (token == Token.UNKNOWN) {
                throw new FormulaException(FormulaException.UNRECOGNIZED_TOKEN, b);
            }
            Assert.verify(token != Token.UNKNOWN);
            if (token == Token.REF) {
                CellReference cellReference = new CellReference(this.relativeTo);
                int i4 = this.pos;
                this.pos = i4 + cellReference.read(this.tokenData, i4);
                this.tokenStack.push(cellReference);
            } else if (token == Token.REFERR) {
                CellReferenceError cellReferenceError = new CellReferenceError();
                int i5 = this.pos;
                this.pos = i5 + cellReferenceError.read(this.tokenData, i5);
                this.tokenStack.push(cellReferenceError);
            } else if (token == Token.ERR) {
                ErrorConstant errorConstant = new ErrorConstant();
                int i6 = this.pos;
                this.pos = i6 + errorConstant.read(this.tokenData, i6);
                this.tokenStack.push(errorConstant);
            } else if (token == Token.REFV) {
                SharedFormulaCellReference sharedFormulaCellReference = new SharedFormulaCellReference(this.relativeTo);
                int i7 = this.pos;
                this.pos = i7 + sharedFormulaCellReference.read(this.tokenData, i7);
                this.tokenStack.push(sharedFormulaCellReference);
            } else if (token == Token.REF3D) {
                CellReference3d cellReference3d = new CellReference3d(this.relativeTo, this.workbook);
                int i8 = this.pos;
                this.pos = i8 + cellReference3d.read(this.tokenData, i8);
                this.tokenStack.push(cellReference3d);
            } else if (token == Token.AREA) {
                Area area = new Area();
                int i9 = this.pos;
                this.pos = i9 + area.read(this.tokenData, i9);
                this.tokenStack.push(area);
            } else if (token == Token.AREAV) {
                SharedFormulaArea sharedFormulaArea = new SharedFormulaArea(this.relativeTo);
                int i10 = this.pos;
                this.pos = i10 + sharedFormulaArea.read(this.tokenData, i10);
                this.tokenStack.push(sharedFormulaArea);
            } else if (token == Token.AREA3D) {
                Area3d area3d = new Area3d(this.workbook);
                int i11 = this.pos;
                this.pos = i11 + area3d.read(this.tokenData, i11);
                this.tokenStack.push(area3d);
            } else if (token == Token.NAME) {
                Name name = new Name();
                int i12 = this.pos;
                this.pos = i12 + name.read(this.tokenData, i12);
                this.tokenStack.push(name);
            } else if (token == Token.NAMED_RANGE) {
                NameRange nameRange = new NameRange(this.nameTable);
                int i13 = this.pos;
                this.pos = i13 + nameRange.read(this.tokenData, i13);
                this.tokenStack.push(nameRange);
            } else if (token == Token.INTEGER) {
                IntegerValue integerValue = new IntegerValue();
                int i14 = this.pos;
                this.pos = i14 + integerValue.read(this.tokenData, i14);
                this.tokenStack.push(integerValue);
            } else if (token == Token.DOUBLE) {
                DoubleValue doubleValue = new DoubleValue();
                int i15 = this.pos;
                this.pos = i15 + doubleValue.read(this.tokenData, i15);
                this.tokenStack.push(doubleValue);
            } else if (token == Token.BOOL) {
                BooleanValue booleanValue = new BooleanValue();
                int i16 = this.pos;
                this.pos = i16 + booleanValue.read(this.tokenData, i16);
                this.tokenStack.push(booleanValue);
            } else if (token == Token.STRING) {
                StringValue stringValue = new StringValue(this.settings);
                int i17 = this.pos;
                this.pos = i17 + stringValue.read(this.tokenData, i17);
                this.tokenStack.push(stringValue);
            } else if (token == Token.MISSING_ARG) {
                MissingArg missingArg = new MissingArg();
                int i18 = this.pos;
                this.pos = i18 + missingArg.read(this.tokenData, i18);
                this.tokenStack.push(missingArg);
            } else if (token == Token.UNARY_PLUS) {
                UnaryPlus unaryPlus = new UnaryPlus();
                int i19 = this.pos;
                this.pos = i19 + unaryPlus.read(this.tokenData, i19);
                addOperator(unaryPlus);
            } else if (token == Token.UNARY_MINUS) {
                UnaryMinus unaryMinus = new UnaryMinus();
                int i20 = this.pos;
                this.pos = i20 + unaryMinus.read(this.tokenData, i20);
                addOperator(unaryMinus);
            } else if (token == Token.PERCENT) {
                Percent percent = new Percent();
                int i21 = this.pos;
                this.pos = i21 + percent.read(this.tokenData, i21);
                addOperator(percent);
            } else if (token == Token.SUBTRACT) {
                Subtract subtract = new Subtract();
                int i22 = this.pos;
                this.pos = i22 + subtract.read(this.tokenData, i22);
                addOperator(subtract);
            } else if (token == Token.ADD) {
                Add add = new Add();
                int i23 = this.pos;
                this.pos = i23 + add.read(this.tokenData, i23);
                addOperator(add);
            } else if (token == Token.MULTIPLY) {
                Multiply multiply = new Multiply();
                int i24 = this.pos;
                this.pos = i24 + multiply.read(this.tokenData, i24);
                addOperator(multiply);
            } else if (token == Token.DIVIDE) {
                Divide divide = new Divide();
                int i25 = this.pos;
                this.pos = i25 + divide.read(this.tokenData, i25);
                addOperator(divide);
            } else if (token == Token.CONCAT) {
                Concatenate concatenate = new Concatenate();
                int i26 = this.pos;
                this.pos = i26 + concatenate.read(this.tokenData, i26);
                addOperator(concatenate);
            } else if (token == Token.POWER) {
                Power power = new Power();
                int i27 = this.pos;
                this.pos = i27 + power.read(this.tokenData, i27);
                addOperator(power);
            } else if (token == Token.LESS_THAN) {
                LessThan lessThan = new LessThan();
                int i28 = this.pos;
                this.pos = i28 + lessThan.read(this.tokenData, i28);
                addOperator(lessThan);
            } else if (token == Token.LESS_EQUAL) {
                LessEqual lessEqual = new LessEqual();
                int i29 = this.pos;
                this.pos = i29 + lessEqual.read(this.tokenData, i29);
                addOperator(lessEqual);
            } else if (token == Token.GREATER_THAN) {
                GreaterThan greaterThan = new GreaterThan();
                int i30 = this.pos;
                this.pos = i30 + greaterThan.read(this.tokenData, i30);
                addOperator(greaterThan);
            } else if (token == Token.GREATER_EQUAL) {
                GreaterEqual greaterEqual = new GreaterEqual();
                int i31 = this.pos;
                this.pos = i31 + greaterEqual.read(this.tokenData, i31);
                addOperator(greaterEqual);
            } else if (token == Token.NOT_EQUAL) {
                NotEqual notEqual = new NotEqual();
                int i32 = this.pos;
                this.pos = i32 + notEqual.read(this.tokenData, i32);
                addOperator(notEqual);
            } else if (token == Token.EQUAL) {
                Equal equal = new Equal();
                int i33 = this.pos;
                this.pos = i33 + equal.read(this.tokenData, i33);
                addOperator(equal);
            } else if (token == Token.PARENTHESIS) {
                Parenthesis parenthesis = new Parenthesis();
                int i34 = this.pos;
                this.pos = i34 + parenthesis.read(this.tokenData, i34);
                addOperator(parenthesis);
            } else if (token == Token.ATTRIBUTE) {
                Attribute attribute2 = new Attribute(this.settings);
                int i35 = this.pos;
                this.pos = i35 + attribute2.read(this.tokenData, i35);
                if (attribute2.isSum()) {
                    addOperator(attribute2);
                } else if (attribute2.isIf()) {
                    stack.push(attribute2);
                }
            } else if (token == Token.FUNCTION) {
                BuiltInFunction builtInFunction = new BuiltInFunction(this.settings);
                int i36 = this.pos;
                this.pos = i36 + builtInFunction.read(this.tokenData, i36);
                addOperator(builtInFunction);
            } else if (token == Token.FUNCTIONVARARG) {
                VariableArgFunction variableArgFunction = new VariableArgFunction(this.settings);
                int i37 = this.pos;
                this.pos = i37 + variableArgFunction.read(this.tokenData, i37);
                if (variableArgFunction.getFunction() != Function.ATTRIBUTE) {
                    addOperator(variableArgFunction);
                } else {
                    variableArgFunction.getOperands(this.tokenStack);
                    if (stack.empty()) {
                        attribute = new Attribute(this.settings);
                    } else {
                        attribute = (Attribute) stack.pop();
                    }
                    attribute.setIfConditions(variableArgFunction);
                    this.tokenStack.push(attribute);
                }
            } else if (token == Token.MEM_FUNC) {
                handleMemoryFunction(new MemFunc());
            } else if (token == Token.MEM_AREA) {
                handleMemoryFunction(new MemArea());
            }
        }
    }

    private void handleMemoryFunction(SubExpression subExpression) throws FormulaException {
        int i = this.pos;
        this.pos = i + subExpression.read(this.tokenData, i);
        Stack stack = this.tokenStack;
        this.tokenStack = new Stack();
        parseSubExpression(subExpression.getLength());
        ParseItem[] parseItemArr = new ParseItem[this.tokenStack.size()];
        int i2 = 0;
        while (!this.tokenStack.isEmpty()) {
            parseItemArr[i2] = (ParseItem) this.tokenStack.pop();
            i2++;
        }
        subExpression.setSubExpression(parseItemArr);
        this.tokenStack = stack;
        this.tokenStack.push(subExpression);
    }

    private void addOperator(Operator operator) {
        operator.getOperands(this.tokenStack);
        this.tokenStack.push(operator);
    }

    @Override // jxl.biff.formula.Parser
    public String getFormula() {
        StringBuffer stringBuffer = new StringBuffer();
        this.root.getString(stringBuffer);
        return stringBuffer.toString();
    }

    @Override // jxl.biff.formula.Parser
    public void adjustRelativeCellReferences(int i, int i2) {
        this.root.adjustRelativeCellReferences(i, i2);
    }

    @Override // jxl.biff.formula.Parser
    public byte[] getBytes() {
        return this.root.getBytes();
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

    @Override // jxl.biff.formula.Parser
    public boolean handleImportedCellReferences() {
        this.root.handleImportedCellReferences();
        return this.root.isValid();
    }
}
