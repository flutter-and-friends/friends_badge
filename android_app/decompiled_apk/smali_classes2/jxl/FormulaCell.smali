.class public interface abstract Ljxl/FormulaCell;
.super Ljava/lang/Object;
.source "FormulaCell.java"

# interfaces
.implements Ljxl/Cell;


# virtual methods
.method public abstract getFormula()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation
.end method
