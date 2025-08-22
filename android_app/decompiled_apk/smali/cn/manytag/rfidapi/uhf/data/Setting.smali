.class public Lcn/manytag/rfidapi/uhf/data/Setting;
.super Ljava/lang/Object;


# instance fields
.field private WorkingFrequency:Ljava/lang/String;

.field private gattery:I

.field private power:I

.field private readingCycle:I

.field private restCycle:I

.field private sound:Z

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGattery()I
    .locals 1

    iget v0, p0, Lcn/manytag/rfidapi/uhf/data/Setting;->gattery:I

    return v0
.end method

.method public getPower()I
    .locals 1

    iget v0, p0, Lcn/manytag/rfidapi/uhf/data/Setting;->power:I

    return v0
.end method

.method public getReadingCycle()I
    .locals 1

    iget v0, p0, Lcn/manytag/rfidapi/uhf/data/Setting;->readingCycle:I

    return v0
.end method

.method public getRestCycle()I
    .locals 1

    iget v0, p0, Lcn/manytag/rfidapi/uhf/data/Setting;->restCycle:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/manytag/rfidapi/uhf/data/Setting;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkingFrequency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/manytag/rfidapi/uhf/data/Setting;->WorkingFrequency:Ljava/lang/String;

    return-object v0
.end method

.method public isSound()Z
    .locals 1

    iget-boolean v0, p0, Lcn/manytag/rfidapi/uhf/data/Setting;->sound:Z

    return v0
.end method

.method public setGattery(I)V
    .locals 0

    iput p1, p0, Lcn/manytag/rfidapi/uhf/data/Setting;->gattery:I

    return-void
.end method

.method public setPower(I)V
    .locals 0

    iput p1, p0, Lcn/manytag/rfidapi/uhf/data/Setting;->power:I

    return-void
.end method

.method public setReadingCycle(I)V
    .locals 0

    iput p1, p0, Lcn/manytag/rfidapi/uhf/data/Setting;->readingCycle:I

    return-void
.end method

.method public setRestCycle(I)V
    .locals 0

    iput p1, p0, Lcn/manytag/rfidapi/uhf/data/Setting;->restCycle:I

    return-void
.end method

.method public setSound(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/manytag/rfidapi/uhf/data/Setting;->sound:Z

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/uhf/data/Setting;->version:Ljava/lang/String;

    return-void
.end method

.method public setWorkingFrequency(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/uhf/data/Setting;->WorkingFrequency:Ljava/lang/String;

    return-void
.end method
