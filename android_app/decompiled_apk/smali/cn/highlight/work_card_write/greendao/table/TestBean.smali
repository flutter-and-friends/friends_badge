.class public Lcn/highlight/work_card_write/greendao/table/TestBean;
.super Ljava/lang/Object;
.source "TestBean.java"


# instance fields
.field private content:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcn/highlight/work_card_write/greendao/table/TestBean;->id:Ljava/lang/Long;

    .line 18
    iput-object p2, p0, Lcn/highlight/work_card_write/greendao/table/TestBean;->title:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcn/highlight/work_card_write/greendao/table/TestBean;->content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcn/highlight/work_card_write/greendao/table/TestBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 27
    iget-object v0, p0, Lcn/highlight/work_card_write/greendao/table/TestBean;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcn/highlight/work_card_write/greendao/table/TestBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcn/highlight/work_card_write/greendao/table/TestBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcn/highlight/work_card_write/greendao/table/TestBean;->id:Ljava/lang/Long;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcn/highlight/work_card_write/greendao/table/TestBean;->title:Ljava/lang/String;

    return-void
.end method
