.class Lcom/uhf/api/cls/Reader$IT_E7v2_notify;
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
    name = "IT_E7v2_notify"
.end annotation


# instance fields
.field reader:Lcom/uhf/api/cls/Reader;

.field final synthetic this$0:Lcom/uhf/api/cls/Reader;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader;)V
    .locals 0

    .line 4452
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4453
    iput-object p2, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->reader:Lcom/uhf/api/cls/Reader;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 4458
    :cond_0
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v0, v0, Lcom/uhf/api/cls/Reader;->isIT_E7_run:Z

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 4463
    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v3, v1}, Lcom/uhf/api/cls/Reader;->AsyncGetTagCount([I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v3

    .line 4465
    sget-object v4, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v3, v4, :cond_2a

    .line 4466
    aget v3, v1, v2

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-lez v3, :cond_5

    .line 4467
    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gettagcount:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v1, v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/uhf/api/cls/Reader;->access$700(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V

    .line 4470
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 4471
    :goto_0
    aget v8, v1, v2

    if-ge v6, v8, :cond_4

    .line 4472
    new-instance v8, Lcom/uhf/api/cls/Reader$TAGINFO;

    iget-object v9, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-direct {v8, v9}, Lcom/uhf/api/cls/Reader$TAGINFO;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 4473
    iget-object v9, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v9, v8}, Lcom/uhf/api/cls/Reader;->AsyncGetNextTag(Lcom/uhf/api/cls/Reader$TAGINFO;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v9

    .line 4474
    sget-object v10, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v9, v10, :cond_3

    .line 4475
    iget-short v9, v8, Lcom/uhf/api/cls/Reader$TAGINFO;->Epclen:S

    rem-int/2addr v9, v5

    if-nez v9, :cond_1

    .line 4476
    invoke-virtual {v3, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 4477
    iget-object v8, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v9, v8, Lcom/uhf/api/cls/Reader;->totalcount:I

    add-int/2addr v9, v0

    iput v9, v8, Lcom/uhf/api/cls/Reader;->totalcount:I

    goto :goto_1

    .line 4478
    :cond_1
    iget-short v8, v8, Lcom/uhf/api/cls/Reader$TAGINFO;->Epclen:S

    if-ne v8, v4, :cond_2

    const/4 v7, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 4482
    :cond_3
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v1, v9}, Lcom/uhf/api/cls/Reader;->access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 4487
    :cond_4
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/uhf/api/cls/Reader$TAGINFO;

    .line 4488
    invoke-virtual {v3, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/uhf/api/cls/Reader$TAGINFO;

    .line 4489
    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v3, v3, Lcom/uhf/api/cls/Reader;->readListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    array-length v3, v1

    if-lez v3, :cond_6

    .line 4490
    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v3, v3, Lcom/uhf/api/cls/Reader;->readListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/uhf/api/cls/ReadListener;

    .line 4491
    iget-object v8, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->reader:Lcom/uhf/api/cls/Reader;

    invoke-interface {v6, v8, v1}, Lcom/uhf/api/cls/ReadListener;->tagRead(Lcom/uhf/api/cls/Reader;[Lcom/uhf/api/cls/Reader$TAGINFO;)V

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    .line 4500
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-wide v10, v1, Lcom/uhf/api/cls/Reader;->IT_E7_start:J

    sub-long/2addr v8, v10

    .line 4502
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->IT_E7_m1_cycle:I

    .line 4503
    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v3, v3, Lcom/uhf/api/cls/Reader;->IT_E7_step:I

    const/4 v6, 0x4

    if-nez v3, :cond_7

    .line 4504
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->IT_E7_m1_cycle:I

    goto :goto_3

    .line 4505
    :cond_7
    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v3, v3, Lcom/uhf/api/cls/Reader;->IT_E7_step:I

    if-ne v3, v0, :cond_8

    .line 4506
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->IT_E7_m1_cycle2:I

    goto :goto_3

    .line 4507
    :cond_8
    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v3, v3, Lcom/uhf/api/cls/Reader;->IT_E7_step:I

    if-eq v3, v5, :cond_9

    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v3, v3, Lcom/uhf/api/cls/Reader;->IT_E7_step:I

    if-eq v3, v4, :cond_9

    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v3, v3, Lcom/uhf/api/cls/Reader;->IT_E7_step:I

    if-ne v3, v6, :cond_a

    .line 4508
    :cond_9
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->IT_E7_m1_cycle3:I

    .line 4510
    :cond_a
    :goto_3
    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-wide v10, v3, Lcom/uhf/api/cls/Reader;->vstaticstarttick:J

    sub-long v10, v8, v10

    int-to-long v12, v1

    cmp-long v3, v10, v12

    if-ltz v3, :cond_29

    .line 4512
    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Nowcyc:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " tick:"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-wide v11, v1, Lcom/uhf/api/cls/Reader;->vstaticstarttick:J

    sub-long v11, v8, v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/uhf/api/cls/Reader;->access$700(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V

    .line 4513
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iput-wide v8, v1, Lcom/uhf/api/cls/Reader;->vstaticstarttick:J

    .line 4515
    iget v1, v1, Lcom/uhf/api/cls/Reader;->IT_E7_step:I

    const/16 v3, 0x6b

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v1, v1, Lcom/uhf/api/cls/Reader;->isIT_E7_run:Z

    if-eqz v1, :cond_f

    .line 4516
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stop IT_E7_M1_STEP1---"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v5, v5, Lcom/uhf/api/cls/Reader;->totalcount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/uhf/api/cls/Reader;->access$700(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V

    .line 4517
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->totalcount:I

    iget-object v4, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v4, v4, Lcom/uhf/api/cls/Reader;->IT_E7_ctagcount:I

    if-ge v1, v4, :cond_28

    .line 4519
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stop:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v5, v5, Lcom/uhf/api/cls/Reader;->IT_E7_ctagcount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/uhf/api/cls/Reader;->access$700(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V

    .line 4520
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader;->AsyncStopReading()Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 4521
    sget-object v4, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v1, v4, :cond_b

    .line 4522
    iget-object v4, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v4, v1}, Lcom/uhf/api/cls/Reader;->access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 4523
    :cond_b
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    const-string v4, "set gen2 code 107"

    invoke-static {v1, v4}, Lcom/uhf/api/cls/Reader;->access$700(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V

    new-array v1, v0, [I

    aput v3, v1, v2

    .line 4525
    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    sget-object v4, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_TAGENCODING:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v3, v4, v1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 4526
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v1, v3, :cond_c

    .line 4527
    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v3, v1}, Lcom/uhf/api/cls/Reader;->access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 4529
    :cond_c
    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v3, v3, Lcom/uhf/api/cls/Reader;->isIT_E7_run:Z

    if-eqz v3, :cond_d

    .line 4530
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->pants:[I

    iget-object v4, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v4, v4, Lcom/uhf/api/cls/Reader;->pants:[I

    array-length v4, v4

    iget-object v5, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v5, v5, Lcom/uhf/api/cls/Reader;->poption:I

    invoke-virtual {v1, v3, v4, v5}, Lcom/uhf/api/cls/Reader;->AsyncStartReading([III)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 4531
    :cond_d
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v1, v3, :cond_e

    .line 4532
    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v3, v1}, Lcom/uhf/api/cls/Reader;->access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 4534
    :cond_e
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iput v0, v1, Lcom/uhf/api/cls/Reader;->IT_E7_step:I

    .line 4535
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/uhf/api/cls/Reader;->IT_E7_start:J

    .line 4536
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-wide v5, v1, Lcom/uhf/api/cls/Reader;->IT_E7_start:J

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lcom/uhf/api/cls/Reader;->vstaticstarttick:J

    goto/16 :goto_7

    .line 4538
    :cond_f
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->IT_E7_step:I

    const-string v8, " to start"

    if-ne v1, v0, :cond_15

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v1, v1, Lcom/uhf/api/cls/Reader;->isIT_E7_run:Z

    if-eqz v1, :cond_15

    .line 4539
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->totalcount:I

    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v3, v3, Lcom/uhf/api/cls/Reader;->IT_E7_ctagcount2:I

    if-ge v1, v3, :cond_28

    .line 4540
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop IT_E7_M1_STEP2---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v4, v4, Lcom/uhf/api/cls/Reader;->IT_E7_ctagcount2:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/uhf/api/cls/Reader;->access$700(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V

    .line 4541
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader;->AsyncStopReading()Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 4542
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v1, v3, :cond_10

    .line 4543
    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v3, v1}, Lcom/uhf/api/cls/Reader;->access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 4545
    :cond_10
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set gen2 code 113,fre "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v4, v4, Lcom/uhf/api/cls/Reader;->IT_E7_centrefre:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Q 4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/uhf/api/cls/Reader;->access$700(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V

    new-array v1, v0, [I

    const/16 v3, 0x71

    aput v3, v1, v2

    .line 4547
    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    sget-object v4, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_TAGENCODING:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v3, v4, v1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 4548
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v1, v3, :cond_11

    .line 4549
    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v3, v1}, Lcom/uhf/api/cls/Reader;->access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 4551
    :cond_11
    new-instance v1, Lcom/uhf/api/cls/Reader$HoptableData_ST;

    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-direct {v1, v3}, Lcom/uhf/api/cls/Reader$HoptableData_ST;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 4552
    iput v0, v1, Lcom/uhf/api/cls/Reader$HoptableData_ST;->lenhtb:I

    .line 4553
    iget-object v3, v1, Lcom/uhf/api/cls/Reader$HoptableData_ST;->htb:[I

    iget-object v4, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v4, v4, Lcom/uhf/api/cls/Reader;->IT_E7_lowfre:I

    aput v4, v3, v2

    .line 4554
    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    sget-object v4, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_FREQUENCY_HOPTABLE:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v3, v4, v1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 4556
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v1, v3, :cond_12

    .line 4557
    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v3, v1}, Lcom/uhf/api/cls/Reader;->access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    :cond_12
    new-array v0, v0, [I

    aput v6, v0, v2

    .line 4560
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    sget-object v3, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_Q:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1, v3, v0}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 4562
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v0, v1, :cond_28

    .line 4564
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v1, v8}, Lcom/uhf/api/cls/Reader;->access$700(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V

    .line 4565
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v1, v1, Lcom/uhf/api/cls/Reader;->isIT_E7_run:Z

    if-eqz v1, :cond_13

    .line 4566
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v1, v0, Lcom/uhf/api/cls/Reader;->pants:[I

    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v3, v3, Lcom/uhf/api/cls/Reader;->pants:[I

    array-length v3, v3

    iget-object v4, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v4, v4, Lcom/uhf/api/cls/Reader;->poption:I

    invoke-virtual {v0, v1, v3, v4}, Lcom/uhf/api/cls/Reader;->AsyncStartReading([III)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 4567
    :cond_13
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v0, v1, :cond_14

    .line 4568
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v1, v0}, Lcom/uhf/api/cls/Reader;->access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 4570
    :cond_14
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iput v5, v0, Lcom/uhf/api/cls/Reader;->IT_E7_step:I

    .line 4571
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/uhf/api/cls/Reader;->IT_E7_start:J

    .line 4572
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-wide v5, v1, Lcom/uhf/api/cls/Reader;->IT_E7_start:J

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lcom/uhf/api/cls/Reader;->vstaticstarttick:J

    goto/16 :goto_7

    .line 4575
    :cond_15
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->IT_E7_step:I

    if-eq v1, v5, :cond_16

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->IT_E7_step:I

    if-eq v1, v4, :cond_16

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->IT_E7_step:I

    if-ne v1, v6, :cond_28

    :cond_16
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v1, v1, Lcom/uhf/api/cls/Reader;->isIT_E7_run:Z

    if-eqz v1, :cond_28

    .line 4577
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->totalcount:I

    iget-object v9, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v9, v9, Lcom/uhf/api/cls/Reader;->IT_E7_ctagcount3:I

    if-lt v1, v9, :cond_17

    if-eqz v7, :cond_28

    .line 4578
    :cond_17
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "stop: IT_E7_M1_STEP"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v10, v10, Lcom/uhf/api/cls/Reader;->IT_E7_step:I

    add-int/2addr v10, v0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v10, v10, Lcom/uhf/api/cls/Reader;->totalcount:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " autostop:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4579
    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4578
    invoke-static {v1, v7}, Lcom/uhf/api/cls/Reader;->access$700(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V

    .line 4580
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader;->AsyncStopReading()Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 4581
    sget-object v7, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v1, v7, :cond_18

    .line 4582
    iget-object v7, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v7, v1}, Lcom/uhf/api/cls/Reader;->access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 4583
    :cond_18
    iget-object v7, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v7, v7, Lcom/uhf/api/cls/Reader;->IT_E7_step:I

    const-string v9, "set fre "

    if-ne v7, v5, :cond_1a

    .line 4584
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v5, v5, Lcom/uhf/api/cls/Reader;->IT_E7_lowfre:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/uhf/api/cls/Reader;->access$700(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V

    .line 4585
    new-instance v1, Lcom/uhf/api/cls/Reader$HoptableData_ST;

    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-direct {v1, v3}, Lcom/uhf/api/cls/Reader$HoptableData_ST;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 4586
    iput v0, v1, Lcom/uhf/api/cls/Reader$HoptableData_ST;->lenhtb:I

    .line 4587
    iget-object v0, v1, Lcom/uhf/api/cls/Reader$HoptableData_ST;->htb:[I

    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v3, v3, Lcom/uhf/api/cls/Reader;->IT_E7_lowfre:I

    aput v3, v0, v2

    .line 4588
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    sget-object v3, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_FREQUENCY_HOPTABLE:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v0, v3, v1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 4590
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v1, v0, :cond_19

    .line 4591
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v0, v1}, Lcom/uhf/api/cls/Reader;->access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 4592
    :cond_19
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iput v4, v0, Lcom/uhf/api/cls/Reader;->IT_E7_step:I

    goto/16 :goto_5

    .line 4593
    :cond_1a
    iget-object v5, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v5, v5, Lcom/uhf/api/cls/Reader;->IT_E7_step:I

    if-ne v5, v4, :cond_1c

    .line 4594
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v4, v4, Lcom/uhf/api/cls/Reader;->IT_E7_highfre:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/uhf/api/cls/Reader;->access$700(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V

    .line 4595
    new-instance v1, Lcom/uhf/api/cls/Reader$HoptableData_ST;

    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-direct {v1, v3}, Lcom/uhf/api/cls/Reader$HoptableData_ST;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 4596
    iput v0, v1, Lcom/uhf/api/cls/Reader$HoptableData_ST;->lenhtb:I

    .line 4597
    iget-object v0, v1, Lcom/uhf/api/cls/Reader$HoptableData_ST;->htb:[I

    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v3, v3, Lcom/uhf/api/cls/Reader;->IT_E7_highfre:I

    aput v3, v0, v2

    .line 4598
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    sget-object v3, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_FREQUENCY_HOPTABLE:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v0, v3, v1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 4600
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v1, v0, :cond_1b

    .line 4601
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v0, v1}, Lcom/uhf/api/cls/Reader;->access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 4602
    :cond_1b
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iput v6, v0, Lcom/uhf/api/cls/Reader;->IT_E7_step:I

    goto/16 :goto_5

    .line 4603
    :cond_1c
    iget-object v4, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v4, v4, Lcom/uhf/api/cls/Reader;->IT_E7_step:I

    if-ne v4, v6, :cond_24

    .line 4604
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v4, v1, Lcom/uhf/api/cls/Reader;->IT_E7_istargetA:Z

    xor-int/2addr v4, v0

    iput-boolean v4, v1, Lcom/uhf/api/cls/Reader;->IT_E7_istargetA:Z

    new-array v1, v0, [I

    aput v2, v1, v2

    const/4 v4, -0x1

    aput v4, v1, v2

    .line 4607
    iget-object v4, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    sget-object v5, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_Q:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v4, v5, v1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v4

    .line 4609
    sget-object v5, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v4, v5, :cond_1d

    .line 4610
    iget-object v5, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v5, v4}, Lcom/uhf/api/cls/Reader;->access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 4612
    :cond_1d
    iget-object v4, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    sget-object v5, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_FREQUENCY_REGION:Lcom/uhf/api/cls/Reader$Mtr_Param;

    iget-object v6, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v6, v6, Lcom/uhf/api/cls/Reader;->IT_E7_rg:Lcom/uhf/api/cls/Reader$Region_Conf;

    invoke-virtual {v4, v5, v6}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v4

    .line 4614
    sget-object v5, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v4, v5, :cond_1e

    .line 4615
    iget-object v5, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v5, v4}, Lcom/uhf/api/cls/Reader;->access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    :cond_1e
    aput v2, v1, v2

    .line 4618
    iget-object v4, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v4, v4, Lcom/uhf/api/cls/Reader;->IT_E7_istargetA:Z

    if-eqz v4, :cond_1f

    .line 4619
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    const-string v4, "set to A"

    invoke-static {v0, v4}, Lcom/uhf/api/cls/Reader;->access$700(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V

    goto :goto_4

    :cond_1f
    aput v0, v1, v2

    .line 4622
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    const-string v4, "set to B"

    invoke-static {v0, v4}, Lcom/uhf/api/cls/Reader;->access$700(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V

    .line 4624
    :goto_4
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    sget-object v4, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_TARGET:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v0, v4, v1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 4626
    sget-object v4, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v0, v4, :cond_20

    .line 4627
    iget-object v4, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v4, v0}, Lcom/uhf/api/cls/Reader;->access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 4629
    :cond_20
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v0, v0, Lcom/uhf/api/cls/Reader;->IT_E7_istargetA:Z

    if-eqz v0, :cond_22

    .line 4630
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    const-string v4, "set to 107,S2 to A 3 fre"

    invoke-static {v0, v4}, Lcom/uhf/api/cls/Reader;->access$700(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V

    aput v3, v1, v2

    .line 4632
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    sget-object v3, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_TAGENCODING:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v0, v3, v1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 4633
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v0, v3, :cond_21

    .line 4634
    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v3, v0}, Lcom/uhf/api/cls/Reader;->access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 4636
    :cond_21
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v3, v0, Lcom/uhf/api/cls/Reader;->pants:[I

    iget-object v4, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v4, v4, Lcom/uhf/api/cls/Reader;->IT_E7_centrefre:I

    iget-object v5, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v5, v5, Lcom/uhf/api/cls/Reader;->IT_E7_pow:I

    invoke-virtual {v0, v3, v4, v5}, Lcom/uhf/api/cls/Reader;->SetFilterSessioninTargetA([III)I

    .line 4637
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v3, v0, Lcom/uhf/api/cls/Reader;->pants:[I

    iget-object v4, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v4, v4, Lcom/uhf/api/cls/Reader;->IT_E7_lowfre:I

    iget-object v5, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v5, v5, Lcom/uhf/api/cls/Reader;->IT_E7_pow:I

    invoke-virtual {v0, v3, v4, v5}, Lcom/uhf/api/cls/Reader;->SetFilterSessioninTargetA([III)I

    .line 4638
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v3, v0, Lcom/uhf/api/cls/Reader;->pants:[I

    iget-object v4, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v4, v4, Lcom/uhf/api/cls/Reader;->IT_E7_highfre:I

    iget-object v5, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v5, v5, Lcom/uhf/api/cls/Reader;->IT_E7_pow:I

    invoke-virtual {v0, v3, v4, v5}, Lcom/uhf/api/cls/Reader;->SetFilterSessioninTargetA([III)I

    .line 4640
    :cond_22
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gen2ode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v4, v4, Lcom/uhf/api/cls/Reader;->IT_E7_rfm:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/uhf/api/cls/Reader;->access$700(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V

    .line 4641
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v0, v0, Lcom/uhf/api/cls/Reader;->IT_E7_rfm:I

    aput v0, v1, v2

    .line 4642
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    sget-object v3, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_TAGENCODING:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v0, v3, v1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 4643
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v1, v0, :cond_23

    .line 4644
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v0, v1}, Lcom/uhf/api/cls/Reader;->access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 4645
    :cond_23
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iput v2, v0, Lcom/uhf/api/cls/Reader;->IT_E7_step:I

    .line 4648
    :cond_24
    :goto_5
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v0, v8}, Lcom/uhf/api/cls/Reader;->access$700(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V

    .line 4649
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v0, v0, Lcom/uhf/api/cls/Reader;->isIT_E7_run:Z

    if-eqz v0, :cond_26

    .line 4650
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v0, v0, Lcom/uhf/api/cls/Reader;->IT_E7_step:I

    if-nez v0, :cond_25

    .line 4651
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v1, v0, Lcom/uhf/api/cls/Reader;->pants:[I

    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v3, v3, Lcom/uhf/api/cls/Reader;->pants:[I

    array-length v3, v3

    iget-object v4, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v4, v4, Lcom/uhf/api/cls/Reader;->poption:I

    invoke-virtual {v0, v1, v3, v4}, Lcom/uhf/api/cls/Reader;->AsyncStartReading([III)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    goto :goto_6

    .line 4653
    :cond_25
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v1, v0, Lcom/uhf/api/cls/Reader;->pants:[I

    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v3, v3, Lcom/uhf/api/cls/Reader;->pants:[I

    array-length v3, v3

    iget-object v4, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v4, v4, Lcom/uhf/api/cls/Reader;->poption:I

    or-int/lit8 v4, v4, 0x40

    invoke-virtual {v0, v1, v3, v4}, Lcom/uhf/api/cls/Reader;->AsyncStartReading([III)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 4655
    :cond_26
    :goto_6
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v1, v0, :cond_27

    .line 4656
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v0, v1}, Lcom/uhf/api/cls/Reader;->access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 4658
    :cond_27
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/uhf/api/cls/Reader;->IT_E7_start:J

    .line 4659
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-wide v5, v1, Lcom/uhf/api/cls/Reader;->IT_E7_start:J

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lcom/uhf/api/cls/Reader;->vstaticstarttick:J

    .line 4664
    :cond_28
    :goto_7
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v0, Lcom/uhf/api/cls/Reader;->totalcount:I

    iput v1, v0, Lcom/uhf/api/cls/Reader;->totalcountlast:I

    .line 4665
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iput v2, v0, Lcom/uhf/api/cls/Reader;->totalcount:I

    .line 4667
    :cond_29
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v0, v0, Lcom/uhf/api/cls/Reader;->isIT_E7_run:Z

    if-nez v0, :cond_0

    goto :goto_8

    .line 4496
    :cond_2a
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v0, v3}, Lcom/uhf/api/cls/Reader;->access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    :cond_2b
    :goto_8
    return-void
.end method
