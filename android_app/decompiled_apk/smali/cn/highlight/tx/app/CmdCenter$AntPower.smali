.class public Lcn/highlight/tx/app/CmdCenter$AntPower;
.super Ljava/lang/Object;
.source "CmdCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/tx/app/CmdCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AntPower"
.end annotation


# instance fields
.field private ant:I

.field private power:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    iput p1, p0, Lcn/highlight/tx/app/CmdCenter$AntPower;->ant:I

    .line 493
    iput p2, p0, Lcn/highlight/tx/app/CmdCenter$AntPower;->power:I

    return-void
.end method


# virtual methods
.method public getAnt()I
    .locals 1

    .line 497
    iget v0, p0, Lcn/highlight/tx/app/CmdCenter$AntPower;->ant:I

    return v0
.end method

.method public getPower()I
    .locals 1

    .line 505
    iget v0, p0, Lcn/highlight/tx/app/CmdCenter$AntPower;->power:I

    return v0
.end method

.method public setAnt(I)V
    .locals 0

    .line 501
    iput p1, p0, Lcn/highlight/tx/app/CmdCenter$AntPower;->ant:I

    return-void
.end method

.method public setPower(I)V
    .locals 0

    .line 509
    iput p1, p0, Lcn/highlight/tx/app/CmdCenter$AntPower;->power:I

    return-void
.end method
