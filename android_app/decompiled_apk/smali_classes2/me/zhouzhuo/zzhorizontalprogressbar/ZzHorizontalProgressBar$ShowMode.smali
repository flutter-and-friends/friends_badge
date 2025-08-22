.class public final enum Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;
.super Ljava/lang/Enum;
.source "ZzHorizontalProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShowMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;

.field public static final enum RECT:Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;

.field public static final enum ROUND:Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;

.field public static final enum ROUND_RECT:Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 54
    new-instance v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;

    const/4 v1, 0x0

    const-string v2, "ROUND"

    invoke-direct {v0, v2, v1}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;->ROUND:Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;

    new-instance v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;

    const/4 v2, 0x1

    const-string v3, "RECT"

    invoke-direct {v0, v3, v2}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;->RECT:Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;

    new-instance v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;

    const/4 v3, 0x2

    const-string v4, "ROUND_RECT"

    invoke-direct {v0, v4, v3}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;->ROUND_RECT:Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;

    .line 53
    sget-object v4, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;->ROUND:Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;

    aput-object v4, v0, v1

    sget-object v1, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;->RECT:Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;

    aput-object v1, v0, v2

    sget-object v1, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;->ROUND_RECT:Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;

    aput-object v1, v0, v3

    sput-object v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;->$VALUES:[Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;
    .locals 1

    .line 53
    const-class v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;

    return-object p0
.end method

.method public static values()[Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;
    .locals 1

    .line 53
    sget-object v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;->$VALUES:[Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;

    invoke-virtual {v0}, [Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;

    return-object v0
.end method
