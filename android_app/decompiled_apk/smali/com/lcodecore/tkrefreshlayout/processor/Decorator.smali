.class public abstract Lcom/lcodecore/tkrefreshlayout/processor/Decorator;
.super Ljava/lang/Object;
.source "Decorator.java"

# interfaces
.implements Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;


# instance fields
.field protected cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

.field protected decorator:Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;


# direct methods
.method public constructor <init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/Decorator;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    .line 15
    iput-object p2, p0, Lcom/lcodecore/tkrefreshlayout/processor/Decorator;->decorator:Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;

    return-void
.end method
