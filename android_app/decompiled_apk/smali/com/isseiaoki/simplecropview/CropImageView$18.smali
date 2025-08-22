.class synthetic Lcom/isseiaoki/simplecropview/CropImageView$18;
.super Ljava/lang/Object;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isseiaoki/simplecropview/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$isseiaoki$simplecropview$CropImageView$CropMode:[I

.field static final synthetic $SwitchMap$com$isseiaoki$simplecropview$CropImageView$ShowMode:[I

.field static final synthetic $SwitchMap$com$isseiaoki$simplecropview$CropImageView$TouchArea:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 2094
    invoke-static {}, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->values()[Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/isseiaoki/simplecropview/CropImageView$18;->$SwitchMap$com$isseiaoki$simplecropview$CropImageView$ShowMode:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$18;->$SwitchMap$com$isseiaoki$simplecropview$CropImageView$ShowMode:[I

    sget-object v2, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->SHOW_ALWAYS:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    invoke-virtual {v2}, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/isseiaoki/simplecropview/CropImageView$18;->$SwitchMap$com$isseiaoki$simplecropview$CropImageView$ShowMode:[I

    sget-object v3, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->NOT_SHOW:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    invoke-virtual {v3}, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/isseiaoki/simplecropview/CropImageView$18;->$SwitchMap$com$isseiaoki$simplecropview$CropImageView$ShowMode:[I

    sget-object v4, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->SHOW_ON_TOUCH:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    invoke-virtual {v4}, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 1044
    :catch_2
    invoke-static {}, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->values()[Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/isseiaoki/simplecropview/CropImageView$18;->$SwitchMap$com$isseiaoki$simplecropview$CropImageView$CropMode:[I

    :try_start_3
    sget-object v3, Lcom/isseiaoki/simplecropview/CropImageView$18;->$SwitchMap$com$isseiaoki$simplecropview$CropImageView$CropMode:[I

    sget-object v4, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->FIT_IMAGE:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    invoke-virtual {v4}, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/isseiaoki/simplecropview/CropImageView$18;->$SwitchMap$com$isseiaoki$simplecropview$CropImageView$CropMode:[I

    sget-object v4, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->FREE:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    invoke-virtual {v4}, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/isseiaoki/simplecropview/CropImageView$18;->$SwitchMap$com$isseiaoki$simplecropview$CropImageView$CropMode:[I

    sget-object v4, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->RATIO_4_3:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    invoke-virtual {v4}, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v3, 0x4

    :try_start_6
    sget-object v4, Lcom/isseiaoki/simplecropview/CropImageView$18;->$SwitchMap$com$isseiaoki$simplecropview$CropImageView$CropMode:[I

    sget-object v5, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->RATIO_3_4:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    invoke-virtual {v5}, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/4 v4, 0x5

    :try_start_7
    sget-object v5, Lcom/isseiaoki/simplecropview/CropImageView$18;->$SwitchMap$com$isseiaoki$simplecropview$CropImageView$CropMode:[I

    sget-object v6, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->RATIO_16_9:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    invoke-virtual {v6}, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/4 v5, 0x6

    :try_start_8
    sget-object v6, Lcom/isseiaoki/simplecropview/CropImageView$18;->$SwitchMap$com$isseiaoki$simplecropview$CropImageView$CropMode:[I

    sget-object v7, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->RATIO_9_16:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    invoke-virtual {v7}, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v6, Lcom/isseiaoki/simplecropview/CropImageView$18;->$SwitchMap$com$isseiaoki$simplecropview$CropImageView$CropMode:[I

    sget-object v7, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->SQUARE:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    invoke-virtual {v7}, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->ordinal()I

    move-result v7

    const/4 v8, 0x7

    aput v8, v6, v7
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v6, Lcom/isseiaoki/simplecropview/CropImageView$18;->$SwitchMap$com$isseiaoki$simplecropview$CropImageView$CropMode:[I

    sget-object v7, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->CIRCLE:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    invoke-virtual {v7}, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->ordinal()I

    move-result v7

    const/16 v8, 0x8

    aput v8, v6, v7
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v6, Lcom/isseiaoki/simplecropview/CropImageView$18;->$SwitchMap$com$isseiaoki$simplecropview$CropImageView$CropMode:[I

    sget-object v7, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->CIRCLE_SQUARE:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    invoke-virtual {v7}, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->ordinal()I

    move-result v7

    const/16 v8, 0x9

    aput v8, v6, v7
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v6, Lcom/isseiaoki/simplecropview/CropImageView$18;->$SwitchMap$com$isseiaoki$simplecropview$CropImageView$CropMode:[I

    sget-object v7, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->CUSTOM:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    invoke-virtual {v7}, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->ordinal()I

    move-result v7

    const/16 v8, 0xa

    aput v8, v6, v7
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    .line 636
    :catch_c
    invoke-static {}, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->values()[Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lcom/isseiaoki/simplecropview/CropImageView$18;->$SwitchMap$com$isseiaoki$simplecropview$CropImageView$TouchArea:[I

    :try_start_d
    sget-object v6, Lcom/isseiaoki/simplecropview/CropImageView$18;->$SwitchMap$com$isseiaoki$simplecropview$CropImageView$TouchArea:[I

    sget-object v7, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->CENTER:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    invoke-virtual {v7}, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$18;->$SwitchMap$com$isseiaoki$simplecropview$CropImageView$TouchArea:[I

    sget-object v6, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->LEFT_TOP:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    invoke-virtual {v6}, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->ordinal()I

    move-result v6

    aput v1, v0, v6
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$18;->$SwitchMap$com$isseiaoki$simplecropview$CropImageView$TouchArea:[I

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->RIGHT_TOP:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    invoke-virtual {v1}, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$18;->$SwitchMap$com$isseiaoki$simplecropview$CropImageView$TouchArea:[I

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->LEFT_BOTTOM:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    invoke-virtual {v1}, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$18;->$SwitchMap$com$isseiaoki$simplecropview$CropImageView$TouchArea:[I

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->RIGHT_BOTTOM:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    invoke-virtual {v1}, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$18;->$SwitchMap$com$isseiaoki$simplecropview$CropImageView$TouchArea:[I

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->OUT_OF_BOUNDS:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    invoke-virtual {v1}, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    return-void
.end method
