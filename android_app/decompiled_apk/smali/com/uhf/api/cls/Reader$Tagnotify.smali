.class Lcom/uhf/api/cls/Reader$Tagnotify;
.super Ljava/lang/Object;
.source "Reader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Tagnotify"
.end annotation


# instance fields
.field reader:Lcom/uhf/api/cls/Reader;

.field final synthetic this$0:Lcom/uhf/api/cls/Reader;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader;)V
    .locals 0

    .line 3228
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3229
    iput-object p2, p0, Lcom/uhf/api/cls/Reader$Tagnotify;->reader:Lcom/uhf/api/cls/Reader;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v1, p0

    .line 3234
    monitor-enter p0

    .line 3239
    :try_start_0
    iget-object v0, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/uhf/api/cls/Reader;->m_IsReadThRunning:Z

    .line 3246
    iget-object v0, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v0, v0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-object v0, v0, Lcom/uhf/api/cls/BackReadOption;->GpiTrigger:Lcom/uhf/api/cls/GPITrigger;

    .line 3248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 3249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3251
    sget-object v5, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;->BackReadGpi_WaitStart:Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

    .line 3252
    iget-object v6, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v6, v6, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-boolean v6, v6, Lcom/uhf/api/cls/BackReadOption;->IsGPITrigger:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 3254
    iget-object v0, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v0, v0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-object v0, v0, Lcom/uhf/api/cls/BackReadOption;->GpiTrigger:Lcom/uhf/api/cls/GPITrigger;

    iget-object v0, v0, Lcom/uhf/api/cls/GPITrigger;->TriggerType:Lcom/uhf/api/cls/GpiTrigger_Type;

    sget-object v6, Lcom/uhf/api/cls/GpiTrigger_Type;->GPITRIGGER_TRI1START_TRI2STOP:Lcom/uhf/api/cls/GpiTrigger_Type;

    if-ne v0, v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3256
    :goto_0
    iget-object v6, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v6, v6, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-object v6, v6, Lcom/uhf/api/cls/BackReadOption;->GpiTrigger:Lcom/uhf/api/cls/GPITrigger;

    move-wide v8, v3

    const/4 v3, 0x0

    move v4, v0

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move-object v6, v0

    move-wide v8, v3

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3259
    :catch_0
    :cond_2
    :goto_1
    iget-object v10, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v10, v10, Lcom/uhf/api/cls/Reader;->m_IsReadingForAll:Z

    if-eqz v10, :cond_1e

    if-eqz v0, :cond_14

    .line 3264
    sget-object v10, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;->BackReadGpi_WaitStart:Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

    const/4 v11, 0x2

    if-ne v5, v10, :cond_a

    .line 3265
    new-instance v10, Lcom/uhf/api/cls/GpiInfo_ST;

    invoke-direct {v10}, Lcom/uhf/api/cls/GpiInfo_ST;-><init>()V

    .line 3267
    iget-object v12, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v12, v12, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v13, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v13, v13, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v13, v13, v7

    invoke-virtual {v12, v13, v10}, Lcom/uhf/api/cls/JniModuleAPI;->Get_GPIEx(ILcom/uhf/api/cls/GpiInfo_ST;)I

    move-result v12

    .line 3268
    iget-object v13, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v13, v12}, Lcom/uhf/api/cls/Reader;->access$000(Lcom/uhf/api/cls/Reader;I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v12

    sget-object v13, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v12, v13, :cond_3

    goto :goto_1

    .line 3271
    :cond_3
    iget-object v12, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v13, v6, Lcom/uhf/api/cls/GPITrigger;->GpiTrigger1States:Lcom/uhf/api/cls/GpiInfo_ST;

    invoke-static {v12, v13, v10}, Lcom/uhf/api/cls/Reader;->access$100(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/GpiInfo_ST;Lcom/uhf/api/cls/GpiInfo_ST;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 3276
    iget-object v3, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v3, v3, Lcom/uhf/api/cls/Reader;->gpitriListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 3277
    iget-object v3, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v3, v3, Lcom/uhf/api/cls/Reader;->gpitriListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/uhf/api/cls/GpiTriggerListener;

    .line 3278
    iget-object v13, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->reader:Lcom/uhf/api/cls/Reader;

    invoke-interface {v11, v13, v10, v2}, Lcom/uhf/api/cls/GpiTriggerListener;->GpiTrigger(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/GpiInfo_ST;I)V

    goto :goto_2

    :cond_4
    const/4 v3, 0x1

    goto :goto_4

    .line 3282
    :cond_5
    iget-object v13, v6, Lcom/uhf/api/cls/GPITrigger;->TriggerType:Lcom/uhf/api/cls/GpiTrigger_Type;

    sget-object v14, Lcom/uhf/api/cls/GpiTrigger_Type;->GPITRIGGER_TRI1ORTRI2START_TIMEOUTSTOP:Lcom/uhf/api/cls/GpiTrigger_Type;

    if-ne v13, v14, :cond_7

    .line 3283
    iget-object v12, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v13, v6, Lcom/uhf/api/cls/GPITrigger;->GpiTrigger2States:Lcom/uhf/api/cls/GpiInfo_ST;

    invoke-static {v12, v13, v10}, Lcom/uhf/api/cls/Reader;->access$100(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/GpiInfo_ST;Lcom/uhf/api/cls/GpiInfo_ST;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 3288
    iget-object v3, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v3, v3, Lcom/uhf/api/cls/Reader;->gpitriListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 3289
    iget-object v3, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v3, v3, Lcom/uhf/api/cls/Reader;->gpitriListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/uhf/api/cls/GpiTriggerListener;

    .line 3290
    iget-object v14, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->reader:Lcom/uhf/api/cls/Reader;

    invoke-interface {v13, v14, v10, v11}, Lcom/uhf/api/cls/GpiTriggerListener;->GpiTrigger(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/GpiInfo_ST;I)V

    goto :goto_3

    :cond_6
    const/4 v3, 0x2

    :cond_7
    :goto_4
    if-eqz v12, :cond_2

    .line 3298
    iget-object v5, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v5, v5, Lcom/uhf/api/cls/Reader;->gpitriboundListener:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 3299
    iget-object v5, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v5, v5, Lcom/uhf/api/cls/Reader;->gpitriboundListener:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/uhf/api/cls/GpiTriggerBoundaryListener;

    .line 3300
    iget-object v11, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->reader:Lcom/uhf/api/cls/Reader;

    sget-object v12, Lcom/uhf/api/cls/GpiTriggerBoundaryType;->GPITriggerBoundary_StartInventory:Lcom/uhf/api/cls/GpiTriggerBoundaryType;

    sget-object v13, Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;->GpiTriggerBoundaryReason_ByGpi:Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;

    invoke-interface {v10, v11, v12, v13}, Lcom/uhf/api/cls/GpiTriggerBoundaryListener;->GpiTriggerBoundary(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/GpiTriggerBoundaryType;Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;)V

    goto :goto_5

    :cond_8
    if-eqz v4, :cond_9

    .line 3308
    sget-object v5, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;->BackReadGpi_WaitStop:Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

    goto :goto_6

    .line 3310
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 3312
    sget-object v5, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;->BackReadGpi_WaitTimeout:Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

    .line 3315
    :goto_6
    iget-object v10, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v10, v10, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-boolean v10, v10, Lcom/uhf/api/cls/BackReadOption;->IsFastRead:Z

    if-eqz v10, :cond_14

    .line 3316
    iget-object v10, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v10, v10, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v11, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v11, v11, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v11, v11, v7

    iget-object v12, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v12, v12, Lcom/uhf/api/cls/Reader;->m_BackReadAnts:[I

    iget-object v13, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v13, v13, Lcom/uhf/api/cls/Reader;->m_BackReadAntsCnt:I

    iget-object v14, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v14, v14, Lcom/uhf/api/cls/Reader;->m_FastReadOption:I

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/uhf/api/cls/JniModuleAPI;->AsyncStartReading(I[III)I

    goto/16 :goto_c

    .line 3323
    :cond_a
    sget-object v10, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;->BackReadGpi_WaitStop:Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

    if-ne v5, v10, :cond_e

    .line 3324
    new-instance v10, Lcom/uhf/api/cls/GpiInfo_ST;

    invoke-direct {v10}, Lcom/uhf/api/cls/GpiInfo_ST;-><init>()V

    .line 3326
    iget-object v12, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v12, v12, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v13, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v13, v13, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v13, v13, v7

    invoke-virtual {v12, v13, v10}, Lcom/uhf/api/cls/JniModuleAPI;->Get_GPIEx(ILcom/uhf/api/cls/GpiInfo_ST;)I

    move-result v12

    .line 3327
    iget-object v13, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v13, v12}, Lcom/uhf/api/cls/Reader;->access$000(Lcom/uhf/api/cls/Reader;I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v12

    sget-object v13, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v12, v13, :cond_b

    goto/16 :goto_1

    .line 3330
    :cond_b
    iget-object v12, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v13, v6, Lcom/uhf/api/cls/GPITrigger;->GpiTrigger2States:Lcom/uhf/api/cls/GpiInfo_ST;

    invoke-static {v12, v13, v10}, Lcom/uhf/api/cls/Reader;->access$100(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/GpiInfo_ST;Lcom/uhf/api/cls/GpiInfo_ST;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 3334
    iget-object v5, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v5, v5, Lcom/uhf/api/cls/Reader;->gpitriListener:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_c

    .line 3335
    iget-object v5, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v5, v5, Lcom/uhf/api/cls/Reader;->gpitriListener:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/uhf/api/cls/GpiTriggerListener;

    .line 3336
    iget-object v13, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->reader:Lcom/uhf/api/cls/Reader;

    invoke-interface {v12, v13, v10, v11}, Lcom/uhf/api/cls/GpiTriggerListener;->GpiTrigger(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/GpiInfo_ST;I)V

    goto :goto_7

    .line 3340
    :cond_c
    sget-object v5, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;->BackReadGpi_WaitStart:Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

    .line 3342
    iget-object v10, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v10, v10, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-boolean v10, v10, Lcom/uhf/api/cls/BackReadOption;->IsFastRead:Z

    if-eqz v10, :cond_d

    .line 3343
    iget-object v10, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v10, v10, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v11, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v11, v11, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v11, v11, v7

    invoke-virtual {v10, v11}, Lcom/uhf/api/cls/JniModuleAPI;->AsyncStopReading(I)I

    move-result v10

    .line 3344
    iget-object v11, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v11, v10}, Lcom/uhf/api/cls/Reader;->access$000(Lcom/uhf/api/cls/Reader;I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v10

    sget-object v11, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v10, v11, :cond_d

    goto/16 :goto_1

    .line 3348
    :cond_d
    iget-object v10, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v10, v10, Lcom/uhf/api/cls/Reader;->gpitriboundListener:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 3349
    iget-object v10, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v10, v10, Lcom/uhf/api/cls/Reader;->gpitriboundListener:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/uhf/api/cls/GpiTriggerBoundaryListener;

    .line 3350
    iget-object v12, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->reader:Lcom/uhf/api/cls/Reader;

    sget-object v13, Lcom/uhf/api/cls/GpiTriggerBoundaryType;->GPITriggerBoundary_StopInventory:Lcom/uhf/api/cls/GpiTriggerBoundaryType;

    sget-object v14, Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;->GpiTriggerBoundaryReason_ByGpi:Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;

    invoke-interface {v11, v12, v13, v14}, Lcom/uhf/api/cls/GpiTriggerBoundaryListener;->GpiTriggerBoundary(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/GpiTriggerBoundaryType;Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;)V

    goto :goto_8

    .line 3359
    :cond_e
    sget-object v10, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;->BackReadGpi_WaitTimeout:Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

    if-ne v5, v10, :cond_14

    .line 3360
    iget-object v10, v6, Lcom/uhf/api/cls/GPITrigger;->TriggerType:Lcom/uhf/api/cls/GpiTrigger_Type;

    sget-object v12, Lcom/uhf/api/cls/GpiTrigger_Type;->GPITRIGGER_TRI1ORTRI2START_TIMEOUTSTOP:Lcom/uhf/api/cls/GpiTrigger_Type;

    if-ne v10, v12, :cond_12

    .line 3361
    new-instance v10, Lcom/uhf/api/cls/GpiInfo_ST;

    invoke-direct {v10}, Lcom/uhf/api/cls/GpiInfo_ST;-><init>()V

    .line 3363
    new-instance v12, Lcom/uhf/api/cls/GpiInfo_ST;

    invoke-direct {v12}, Lcom/uhf/api/cls/GpiInfo_ST;-><init>()V

    .line 3366
    iget-object v13, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v13, v13, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v14, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v14, v14, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v14, v14, v7

    invoke-virtual {v13, v14, v10}, Lcom/uhf/api/cls/JniModuleAPI;->Get_GPIEx(ILcom/uhf/api/cls/GpiInfo_ST;)I

    move-result v13

    .line 3367
    iget-object v14, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v14, v13}, Lcom/uhf/api/cls/Reader;->access$000(Lcom/uhf/api/cls/Reader;I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v13

    sget-object v14, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v13, v14, :cond_f

    goto/16 :goto_1

    :cond_f
    if-ne v3, v2, :cond_10

    .line 3370
    iget-object v12, v6, Lcom/uhf/api/cls/GPITrigger;->GpiTrigger2States:Lcom/uhf/api/cls/GpiInfo_ST;

    goto :goto_9

    :cond_10
    if-ne v3, v11, :cond_11

    .line 3372
    iget-object v12, v6, Lcom/uhf/api/cls/GPITrigger;->GpiTrigger1States:Lcom/uhf/api/cls/GpiInfo_ST;

    .line 3373
    :cond_11
    :goto_9
    iget-object v11, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v11, v12, v10}, Lcom/uhf/api/cls/Reader;->access$100(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/GpiInfo_ST;Lcom/uhf/api/cls/GpiInfo_ST;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 3374
    iget-object v11, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v11, v11, Lcom/uhf/api/cls/Reader;->gpitriListener:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_12

    .line 3375
    iget-object v11, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v11, v11, Lcom/uhf/api/cls/Reader;->gpitriListener:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/uhf/api/cls/GpiTriggerListener;

    .line 3376
    iget-object v13, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->reader:Lcom/uhf/api/cls/Reader;

    rsub-int/lit8 v14, v3, 0x3

    invoke-interface {v12, v13, v10, v14}, Lcom/uhf/api/cls/GpiTriggerListener;->GpiTrigger(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/GpiInfo_ST;I)V

    goto :goto_a

    .line 3383
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    .line 3384
    iget-object v12, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v12, v12, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-object v12, v12, Lcom/uhf/api/cls/BackReadOption;->GpiTrigger:Lcom/uhf/api/cls/GPITrigger;

    iget v12, v12, Lcom/uhf/api/cls/GPITrigger;->StopTriggerTimeout:I

    int-to-long v12, v12

    cmp-long v14, v10, v12

    if-lez v14, :cond_14

    .line 3385
    sget-object v5, Lcom/uhf/api/cls/Reader$BackReadGpiTriState;->BackReadGpi_WaitStart:Lcom/uhf/api/cls/Reader$BackReadGpiTriState;

    .line 3387
    iget-object v10, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v10, v10, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-boolean v10, v10, Lcom/uhf/api/cls/BackReadOption;->IsFastRead:Z

    if-eqz v10, :cond_13

    .line 3388
    iget-object v10, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v10, v10, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v11, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v11, v11, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v11, v11, v7

    invoke-virtual {v10, v11}, Lcom/uhf/api/cls/JniModuleAPI;->AsyncStopReading(I)I

    move-result v10

    .line 3389
    iget-object v11, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v11, v10}, Lcom/uhf/api/cls/Reader;->access$000(Lcom/uhf/api/cls/Reader;I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v10

    sget-object v11, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v10, v11, :cond_13

    goto/16 :goto_1

    .line 3393
    :cond_13
    iget-object v10, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v10, v10, Lcom/uhf/api/cls/Reader;->gpitriboundListener:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 3394
    iget-object v10, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v10, v10, Lcom/uhf/api/cls/Reader;->gpitriboundListener:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/uhf/api/cls/GpiTriggerBoundaryListener;

    .line 3395
    iget-object v12, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->reader:Lcom/uhf/api/cls/Reader;

    sget-object v13, Lcom/uhf/api/cls/GpiTriggerBoundaryType;->GPITriggerBoundary_StopInventory:Lcom/uhf/api/cls/GpiTriggerBoundaryType;

    sget-object v14, Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;->GpiTriggerBoundaryReason_ByTimeout:Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;

    invoke-interface {v11, v12, v13, v14}, Lcom/uhf/api/cls/GpiTriggerBoundaryListener;->GpiTriggerBoundary(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/GpiTriggerBoundaryType;Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;)V

    goto :goto_b

    :cond_14
    :goto_c
    new-array v15, v2, [I

    .line 3411
    iget-object v10, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v10, v10, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-boolean v10, v10, Lcom/uhf/api/cls/BackReadOption;->IsFastRead:Z

    if-eqz v10, :cond_16

    aput v7, v15, v7

    .line 3413
    iget-object v10, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v10, v10, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v11, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v11, v11, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v11, v11, v7

    invoke-virtual {v10, v11, v15}, Lcom/uhf/api/cls/JniModuleAPI;->AsyncGetTagCount(I[I)I

    move-result v10

    .line 3415
    iget-object v11, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "read tag:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v13, v15, v7

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/uhf/api/cls/Reader;->access$200(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V

    .line 3416
    iget-object v11, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v11, v10}, Lcom/uhf/api/cls/Reader;->access$000(Lcom/uhf/api/cls/Reader;I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v11

    sget-object v12, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v11, v12, :cond_15

    .line 3417
    iget-object v11, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " 2209"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/uhf/api/cls/Reader;->access$300(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_15
    move-object/from16 v16, v15

    goto :goto_d

    .line 3421
    :cond_16
    iget-object v10, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v10, v10, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v11, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v11, v11, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v11, v11, v7

    iget-object v12, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v12, v12, Lcom/uhf/api/cls/Reader;->m_BackReadAnts:[I

    iget-object v13, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v13, v13, Lcom/uhf/api/cls/Reader;->m_BackReadAntsCnt:I

    iget-object v14, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v14, v14, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-short v14, v14, Lcom/uhf/api/cls/BackReadOption;->ReadDuration:S

    move-object/from16 v16, v15

    invoke-virtual/range {v10 .. v15}, Lcom/uhf/api/cls/JniModuleAPI;->TagInventory_Raw(I[IIS[I)I

    move-result v10

    .line 3424
    iget-object v11, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v11, v10}, Lcom/uhf/api/cls/Reader;->access$000(Lcom/uhf/api/cls/Reader;I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v11

    sget-object v12, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v11, v12, :cond_17

    goto/16 :goto_1

    .line 3429
    :cond_17
    :goto_d
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    move v12, v10

    const/4 v10, 0x0

    .line 3430
    :goto_e
    aget v13, v16, v7

    if-ge v10, v13, :cond_1c

    .line 3431
    new-instance v13, Lcom/uhf/api/cls/Reader$TAGINFO;

    iget-object v14, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-direct {v13, v14}, Lcom/uhf/api/cls/Reader$TAGINFO;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 3432
    iget-object v14, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v14, v14, Lcom/uhf/api/cls/Reader;->m_IsReadingForAll:Z

    if-eqz v14, :cond_1a

    .line 3434
    iget-object v14, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v14, v14, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-boolean v14, v14, Lcom/uhf/api/cls/BackReadOption;->IsFastRead:Z

    if-eqz v14, :cond_18

    .line 3435
    iget-object v14, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v15, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v15, v13}, Lcom/uhf/api/cls/Reader;->AsyncGetNextTag(Lcom/uhf/api/cls/Reader$TAGINFO;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/uhf/api/cls/Reader;->access$400(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v14

    sget-object v15, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v14, v15, :cond_19

    .line 3436
    iget-object v13, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " 2226"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/uhf/api/cls/Reader;->access$300(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V

    goto :goto_f

    .line 3440
    :cond_18
    iget-object v12, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v12, v13}, Lcom/uhf/api/cls/Reader;->GetNextTag(Lcom/uhf/api/cls/Reader$TAGINFO;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v12

    invoke-static {v12}, Lcom/uhf/api/cls/Reader$READER_ERR;->access$500(Lcom/uhf/api/cls/Reader$READER_ERR;)I

    move-result v12

    .line 3441
    iget-object v14, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v14, v12}, Lcom/uhf/api/cls/Reader;->access$000(Lcom/uhf/api/cls/Reader;I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v14

    sget-object v15, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v14, v15, :cond_19

    goto :goto_f

    .line 3444
    :cond_19
    invoke-virtual {v11, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3446
    :cond_1a
    iget-object v13, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v13, v13, Lcom/uhf/api/cls/Reader;->m_IsReadingForAll:Z

    if-nez v13, :cond_1b

    goto :goto_10

    :cond_1b
    :goto_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    .line 3449
    :cond_1c
    :goto_10
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v10

    new-array v10, v10, [Lcom/uhf/api/cls/Reader$TAGINFO;

    .line 3450
    invoke-virtual {v11, v10}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/uhf/api/cls/Reader$TAGINFO;

    .line 3451
    iget-object v11, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v11, v11, Lcom/uhf/api/cls/Reader;->readListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_1d

    array-length v11, v10

    if-lez v11, :cond_1d

    .line 3453
    iget-object v11, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v11, v11, Lcom/uhf/api/cls/Reader;->readListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_11
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/uhf/api/cls/ReadListener;

    .line 3454
    iget-object v13, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->reader:Lcom/uhf/api/cls/Reader;

    invoke-interface {v12, v13, v10}, Lcom/uhf/api/cls/ReadListener;->tagRead(Lcom/uhf/api/cls/Reader;[Lcom/uhf/api/cls/Reader$TAGINFO;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_11

    .line 3459
    :cond_1d
    :try_start_1
    iget-object v10, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v10, v10, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget v10, v10, Lcom/uhf/api/cls/BackReadOption;->ReadInterval:I

    int-to-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 3466
    :cond_1e
    :try_start_2
    iget-object v0, v1, Lcom/uhf/api/cls/Reader$Tagnotify;->this$0:Lcom/uhf/api/cls/Reader;

    iput-boolean v7, v0, Lcom/uhf/api/cls/Reader;->m_IsReadThRunning:Z

    .line 3467
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
