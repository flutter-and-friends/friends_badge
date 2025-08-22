.class public final synthetic Lcom/chad/library/adapter/base/BaseQuickAdapter$WhenMappings;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/chad/library/adapter/base/BaseQuickAdapter$AnimationType;->values()[Lcom/chad/library/adapter/base/BaseQuickAdapter$AnimationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/chad/library/adapter/base/BaseQuickAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Lcom/chad/library/adapter/base/BaseQuickAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/chad/library/adapter/base/BaseQuickAdapter$AnimationType;->AlphaIn:Lcom/chad/library/adapter/base/BaseQuickAdapter$AnimationType;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter$AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/chad/library/adapter/base/BaseQuickAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/chad/library/adapter/base/BaseQuickAdapter$AnimationType;->ScaleIn:Lcom/chad/library/adapter/base/BaseQuickAdapter$AnimationType;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter$AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lcom/chad/library/adapter/base/BaseQuickAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/chad/library/adapter/base/BaseQuickAdapter$AnimationType;->SlideInBottom:Lcom/chad/library/adapter/base/BaseQuickAdapter$AnimationType;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter$AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lcom/chad/library/adapter/base/BaseQuickAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/chad/library/adapter/base/BaseQuickAdapter$AnimationType;->SlideInLeft:Lcom/chad/library/adapter/base/BaseQuickAdapter$AnimationType;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter$AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v0, Lcom/chad/library/adapter/base/BaseQuickAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/chad/library/adapter/base/BaseQuickAdapter$AnimationType;->SlideInRight:Lcom/chad/library/adapter/base/BaseQuickAdapter$AnimationType;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter$AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    return-void
.end method
