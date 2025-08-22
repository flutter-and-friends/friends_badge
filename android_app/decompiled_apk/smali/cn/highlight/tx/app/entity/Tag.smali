.class public Lcn/highlight/tx/app/entity/Tag;
.super Ljava/lang/Object;
.source "Tag.java"


# instance fields
.field private antennaNumber:Ljava/lang/Integer;

.field private epc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcn/highlight/tx/app/entity/Tag;->antennaNumber:Ljava/lang/Integer;

    .line 13
    iput-object p2, p0, Lcn/highlight/tx/app/entity/Tag;->epc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAntennaNumber()Ljava/lang/Integer;
    .locals 1

    .line 17
    iget-object v0, p0, Lcn/highlight/tx/app/entity/Tag;->antennaNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEpc()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcn/highlight/tx/app/entity/Tag;->epc:Ljava/lang/String;

    return-object v0
.end method

.method public setAntennaNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcn/highlight/tx/app/entity/Tag;->antennaNumber:Ljava/lang/Integer;

    return-void
.end method

.method public setEpc(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcn/highlight/tx/app/entity/Tag;->epc:Ljava/lang/String;

    return-void
.end method
