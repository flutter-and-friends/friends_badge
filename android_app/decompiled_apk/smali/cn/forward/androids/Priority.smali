.class public final enum Lcn/forward/androids/Priority;
.super Ljava/lang/Enum;
.source "Priority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/forward/androids/Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/forward/androids/Priority;

.field public static final enum BG_LOW:Lcn/forward/androids/Priority;

.field public static final enum BG_NORMAL:Lcn/forward/androids/Priority;

.field public static final enum BG_TOP:Lcn/forward/androids/Priority;

.field public static final enum DEFAULT:Lcn/forward/androids/Priority;

.field public static final enum UI_LOW:Lcn/forward/androids/Priority;

.field public static final enum UI_NORMAL:Lcn/forward/androids/Priority;

.field public static final enum UI_TOP:Lcn/forward/androids/Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 4
    new-instance v0, Lcn/forward/androids/Priority;

    const/4 v1, 0x0

    const-string v2, "UI_TOP"

    invoke-direct {v0, v2, v1}, Lcn/forward/androids/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/forward/androids/Priority;->UI_TOP:Lcn/forward/androids/Priority;

    .line 5
    new-instance v0, Lcn/forward/androids/Priority;

    const/4 v2, 0x1

    const-string v3, "UI_NORMAL"

    invoke-direct {v0, v3, v2}, Lcn/forward/androids/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/forward/androids/Priority;->UI_NORMAL:Lcn/forward/androids/Priority;

    .line 6
    new-instance v0, Lcn/forward/androids/Priority;

    const/4 v3, 0x2

    const-string v4, "UI_LOW"

    invoke-direct {v0, v4, v3}, Lcn/forward/androids/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/forward/androids/Priority;->UI_LOW:Lcn/forward/androids/Priority;

    .line 7
    new-instance v0, Lcn/forward/androids/Priority;

    const/4 v4, 0x3

    const-string v5, "DEFAULT"

    invoke-direct {v0, v5, v4}, Lcn/forward/androids/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/forward/androids/Priority;->DEFAULT:Lcn/forward/androids/Priority;

    .line 8
    new-instance v0, Lcn/forward/androids/Priority;

    const/4 v5, 0x4

    const-string v6, "BG_TOP"

    invoke-direct {v0, v6, v5}, Lcn/forward/androids/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/forward/androids/Priority;->BG_TOP:Lcn/forward/androids/Priority;

    .line 9
    new-instance v0, Lcn/forward/androids/Priority;

    const/4 v6, 0x5

    const-string v7, "BG_NORMAL"

    invoke-direct {v0, v7, v6}, Lcn/forward/androids/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/forward/androids/Priority;->BG_NORMAL:Lcn/forward/androids/Priority;

    .line 10
    new-instance v0, Lcn/forward/androids/Priority;

    const/4 v7, 0x6

    const-string v8, "BG_LOW"

    invoke-direct {v0, v8, v7}, Lcn/forward/androids/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/forward/androids/Priority;->BG_LOW:Lcn/forward/androids/Priority;

    const/4 v0, 0x7

    new-array v0, v0, [Lcn/forward/androids/Priority;

    .line 3
    sget-object v8, Lcn/forward/androids/Priority;->UI_TOP:Lcn/forward/androids/Priority;

    aput-object v8, v0, v1

    sget-object v1, Lcn/forward/androids/Priority;->UI_NORMAL:Lcn/forward/androids/Priority;

    aput-object v1, v0, v2

    sget-object v1, Lcn/forward/androids/Priority;->UI_LOW:Lcn/forward/androids/Priority;

    aput-object v1, v0, v3

    sget-object v1, Lcn/forward/androids/Priority;->DEFAULT:Lcn/forward/androids/Priority;

    aput-object v1, v0, v4

    sget-object v1, Lcn/forward/androids/Priority;->BG_TOP:Lcn/forward/androids/Priority;

    aput-object v1, v0, v5

    sget-object v1, Lcn/forward/androids/Priority;->BG_NORMAL:Lcn/forward/androids/Priority;

    aput-object v1, v0, v6

    sget-object v1, Lcn/forward/androids/Priority;->BG_LOW:Lcn/forward/androids/Priority;

    aput-object v1, v0, v7

    sput-object v0, Lcn/forward/androids/Priority;->$VALUES:[Lcn/forward/androids/Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/forward/androids/Priority;
    .locals 1

    .line 3
    const-class v0, Lcn/forward/androids/Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/forward/androids/Priority;

    return-object p0
.end method

.method public static values()[Lcn/forward/androids/Priority;
    .locals 1

    .line 3
    sget-object v0, Lcn/forward/androids/Priority;->$VALUES:[Lcn/forward/androids/Priority;

    invoke-virtual {v0}, [Lcn/forward/androids/Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/forward/androids/Priority;

    return-object v0
.end method
