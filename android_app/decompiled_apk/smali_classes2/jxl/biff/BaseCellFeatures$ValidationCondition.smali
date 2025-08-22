.class public Ljxl/biff/BaseCellFeatures$ValidationCondition;
.super Ljava/lang/Object;
.source "BaseCellFeatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/biff/BaseCellFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ValidationCondition"
.end annotation


# static fields
.field private static types:[Ljxl/biff/BaseCellFeatures$ValidationCondition;


# instance fields
.field private condition:Ljxl/biff/DVParser$Condition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljxl/biff/BaseCellFeatures$ValidationCondition;

    .line 100
    sput-object v0, Ljxl/biff/BaseCellFeatures$ValidationCondition;->types:[Ljxl/biff/BaseCellFeatures$ValidationCondition;

    return-void
.end method

.method constructor <init>(Ljxl/biff/DVParser$Condition;)V
    .locals 3

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Ljxl/biff/BaseCellFeatures$ValidationCondition;->condition:Ljxl/biff/DVParser$Condition;

    .line 105
    sget-object p1, Ljxl/biff/BaseCellFeatures$ValidationCondition;->types:[Ljxl/biff/BaseCellFeatures$ValidationCondition;

    .line 106
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljxl/biff/BaseCellFeatures$ValidationCondition;

    sput-object v0, Ljxl/biff/BaseCellFeatures$ValidationCondition;->types:[Ljxl/biff/BaseCellFeatures$ValidationCondition;

    .line 107
    sget-object v0, Ljxl/biff/BaseCellFeatures$ValidationCondition;->types:[Ljxl/biff/BaseCellFeatures$ValidationCondition;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    sget-object v0, Ljxl/biff/BaseCellFeatures$ValidationCondition;->types:[Ljxl/biff/BaseCellFeatures$ValidationCondition;

    array-length p1, p1

    aput-object p0, v0, p1

    return-void
.end method


# virtual methods
.method public getCondition()Ljxl/biff/DVParser$Condition;
    .locals 1

    .line 113
    iget-object v0, p0, Ljxl/biff/BaseCellFeatures$ValidationCondition;->condition:Ljxl/biff/DVParser$Condition;

    return-object v0
.end method
