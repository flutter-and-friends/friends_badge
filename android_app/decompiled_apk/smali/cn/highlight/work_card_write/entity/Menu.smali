.class public Lcn/highlight/work_card_write/entity/Menu;
.super Ljava/lang/Object;
.source "Menu.java"


# instance fields
.field private content:Ljava/lang/String;

.field private fileType:Ljava/lang/String;

.field private id:I

.field private isSelected:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcn/highlight/work_card_write/entity/Menu;->id:I

    .line 19
    iput-object p2, p0, Lcn/highlight/work_card_write/entity/Menu;->content:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcn/highlight/work_card_write/entity/Menu;->id:I

    .line 24
    iput-object p2, p0, Lcn/highlight/work_card_write/entity/Menu;->content:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcn/highlight/work_card_write/entity/Menu;->fileType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcn/highlight/work_card_write/entity/Menu;->id:I

    .line 30
    iput-object p2, p0, Lcn/highlight/work_card_write/entity/Menu;->content:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcn/highlight/work_card_write/entity/Menu;->fileType:Ljava/lang/String;

    .line 32
    iput-boolean p4, p0, Lcn/highlight/work_card_write/entity/Menu;->isSelected:Z

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcn/highlight/work_card_write/entity/Menu;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcn/highlight/work_card_write/entity/Menu;->fileType:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 36
    iget v0, p0, Lcn/highlight/work_card_write/entity/Menu;->id:I

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcn/highlight/work_card_write/entity/Menu;->isSelected:Z

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcn/highlight/work_card_write/entity/Menu;->content:Ljava/lang/String;

    return-void
.end method

.method public setFileType(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcn/highlight/work_card_write/entity/Menu;->fileType:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcn/highlight/work_card_write/entity/Menu;->id:I

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcn/highlight/work_card_write/entity/Menu;->isSelected:Z

    return-void
.end method
