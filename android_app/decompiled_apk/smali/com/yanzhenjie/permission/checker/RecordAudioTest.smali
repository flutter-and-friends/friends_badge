.class Lcom/yanzhenjie/permission/checker/RecordAudioTest;
.super Ljava/lang/Object;
.source "RecordAudioTest.java"

# interfaces
.implements Lcom/yanzhenjie/permission/checker/PermissionTest;


# static fields
.field private static final RATES:[I


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 29
    fill-array-data v0, :array_0

    sput-object v0, Lcom/yanzhenjie/permission/checker/RecordAudioTest;->RATES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1f40
        0x2b11
        0x5622
        0xac44
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/yanzhenjie/permission/checker/RecordAudioTest;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static existMicrophone(Landroid/content/Context;)Z
    .locals 1

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.microphone"

    .line 59
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static findAudioRecord()Landroid/media/AudioRecord;
    .locals 21

    .line 63
    sget-object v0, Lcom/yanzhenjie/permission/checker/RecordAudioTest;->RATES:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget v10, v0, v3

    const/4 v11, 0x2

    new-array v12, v11, [S

    .line 64
    fill-array-data v12, :array_0

    array-length v13, v12

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_3

    aget-short v15, v12, v14

    new-array v9, v11, [S

    .line 65
    fill-array-data v9, :array_1

    array-length v8, v9

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v8, :cond_2

    aget-short v6, v9, v7

    .line 66
    invoke-static {v10, v6, v15}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    const/4 v4, -0x2

    if-eq v5, v4, :cond_0

    .line 68
    new-instance v16, Landroid/media/AudioRecord;

    const/16 v17, 0x1

    move-object/from16 v4, v16

    move/from16 v18, v5

    move/from16 v5, v17

    move/from16 v17, v6

    move v6, v10

    move/from16 v19, v7

    move/from16 v7, v17

    move/from16 v17, v8

    move v8, v15

    move-object/from16 v20, v9

    move/from16 v9, v18

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 70
    invoke-virtual/range {v16 .. v16}, Landroid/media/AudioRecord;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    return-object v16

    :cond_0
    move/from16 v19, v7

    move/from16 v17, v8

    move-object/from16 v20, v9

    :cond_1
    add-int/lit8 v7, v19, 0x1

    move/from16 v8, v17

    move-object/from16 v9, v20

    goto :goto_2

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    return-object v0

    nop

    :array_0
    .array-data 2
        0x3s
        0x2s
    .end array-data

    :array_1
    .array-data 2
        0x10s
        0xcs
    .end array-data
.end method


# virtual methods
.method public test()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 39
    invoke-static {}, Lcom/yanzhenjie/permission/checker/RecordAudioTest;->findAudioRecord()Landroid/media/AudioRecord;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 42
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 51
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_0
    return v1

    .line 44
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/yanzhenjie/permission/checker/RecordAudioTest;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/yanzhenjie/permission/checker/RecordAudioTest;->existMicrophone(Landroid/content/Context;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/2addr v1, v2

    if-eqz v0, :cond_2

    .line 50
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 51
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_2
    return v1

    .line 47
    :catchall_0
    :try_start_2
    iget-object v2, p0, Lcom/yanzhenjie/permission/checker/RecordAudioTest;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/yanzhenjie/permission/checker/RecordAudioTest;->existMicrophone(Landroid/content/Context;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    xor-int/2addr v1, v2

    if-eqz v0, :cond_3

    .line 50
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 51
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_3
    return v1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_4

    .line 50
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 51
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 53
    :cond_4
    throw v1
.end method
