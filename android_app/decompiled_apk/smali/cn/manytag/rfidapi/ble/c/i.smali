.class public Lcn/manytag/rfidapi/ble/c/i;
.super Ljava/lang/Object;


# instance fields
.field private a:[Ljava/util/UUID;

.field private b:[Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/manytag/rfidapi/ble/c/i;->a:[Ljava/util/UUID;

    iput-object v0, p0, Lcn/manytag/rfidapi/ble/c/i;->b:[Ljava/lang/String;

    iput-object v0, p0, Lcn/manytag/rfidapi/ble/c/i;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/manytag/rfidapi/ble/c/i;->d:Z

    iput-boolean v0, p0, Lcn/manytag/rfidapi/ble/c/i;->e:Z

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcn/manytag/rfidapi/ble/c/i;->f:J

    return-void
.end method


# virtual methods
.method public a()[Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/c/i;->a:[Ljava/util/UUID;

    return-object v0
.end method

.method public b()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/c/i;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/c/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcn/manytag/rfidapi/ble/c/i;->d:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcn/manytag/rfidapi/ble/c/i;->e:Z

    return v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcn/manytag/rfidapi/ble/c/i;->f:J

    return-wide v0
.end method
