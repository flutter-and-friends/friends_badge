.class public Lcn/manytag/rfidapi/ble/data/a;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcn/manytag/rfidapi/ble/data/a;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcn/manytag/rfidapi/ble/data/a;->a:I

    return v0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/manytag/rfidapi/ble/data/a;->b:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcn/manytag/rfidapi/ble/data/a;->b:Z

    return v0
.end method
