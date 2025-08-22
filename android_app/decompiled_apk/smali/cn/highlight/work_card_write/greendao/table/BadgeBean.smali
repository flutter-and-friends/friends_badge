.class public Lcn/highlight/work_card_write/greendao/table/BadgeBean;
.super Ljava/lang/Object;
.source "BadgeBean.java"


# instance fields
.field private YL1:Ljava/lang/String;

.field private YL2:Ljava/lang/String;

.field private YL3:Ljava/lang/String;

.field private bitmapEnd:[B

.field private bitmapStart:[B

.field private color:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private imageName:Ljava/lang/String;

.field private size:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->id:Ljava/lang/Long;

    .line 26
    iput-object p2, p0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->imageName:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->size:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->color:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->bitmapStart:[B

    .line 30
    iput-object p6, p0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->bitmapEnd:[B

    .line 31
    iput-object p7, p0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->time:Ljava/lang/String;

    .line 32
    iput-object p8, p0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->YL1:Ljava/lang/String;

    .line 33
    iput-object p9, p0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->YL2:Ljava/lang/String;

    .line 34
    iput-object p10, p0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->YL3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBitmapEnd()[B
    .locals 1

    .line 82
    iget-object v0, p0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->bitmapEnd:[B

    return-object v0
.end method

.method public getBitmapStart()[B
    .locals 1

    .line 74
    iget-object v0, p0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->bitmapStart:[B

    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 42
    iget-object v0, p0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getImageName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->imageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getYL1()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->YL1:Ljava/lang/String;

    return-object v0
.end method

.method public getYL2()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->YL2:Ljava/lang/String;

    return-object v0
.end method

.method public getYL3()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->YL3:Ljava/lang/String;

    return-object v0
.end method

.method public setBitmapEnd([B)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->bitmapEnd:[B

    return-void
.end method

.method public setBitmapStart([B)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->bitmapStart:[B

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->color:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->id:Ljava/lang/Long;

    return-void
.end method

.method public setImageName(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->imageName:Ljava/lang/String;

    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->size:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->time:Ljava/lang/String;

    return-void
.end method

.method public setYL1(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->YL1:Ljava/lang/String;

    return-void
.end method

.method public setYL2(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->YL2:Ljava/lang/String;

    return-void
.end method

.method public setYL3(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->YL3:Ljava/lang/String;

    return-void
.end method
