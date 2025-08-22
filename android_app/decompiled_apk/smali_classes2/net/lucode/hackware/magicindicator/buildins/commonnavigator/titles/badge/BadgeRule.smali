.class public Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeRule;
.super Ljava/lang/Object;
.source "BadgeRule.java"


# instance fields
.field private mAnchor:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;

.field private mOffset:I


# direct methods
.method public constructor <init>(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeRule;->mAnchor:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;

    .line 13
    iput p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeRule;->mOffset:I

    return-void
.end method


# virtual methods
.method public getAnchor()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;
    .locals 1

    .line 17
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeRule;->mAnchor:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .line 25
    iget v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeRule;->mOffset:I

    return v0
.end method

.method public setAnchor(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeRule;->mAnchor:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    .line 29
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeRule;->mOffset:I

    return-void
.end method
