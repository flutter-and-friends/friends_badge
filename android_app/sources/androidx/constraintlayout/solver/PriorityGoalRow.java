package androidx.constraintlayout.solver;

import androidx.constraintlayout.solver.ArrayRow;
import java.util.Arrays;
import java.util.Comparator;

/* loaded from: classes.dex */
public class PriorityGoalRow extends ArrayRow {
    private static final boolean DEBUG = false;
    static final int NOT_FOUND = -1;
    private static final float epsilon = 1.0E-4f;
    private int TABLE_SIZE;
    GoalVariableAccessor accessor;
    private SolverVariable[] arrayGoals;
    Cache mCache;
    private int numGoals;
    private SolverVariable[] sortArray;

    class GoalVariableAccessor implements Comparable {
        PriorityGoalRow row;
        SolverVariable variable;

        public GoalVariableAccessor(PriorityGoalRow priorityGoalRow) {
            this.row = priorityGoalRow;
        }

        public void init(SolverVariable solverVariable) {
            this.variable = solverVariable;
        }

        public boolean addToGoal(SolverVariable solverVariable, float f) {
            boolean z = true;
            if (!this.variable.inGoal) {
                for (int i = 0; i < 9; i++) {
                    float f2 = solverVariable.goalStrengthVector[i];
                    if (f2 != 0.0f) {
                        float f3 = f2 * f;
                        if (Math.abs(f3) < 1.0E-4f) {
                            f3 = 0.0f;
                        }
                        this.variable.goalStrengthVector[i] = f3;
                    } else {
                        this.variable.goalStrengthVector[i] = 0.0f;
                    }
                }
                return true;
            }
            for (int i2 = 0; i2 < 9; i2++) {
                float[] fArr = this.variable.goalStrengthVector;
                fArr[i2] = fArr[i2] + (solverVariable.goalStrengthVector[i2] * f);
                if (Math.abs(this.variable.goalStrengthVector[i2]) < 1.0E-4f) {
                    this.variable.goalStrengthVector[i2] = 0.0f;
                } else {
                    z = false;
                }
            }
            if (z) {
                PriorityGoalRow.this.removeGoal(this.variable);
            }
            return false;
        }

        public void add(SolverVariable solverVariable) {
            for (int i = 0; i < 9; i++) {
                float[] fArr = this.variable.goalStrengthVector;
                fArr[i] = fArr[i] + solverVariable.goalStrengthVector[i];
                if (Math.abs(this.variable.goalStrengthVector[i]) < 1.0E-4f) {
                    this.variable.goalStrengthVector[i] = 0.0f;
                }
            }
        }

        public final boolean isNegative() {
            for (int i = 8; i >= 0; i--) {
                float f = this.variable.goalStrengthVector[i];
                if (f > 0.0f) {
                    return false;
                }
                if (f < 0.0f) {
                    return true;
                }
            }
            return false;
        }

        public final boolean isSmallerThan(SolverVariable solverVariable) {
            int i = 8;
            while (true) {
                if (i < 0) {
                    break;
                }
                float f = solverVariable.goalStrengthVector[i];
                float f2 = this.variable.goalStrengthVector[i];
                if (f2 == f) {
                    i--;
                } else if (f2 < f) {
                    return true;
                }
            }
            return false;
        }

        public final boolean isNull() {
            for (int i = 0; i < 9; i++) {
                if (this.variable.goalStrengthVector[i] != 0.0f) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            return this.variable.f32id - ((SolverVariable) obj).f32id;
        }

        public void reset() {
            Arrays.fill(this.variable.goalStrengthVector, 0.0f);
        }

        public String toString() {
            String str = "[ ";
            if (this.variable != null) {
                for (int i = 0; i < 9; i++) {
                    str = str + this.variable.goalStrengthVector[i] + " ";
                }
            }
            return str + "] " + this.variable;
        }
    }

    @Override // androidx.constraintlayout.solver.ArrayRow, androidx.constraintlayout.solver.LinearSystem.Row
    public void clear() {
        this.numGoals = 0;
        this.constantValue = 0.0f;
    }

