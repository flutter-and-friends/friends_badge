.class public Lcn/highlight/tx/app/entity/Lock;
.super Ljava/lang/Object;
.source "Lock.java"


# instance fields
.field private cabinetNumber:Ljava/lang/Integer;

.field private lockStatus:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcn/highlight/tx/app/entity/Lock;->cabinetNumber:Ljava/lang/Integer;

    .line 10
    iput-object p2, p0, Lcn/highlight/tx/app/entity/Lock;->lockStatus:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getCabinetNumber()Ljava/lang/Integer;
    .locals 1

    .line 17
    iget-object v0, p0, Lcn/highlight/tx/app/entity/Lock;->cabinetNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLockStatus()Ljava/lang/Integer;
    .locals 1

    .line 25
    iget-object v0, p0, Lcn/highlight/tx/app/entity/Lock;->lockStatus:Ljava/lang/Integer;

    return-object v0
.end method

.method public setCabinetNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcn/highlight/tx/app/entity/Lock;->cabinetNumber:Ljava/lang/Integer;

    return-void
.end method

.method public setLockStatus(Ljava/lang/Integer;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcn/highlight/tx/app/entity/Lock;->lockStatus:Ljava/lang/Integer;

    return-void
.end method
