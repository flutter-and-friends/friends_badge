.class public Lcn/highlight/work_card_write/entity/HomeMenu;
.super Ljava/lang/Object;
.source "HomeMenu.java"


# instance fields
.field public iconRes:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcn/highlight/work_card_write/entity/HomeMenu;->name:Ljava/lang/String;

    .line 9
    iput p2, p0, Lcn/highlight/work_card_write/entity/HomeMenu;->iconRes:I

    return-void
.end method


# virtual methods
.method public getIconRes()I
    .locals 1

    .line 21
    iget v0, p0, Lcn/highlight/work_card_write/entity/HomeMenu;->iconRes:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcn/highlight/work_card_write/entity/HomeMenu;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setIconRes(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcn/highlight/work_card_write/entity/HomeMenu;->iconRes:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcn/highlight/work_card_write/entity/HomeMenu;->name:Ljava/lang/String;

    return-void
.end method