    public PriorityGoalRow(Cache cache) {
        super(cache);
        this.TABLE_SIZE = 128;
        int i = this.TABLE_SIZE;
        this.arrayGoals = new SolverVariable[i];
        this.sortArray = new SolverVariable[i];
        this.numGoals = 0;
        this.accessor = new GoalVariableAccessor(this);
        this.mCache = cache;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow, androidx.constraintlayout.solver.LinearSystem.Row
    public boolean isEmpty() {
        return this.numGoals == 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    @Override // androidx.constraintlayout.solver.ArrayRow, androidx.constraintlayout.solver.LinearSystem.Row
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public androidx.constraintlayout.solver.SolverVariable getPivotCandidate(androidx.constraintlayout.solver.LinearSystem r5, boolean[] r6) {
        /*
            r4 = this;
            r5 = -1
            r0 = 0
            r1 = -1
        L3:
            int r2 = r4.numGoals
            if (r0 >= r2) goto L32
            androidx.constraintlayout.solver.SolverVariable[] r2 = r4.arrayGoals
            r2 = r2[r0]
            int r3 = r2.f32id
            boolean r3 = r6[r3]
            if (r3 == 0) goto L12
            goto L2f
        L12:
            androidx.constraintlayout.solver.PriorityGoalRow$GoalVariableAccessor r3 = r4.accessor
            r3.init(r2)
            if (r1 != r5) goto L22
            androidx.constraintlayout.solver.PriorityGoalRow$GoalVariableAccessor r2 = r4.accessor
            boolean r2 = r2.isNegative()
            if (r2 == 0) goto L2f
            goto L2e
        L22:
            androidx.constraintlayout.solver.PriorityGoalRow$GoalVariableAccessor r2 = r4.accessor
            androidx.constraintlayout.solver.SolverVariable[] r3 = r4.arrayGoals
            r3 = r3[r1]
            boolean r2 = r2.isSmallerThan(r3)
            if (r2 == 0) goto L2f
        L2e:
            r1 = r0
        L2f:
            int r0 = r0 + 1
            goto L3
        L32:
            if (r1 != r5) goto L36
            r5 = 0
            return r5
        L36:
            androidx.constraintlayout.solver.SolverVariable[] r5 = r4.arrayGoals
            r5 = r5[r1]
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.PriorityGoalRow.getPivotCandidate(androidx.constraintlayout.solver.LinearSystem, boolean[]):androidx.constraintlayout.solver.SolverVariable");
    }

    @Override // androidx.constraintlayout.solver.ArrayRow, androidx.constraintlayout.solver.LinearSystem.Row
    public void addError(SolverVariable solverVariable) {
        this.accessor.init(solverVariable);
        this.accessor.reset();
        solverVariable.goalStrengthVector[solverVariable.strength] = 1.0f;
        addToGoal(solverVariable);
    }

    private final void addToGoal(SolverVariable solverVariable) {
        int i;
        int i2 = this.numGoals + 1;
        SolverVariable[] solverVariableArr = this.arrayGoals;
        if (i2 > solverVariableArr.length) {
            this.arrayGoals = (SolverVariable[]) Arrays.copyOf(solverVariableArr, solverVariableArr.length * 2);
            SolverVariable[] solverVariableArr2 = this.arrayGoals;
            this.sortArray = (SolverVariable[]) Arrays.copyOf(solverVariableArr2, solverVariableArr2.length * 2);
        }
        SolverVariable[] solverVariableArr3 = this.arrayGoals;
        int i3 = this.numGoals;
        solverVariableArr3[i3] = solverVariable;
        this.numGoals = i3 + 1;
        int i4 = this.numGoals;
        if (i4 > 1 && solverVariableArr3[i4 - 1].f32id > solverVariable.f32id) {
            int i5 = 0;
            while (true) {
                i = this.numGoals;
                if (i5 >= i) {
                    break;
                }
                this.sortArray[i5] = this.arrayGoals[i5];
                i5++;
            }
            Arrays.sort(this.sortArray, 0, i, new Comparator<SolverVariable>() { // from class: androidx.constraintlayout.solver.PriorityGoalRow.1
                @Override // java.util.Comparator
                public int compare(SolverVariable solverVariable2, SolverVariable solverVariable3) {
                    return solverVariable2.f32id - solverVariable3.f32id;
                }
            });
            for (int i6 = 0; i6 < this.numGoals; i6++) {
                this.arrayGoals[i6] = this.sortArray[i6];
            }
        }
        solverVariable.inGoal = true;
        solverVariable.addToRow(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeGoal(SolverVariable solverVariable) {
        int i = 0;
        while (i < this.numGoals) {
            if (this.arrayGoals[i] == solverVariable) {
                while (true) {
                    int i2 = this.numGoals;
                    if (i < i2 - 1) {
                        SolverVariable[] solverVariableArr = this.arrayGoals;
                        int i3 = i + 1;
                        solverVariableArr[i] = solverVariableArr[i3];
                        i = i3;
                    } else {
                        this.numGoals = i2 - 1;
                        solverVariable.inGoal = false;
                        return;
                    }
                }
            } else {
                i++;
            }
        }
    }

    @Override // androidx.constraintlayout.solver.ArrayRow, androidx.constraintlayout.solver.LinearSystem.Row
    public void updateFromRow(LinearSystem linearSystem, ArrayRow arrayRow, boolean z) {
        SolverVariable solverVariable = arrayRow.variable;
        if (solverVariable == null) {
            return;
        }
        ArrayRow.ArrayRowVariables arrayRowVariables = arrayRow.variables;
        int currentSize = arrayRowVariables.getCurrentSize();
        for (int i = 0; i < currentSize; i++) {
            SolverVariable variable = arrayRowVariables.getVariable(i);
            float variableValue = arrayRowVariables.getVariableValue(i);
            this.accessor.init(variable);
            if (this.accessor.addToGoal(solverVariable, variableValue)) {
                addToGoal(variable);
            }
            this.constantValue += arrayRow.constantValue * variableValue;
        }
        removeGoal(solverVariable);
    }

    @Override // androidx.constraintlayout.solver.ArrayRow
    public String toString() {
        String str = " goal -> (" + this.constantValue + ") : ";
        for (int i = 0; i < this.numGoals; i++) {
            this.accessor.init(this.arrayGoals[i]);
            str = str + this.accessor + " ";
        }
        return str;
    }
}
