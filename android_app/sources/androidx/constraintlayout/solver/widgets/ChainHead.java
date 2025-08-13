package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ChainHead {
    private boolean mDefined;
    protected ConstraintWidget mFirst;
    protected ConstraintWidget mFirstMatchConstraintWidget;
    protected ConstraintWidget mFirstVisibleWidget;
    protected boolean mHasComplexMatchWeights;
    protected boolean mHasDefinedWeights;
    protected boolean mHasRatio;
    protected boolean mHasUndefinedWeights;
    protected ConstraintWidget mHead;
    private boolean mIsRtl;
    protected ConstraintWidget mLast;
    protected ConstraintWidget mLastMatchConstraintWidget;
    protected ConstraintWidget mLastVisibleWidget;
    boolean mOptimizable;
    private int mOrientation;
    int mTotalMargins;
    int mTotalSize;
    protected float mTotalWeight = 0.0f;
    int mVisibleWidgets;
    protected ArrayList<ConstraintWidget> mWeightedMatchConstraintsWidgets;
    protected int mWidgetsCount;
    protected int mWidgetsMatchCount;

    public ChainHead(ConstraintWidget constraintWidget, int i, boolean z) {
        this.mIsRtl = false;
        this.mFirst = constraintWidget;
        this.mOrientation = i;
        this.mIsRtl = z;
    }

    private static boolean isMatchConstraintEqualityCandidate(ConstraintWidget constraintWidget, int i) {
        return constraintWidget.getVisibility() != 8 && constraintWidget.mListDimensionBehaviors[i] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && (constraintWidget.mResolvedMatchConstraintDefault[i] == 0 || constraintWidget.mResolvedMatchConstraintDefault[i] == 3);
    }

    private void defineChainProperties() {
        int i = this.mOrientation * 2;
        ConstraintWidget constraintWidget = this.mFirst;
        this.mOptimizable = true;
        ConstraintWidget constraintWidget2 = constraintWidget;
        ConstraintWidget constraintWidget3 = constraintWidget2;
        boolean z = false;
        while (!z) {
            this.mWidgetsCount++;
            ConstraintWidget constraintWidget4 = null;
            constraintWidget2.mNextChainWidget[this.mOrientation] = null;
            constraintWidget2.mListNextMatchConstraintsWidget[this.mOrientation] = null;
            if (constraintWidget2.getVisibility() != 8) {
                this.mVisibleWidgets++;
                if (constraintWidget2.getDimensionBehaviour(this.mOrientation) != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.mTotalSize += constraintWidget2.getLength(this.mOrientation);
                }
                this.mTotalSize += constraintWidget2.mListAnchors[i].getMargin();
                int i2 = i + 1;
                this.mTotalSize += constraintWidget2.mListAnchors[i2].getMargin();
                this.mTotalMargins += constraintWidget2.mListAnchors[i].getMargin();
                this.mTotalMargins += constraintWidget2.mListAnchors[i2].getMargin();
                if (this.mFirstVisibleWidget == null) {
                    this.mFirstVisibleWidget = constraintWidget2;
                }
                this.mLastVisibleWidget = constraintWidget2;
                if (constraintWidget2.mListDimensionBehaviors[this.mOrientation] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    if (constraintWidget2.mResolvedMatchConstraintDefault[this.mOrientation] == 0 || constraintWidget2.mResolvedMatchConstraintDefault[this.mOrientation] == 3 || constraintWidget2.mResolvedMatchConstraintDefault[this.mOrientation] == 2) {
                        this.mWidgetsMatchCount++;
                        float f = constraintWidget2.mWeight[this.mOrientation];
                        if (f > 0.0f) {
                            this.mTotalWeight += constraintWidget2.mWeight[this.mOrientation];
                        }
                        if (isMatchConstraintEqualityCandidate(constraintWidget2, this.mOrientation)) {
                            if (f < 0.0f) {
                                this.mHasUndefinedWeights = true;
                            } else {
                                this.mHasDefinedWeights = true;
                            }
                            if (this.mWeightedMatchConstraintsWidgets == null) {
                                this.mWeightedMatchConstraintsWidgets = new ArrayList<>();
                            }
                            this.mWeightedMatchConstraintsWidgets.add(constraintWidget2);
                        }
                        if (this.mFirstMatchConstraintWidget == null) {
                            this.mFirstMatchConstraintWidget = constraintWidget2;
                        }
                        ConstraintWidget constraintWidget5 = this.mLastMatchConstraintWidget;
                        if (constraintWidget5 != null) {
                            constraintWidget5.mListNextMatchConstraintsWidget[this.mOrientation] = constraintWidget2;
                        }
                        this.mLastMatchConstraintWidget = constraintWidget2;
                    }
                    if (this.mOrientation == 0) {
                        if (constraintWidget2.mMatchConstraintDefaultWidth != 0 || constraintWidget2.mMatchConstraintMinWidth != 0 || constraintWidget2.mMatchConstraintMaxWidth != 0) {
                            this.mOptimizable = false;
                        }
                    } else if (constraintWidget2.mMatchConstraintDefaultHeight != 0 || constraintWidget2.mMatchConstraintMinHeight != 0 || constraintWidget2.mMatchConstraintMaxHeight != 0) {
                        this.mOptimizable = false;
                    }
                    if (constraintWidget2.mDimensionRatio != 0.0f) {
                        this.mOptimizable = false;
                        this.mHasRatio = true;
                    }
                }
            }
            if (constraintWidget3 != constraintWidget2) {
                constraintWidget3.mNextChainWidget[this.mOrientation] = constraintWidget2;
            }
            ConstraintAnchor constraintAnchor = constraintWidget2.mListAnchors[i + 1].mTarget;
            if (constraintAnchor != null) {
                ConstraintWidget constraintWidget6 = constraintAnchor.mOwner;
                if (constraintWidget6.mListAnchors[i].mTarget != null && constraintWidget6.mListAnchors[i].mTarget.mOwner == constraintWidget2) {
                    constraintWidget4 = constraintWidget6;
                }
            }
            if (constraintWidget4 == null) {
                constraintWidget4 = constraintWidget2;
                z = true;
            }
            constraintWidget3 = constraintWidget2;
            constraintWidget2 = constraintWidget4;
        }
        ConstraintWidget constraintWidget7 = this.mFirstVisibleWidget;
        if (constraintWidget7 != null) {
            this.mTotalSize -= constraintWidget7.mListAnchors[i].getMargin();
        }
        ConstraintWidget constraintWidget8 = this.mLastVisibleWidget;
        if (constraintWidget8 != null) {
            this.mTotalSize -= constraintWidget8.mListAnchors[i + 1].getMargin();
        }
        this.mLast = constraintWidget2;
        if (this.mOrientation == 0 && this.mIsRtl) {
            this.mHead = this.mLast;
        } else {
            this.mHead = this.mFirst;
        }
        this.mHasComplexMatchWeights = this.mHasDefinedWeights && this.mHasUndefinedWeights;
    }

    public ConstraintWidget getFirst() {
        return this.mFirst;
    }

    public ConstraintWidget getFirstVisibleWidget() {
        return this.mFirstVisibleWidget;
    }

    public ConstraintWidget getLast() {
        return this.mLast;
    }

    public ConstraintWidget getLastVisibleWidget() {
        return this.mLastVisibleWidget;
    }

    public ConstraintWidget getHead() {
        return this.mHead;
    }

    public ConstraintWidget getFirstMatchConstraintWidget() {
        return this.mFirstMatchConstraintWidget;
    }

    public ConstraintWidget getLastMatchConstraintWidget() {
        return this.mLastMatchConstraintWidget;
    }

    public float getTotalWeight() {
        return this.mTotalWeight;
    }

    public void define() {
        if (!this.mDefined) {
            defineChainProperties();
        }
        this.mDefined = true;
    }
}
