.class synthetic Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$1;
.super Ljava/lang/Object;
.source "ZzHorizontalProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$me$zhouzhuo$zzhorizontalprogressbar$ZzHorizontalProgressBar$ShowMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 761
    invoke-static {}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;->values()[Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$1;->$SwitchMap$me$zhouzhuo$zzhorizontalprogressbar$ZzHorizontalProgressBar$ShowMode:[I

    :try_start_0
    sget-object v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$1;->$SwitchMap$me$zhouzhuo$zzhorizontalprogressbar$ZzHorizontalProgressBar$ShowMode:[I

    sget-object v1, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;->ROUND:Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;

    invoke-virtual {v1}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$1;->$SwitchMap$me$zhouzhuo$zzhorizontalprogressbar$ZzHorizontalProgressBar$ShowMode:[I

    sget-object v1, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;->RECT:Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;

    invoke-virtual {v1}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$1;->$SwitchMap$me$zhouzhuo$zzhorizontalprogressbar$ZzHorizontalProgressBar$ShowMode:[I

    sget-object v1, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;->ROUND_RECT:Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;

    invoke-virtual {v1}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
