package androidx.constraintlayout.solver;

import androidx.constraintlayout.solver.ArrayRow;
import java.util.Arrays;

/* loaded from: classes.dex */
public class SolverVariableValues implements ArrayRow.ArrayRowVariables {
    private static final boolean DEBUG = false;
    private static final boolean HASH = true;
    private static float epsilon = 0.001f;
    int head;
    int[] keys;
    protected final Cache mCache;
    int mCount;
    private final ArrayRow mRow;
    int[] next;
    int[] nextKeys;
    int[] previous;
    float[] values;
    int[] variables;
    private final int NONE = -1;
    private int SIZE = 16;
    private int HASH_SIZE = 16;

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public int sizeInBytes() {
        return 0;
    }

    SolverVariableValues(ArrayRow arrayRow, Cache cache) {
        int i = this.SIZE;
        this.keys = new int[i];
        this.nextKeys = new int[i];
        this.variables = new int[i];
        this.values = new float[i];
        this.previous = new int[i];
        this.next = new int[i];
        this.mCount = 0;
        this.head = -1;
        this.mRow = arrayRow;
        this.mCache = cache;
        clear();
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public int getCurrentSize() {
        return this.mCount;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public SolverVariable getVariable(int i) {
        int i2 = this.mCount;
        if (i2 == 0) {
            return null;
        }
        int i3 = this.head;
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 == i && i3 != -1) {
                return this.mCache.mIndexedVariables[this.variables[i3]];
            }
            i3 = this.next[i3];
            if (i3 == -1) {
                break;
            }
        }
        return null;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public float getVariableValue(int i) {
        int i2 = this.mCount;
        int i3 = this.head;
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 == i) {
                return this.values[i3];
            }
            i3 = this.next[i3];
            if (i3 == -1) {
                return 0.0f;
            }
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public boolean contains(SolverVariable solverVariable) {
        return indexOf(solverVariable) != -1;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public int indexOf(SolverVariable solverVariable) {
        if (this.mCount != 0 && solverVariable != null) {
            int i = solverVariable.f32id;
            int i2 = this.keys[i % this.HASH_SIZE];
            if (i2 == -1) {
                return -1;
            }
            if (this.variables[i2] == i) {
                return i2;
            }
            while (true) {
                int[] iArr = this.nextKeys;
                if (iArr[i2] == -1 || this.variables[iArr[i2]] == i) {
                    break;
                }
                i2 = iArr[i2];
            }
            int[] iArr2 = this.nextKeys;
            if (iArr2[i2] != -1 && this.variables[iArr2[i2]] == i) {
                return iArr2[i2];
            }
        }
        return -1;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public float get(SolverVariable solverVariable) {
        int iIndexOf = indexOf(solverVariable);
        if (iIndexOf != -1) {
            return this.values[iIndexOf];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public void display() {
        int i = this.mCount;
        System.out.print("{ ");
        for (int i2 = 0; i2 < i; i2++) {
            SolverVariable variable = getVariable(i2);
            if (variable != null) {
                System.out.print(variable + " = " + getVariableValue(i2) + " ");
            }
        }
        System.out.println(" }");
    }

    public String toString() {
        String str = hashCode() + " { ";
        int i = this.mCount;
        for (int i2 = 0; i2 < i; i2++) {
            SolverVariable variable = getVariable(i2);
            if (variable != null) {
                String str2 = str + variable + " = " + getVariableValue(i2) + " ";
                int iIndexOf = indexOf(variable);
                String str3 = str2 + "[p: ";
                String str4 = (this.previous[iIndexOf] != -1 ? str3 + this.mCache.mIndexedVariables[this.variables[this.previous[iIndexOf]]] : str3 + "none") + ", n: ";
                str = (this.next[iIndexOf] != -1 ? str4 + this.mCache.mIndexedVariables[this.variables[this.next[iIndexOf]]] : str4 + "none") + "]";
            }
        }
        return str + " }";
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public void clear() {
        int i = this.mCount;
        for (int i2 = 0; i2 < i; i2++) {
            SolverVariable variable = getVariable(i2);
            if (variable != null) {
                variable.removeFromRow(this.mRow);
            }
        }
        for (int i3 = 0; i3 < this.SIZE; i3++) {
            this.variables[i3] = -1;
            this.nextKeys[i3] = -1;
        }
        for (int i4 = 0; i4 < this.HASH_SIZE; i4++) {
            this.keys[i4] = -1;
        }
        this.mCount = 0;
        this.head = -1;
    }

    private void increaseSize() {
        int i = this.SIZE * 2;
        this.variables = Arrays.copyOf(this.variables, i);
        this.values = Arrays.copyOf(this.values, i);
        this.previous = Arrays.copyOf(this.previous, i);
        this.next = Arrays.copyOf(this.next, i);
        this.nextKeys = Arrays.copyOf(this.nextKeys, i);
        for (int i2 = this.SIZE; i2 < i; i2++) {
            this.variables[i2] = -1;
            this.nextKeys[i2] = -1;
        }
        this.SIZE = i;
    }

    private void addToHashMap(SolverVariable solverVariable, int i) {
        int[] iArr;
        int i2 = solverVariable.f32id % this.HASH_SIZE;
        int[] iArr2 = this.keys;
        int i3 = iArr2[i2];
        if (i3 == -1) {
            iArr2[i2] = i;
        } else {
            while (true) {
                iArr = this.nextKeys;
                if (iArr[i3] == -1) {
                    break;
                } else {
                    i3 = iArr[i3];
                }
            }
            iArr[i3] = i;
        }
        this.nextKeys[i] = -1;
    }

    private void displayHash() {
        for (int i = 0; i < this.HASH_SIZE; i++) {
            if (this.keys[i] != -1) {
                String str = hashCode() + " hash [" + i + "] => ";
                int i2 = this.keys[i];
                String str2 = str;
                boolean z = false;
                while (!z) {
                    str2 = str2 + " " + this.variables[i2];
                    int[] iArr = this.nextKeys;
                    if (iArr[i2] != -1) {
                        i2 = iArr[i2];
                    } else {
                        z = true;
                    }
                }
                System.out.println(str2);
            }
        }
    }

    private void removeFromHashMap(SolverVariable solverVariable) {
        int i = solverVariable.f32id % this.HASH_SIZE;
        int i2 = this.keys[i];
        if (i2 == -1) {
            return;
        }
        int i3 = solverVariable.f32id;
        if (this.variables[i2] == i3) {
            int[] iArr = this.keys;
            int[] iArr2 = this.nextKeys;
            iArr[i] = iArr2[i2];
            iArr2[i2] = -1;
            return;
        }
        while (true) {
            int[] iArr3 = this.nextKeys;
            if (iArr3[i2] == -1 || this.variables[iArr3[i2]] == i3) {
                break;
            } else {
                i2 = iArr3[i2];
            }
        }
        int[] iArr4 = this.nextKeys;
        int i4 = iArr4[i2];
        if (i4 == -1 || this.variables[i4] != i3) {
            return;
        }
        iArr4[i2] = iArr4[i4];
        iArr4[i4] = -1;
    }

    private void addVariable(int i, SolverVariable solverVariable, float f) {
        this.variables[i] = solverVariable.f32id;
        this.values[i] = f;
        this.previous[i] = -1;
        this.next[i] = -1;
        solverVariable.addToRow(this.mRow);
        solverVariable.usageInRowCount++;
        this.mCount++;
    }

    private int findEmptySlot() {
        for (int i = 0; i < this.SIZE; i++) {
            if (this.variables[i] == -1) {
                return i;
            }
        }
        return -1;
    }

    private void insertVariable(int i, SolverVariable solverVariable, float f) {
        int iFindEmptySlot = findEmptySlot();
        addVariable(iFindEmptySlot, solverVariable, f);
        if (i != -1) {
            this.previous[iFindEmptySlot] = i;
            int[] iArr = this.next;
            iArr[iFindEmptySlot] = iArr[i];
            iArr[i] = iFindEmptySlot;
        } else {
            this.previous[iFindEmptySlot] = -1;
            if (this.mCount > 0) {
                this.next[iFindEmptySlot] = this.head;
                this.head = iFindEmptySlot;
            } else {
                this.next[iFindEmptySlot] = -1;
            }
        }
        int[] iArr2 = this.next;
        if (iArr2[iFindEmptySlot] != -1) {
            this.previous[iArr2[iFindEmptySlot]] = iFindEmptySlot;
        }
        addToHashMap(solverVariable, iFindEmptySlot);
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public void put(SolverVariable solverVariable, float f) {
        float f2 = epsilon;
        if (f > (-f2) && f < f2) {
            remove(solverVariable, true);
            return;
        }
        if (this.mCount == 0) {
            addVariable(0, solverVariable, f);
            addToHashMap(solverVariable, 0);
            this.head = 0;
            return;
        }
        int iIndexOf = indexOf(solverVariable);
        if (iIndexOf != -1) {
            this.values[iIndexOf] = f;
            return;
        }
        if (this.mCount + 1 >= this.SIZE) {
            increaseSize();
        }
        int i = this.mCount;
        int i2 = this.head;
        int i3 = -1;
        for (int i4 = 0; i4 < i; i4++) {
            if (this.variables[i2] == solverVariable.f32id) {
                this.values[i2] = f;
                return;
            }
            if (this.variables[i2] < solverVariable.f32id) {
                i3 = i2;
            }
            i2 = this.next[i2];
            if (i2 == -1) {
                break;
            }
        }
        insertVariable(i3, solverVariable, f);
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public float remove(SolverVariable solverVariable, boolean z) {
        int iIndexOf = indexOf(solverVariable);
        if (iIndexOf == -1) {
            return 0.0f;
        }
        removeFromHashMap(solverVariable);
        float f = this.values[iIndexOf];
        if (this.head == iIndexOf) {
            this.head = this.next[iIndexOf];
        }
        this.variables[iIndexOf] = -1;
        int[] iArr = this.previous;
        if (iArr[iIndexOf] != -1) {
            int[] iArr2 = this.next;
            iArr2[iArr[iIndexOf]] = iArr2[iIndexOf];
        }
        int[] iArr3 = this.next;
        if (iArr3[iIndexOf] != -1) {
            int[] iArr4 = this.previous;
            iArr4[iArr3[iIndexOf]] = iArr4[iIndexOf];
        }
        this.mCount--;
        solverVariable.usageInRowCount--;
        if (z) {
            solverVariable.removeFromRow(this.mRow);
        }
        return f;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public void add(SolverVariable solverVariable, float f, boolean z) {
        float f2 = epsilon;
        if (f <= (-f2) || f >= f2) {
            int iIndexOf = indexOf(solverVariable);
            if (iIndexOf == -1) {
                put(solverVariable, f);
                return;
            }
            float[] fArr = this.values;
            fArr[iIndexOf] = fArr[iIndexOf] + f;
            float f3 = fArr[iIndexOf];
            float f4 = epsilon;
            if (f3 <= (-f4) || fArr[iIndexOf] >= f4) {
                return;
            }
            fArr[iIndexOf] = 0.0f;
            remove(solverVariable, z);
        }
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public float use(ArrayRow arrayRow, boolean z) {
        float f = get(arrayRow.variable);
        remove(arrayRow.variable, z);
        SolverVariableValues solverVariableValues = (SolverVariableValues) arrayRow.variables;
        int currentSize = solverVariableValues.getCurrentSize();
        int i = solverVariableValues.head;
        int i2 = 0;
        int i3 = 0;
        while (i2 < currentSize) {
            if (solverVariableValues.variables[i3] != -1) {
                add(this.mCache.mIndexedVariables[solverVariableValues.variables[i3]], solverVariableValues.values[i3] * f, z);
                i2++;
            }
            i3++;
        }
        return f;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public void invert() {
        int i = this.mCount;
        int i2 = this.head;
        for (int i3 = 0; i3 < i; i3++) {
            float[] fArr = this.values;
            fArr[i2] = fArr[i2] * (-1.0f);
            i2 = this.next[i2];
            if (i2 == -1) {
                return;
            }
        }
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public void divideByAmount(float f) {
        int i = this.mCount;
        int i2 = this.head;
        for (int i3 = 0; i3 < i; i3++) {
            float[] fArr = this.values;
            fArr[i2] = fArr[i2] / f;
            i2 = this.next[i2];
            if (i2 == -1) {
                return;
            }
        }
    }
}
