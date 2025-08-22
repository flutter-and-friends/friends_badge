.class Lcom/uhf/api/cls/Reader$IT_E7_notify;
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
    name = "IT_E7_notify"
.end annotation


# instance fields
.field reader:Lcom/uhf/api/cls/Reader;

.field final synthetic this$0:Lcom/uhf/api/cls/Reader;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader;)V
    .locals 0

    .line 4308
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4309
    iput-object p2, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->reader:Lcom/uhf/api/cls/Reader;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 4314
    :cond_0
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v0, v0, Lcom/uhf/api/cls/Reader;->isIT_E7_run:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 4319
    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v3, v1}, Lcom/uhf/api/cls/Reader;->AsyncGetTagCount([I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v3

    .line 4321
    sget-object v4, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v3, v4, :cond_15

    .line 4322
    aget v3, v1, v2

    if-lez v3, :cond_3

    .line 4323
    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gettagcount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/uhf/api/cls/Reader;->access$700(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V

    .line 4324
    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v4, v3, Lcom/uhf/api/cls/Reader;->totalcount:I

    aget v5, v1, v2

    add-int/2addr v4, v5

    iput v4, v3, Lcom/uhf/api/cls/Reader;->totalcount:I

    .line 4326
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    const/4 v4, 0x0

    .line 4327
    :goto_0
    aget v5, v1, v2

    if-ge v4, v5, :cond_2

    .line 4328
    new-instance v5, Lcom/uhf/api/cls/Reader$TAGINFO;

    iget-object v6, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-direct {v5, v6}, Lcom/uhf/api/cls/Reader$TAGINFO;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 4329
    iget-object v6, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v6, v5}, Lcom/uhf/api/cls/Reader;->AsyncGetNextTag(Lcom/uhf/api/cls/Reader$TAGINFO;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v6

    .line 4330
    sget-object v7, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v6, v7, :cond_1

    .line 4331
    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4333
    :cond_1
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v1, v6}, Lcom/uhf/api/cls/Reader;->access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 4338
    :cond_2
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/uhf/api/cls/Reader$TAGINFO;

    .line 4339
    invoke-virtual {v3, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/uhf/api/cls/Reader$TAGINFO;

    .line 4340
    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v3, v3, Lcom/uhf/api/cls/Reader;->readListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    array-length v3, v1

    if-lez v3, :cond_3

    .line 4341
    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v3, v3, Lcom/uhf/api/cls/Reader;->readListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uhf/api/cls/ReadListener;

    .line 4342
    iget-object v5, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->reader:Lcom/uhf/api/cls/Reader;

    invoke-interface {v4, v5, v1}, Lcom/uhf/api/cls/ReadListener;->tagRead(Lcom/uhf/api/cls/Reader;[Lcom/uhf/api/cls/Reader$TAGINFO;)V

    goto :goto_1

    .line 4351
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-wide v5, v1, Lcom/uhf/api/cls/Reader;->IT_E7_start:J

    sub-long/2addr v3, v5

    .line 4353
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->IT_E7_m1_cycle:I

    .line 4354
    iget-object v5, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v5, v5, Lcom/uhf/api/cls/Reader;->IT_E7_step:I

    if-nez v5, :cond_4

    .line 4355
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->IT_E7_m1_cycle:I

    goto :goto_2

    .line 4356
    :cond_4
    iget-object v5, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v5, v5, Lcom/uhf/api/cls/Reader;->IT_E7_step:I

    if-ne v5, v0, :cond_5

    .line 4357
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->IT_E7_m1_cycle2:I

    .line 4359
    :cond_5
    :goto_2
    iget-object v5, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-wide v5, v5, Lcom/uhf/api/cls/Reader;->vstaticstarttick:J

    sub-long v5, v3, v5

    int-to-long v7, v1

    cmp-long v9, v5, v7

    if-ltz v9, :cond_14

    .line 4361
    iget-object v5, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Nowcyc:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " tick:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-wide v7, v1, Lcom/uhf/api/cls/Reader;->vstaticstarttick:J

    sub-long v7, v3, v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/uhf/api/cls/Reader;->access$700(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V

    .line 4362
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iput-wide v3, v1, Lcom/uhf/api/cls/Reader;->vstaticstarttick:J

    .line 4364
    iget v1, v1, Lcom/uhf/api/cls/Reader;->IT_E7_step:I

    const/16 v3, 0x6b

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v1, v1, Lcom/uhf/api/cls/Reader;->isIT_E7_run:Z

    if-eqz v1, :cond_a

    .line 4366
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->totalcount:I

    iget-object v4, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v4, v4, Lcom/uhf/api/cls/Reader;->IT_E7_ctagcount:I

    if-ge v1, v4, :cond_13

    .line 4368
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stop:IT_E7_M1_STEP1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v5, v5, Lcom/uhf/api/cls/Reader;->IT_E7_ctagcount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/uhf/api/cls/Reader;->access$700(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V

    .line 4369
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader;->AsyncStopReading()Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 4370
    sget-object v4, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v1, v4, :cond_6

    .line 4371
    iget-object v4, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v4, v1}, Lcom/uhf/api/cls/Reader;->access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 4372
    :cond_6
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    const-string v4, "set gen2 code 107"

    invoke-static {v1, v4}, Lcom/uhf/api/cls/Reader;->access$700(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V

    new-array v1, v0, [I

    aput v3, v1, v2

    .line 4374
    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    sget-object v4, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_TAGENCODING:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v3, v4, v1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 4375
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v1, v3, :cond_7

    .line 4376
    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v3, v1}, Lcom/uhf/api/cls/Reader;->access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 4378
    :cond_7
    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v3, v3, Lcom/uhf/api/cls/Reader;->isIT_E7_run:Z

    if-eqz v3, :cond_8

    .line 4379
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->pants:[I

    iget-object v4, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v4, v4, Lcom/uhf/api/cls/Reader;->pants:[I

    array-length v4, v4

    iget-object v5, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v5, v5, Lcom/uhf/api/cls/Reader;->poption:I

    invoke-virtual {v1, v3, v4, v5}, Lcom/uhf/api/cls/Reader;->AsyncStartReading([III)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 4380
    :cond_8
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v1, v3, :cond_9

    .line 4381
    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v3, v1}, Lcom/uhf/api/cls/Reader;->access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 4383
    :cond_9
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iput v0, v1, Lcom/uhf/api/cls/Reader;->IT_E7_step:I

    .line 4384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/uhf/api/cls/Reader;->IT_E7_start:J

    .line 4385
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-wide v5, v1, Lcom/uhf/api/cls/Reader;->IT_E7_start:J

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lcom/uhf/api/cls/Reader;->vstaticstarttick:J

    goto/16 :goto_4

    .line 4387
    :cond_a
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->IT_E7_step:I

    if-ne v1, v0, :cond_13

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v1, v1, Lcom/uhf/api/cls/Reader;->isIT_E7_run:Z

    if-eqz v1, :cond_13

    .line 4388
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->totalcount:I

    iget-object v4, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v4, v4, Lcom/uhf/api/cls/Reader;->IT_E7_ctagcount2:I

    if-ge v1, v4, :cond_13

    .line 4389
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stop:IT_E7_M1_STEP2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v5, v5, Lcom/uhf/api/cls/Reader;->IT_E7_ctagcount2:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/uhf/api/cls/Reader;->access$700(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V

    .line 4390
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader;->AsyncStopReading()Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 4391
    sget-object v4, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v1, v4, :cond_b

    .line 4392
    iget-object v4, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v4, v1}, Lcom/uhf/api/cls/Reader;->access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 4394
    :cond_b
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v4, v1, Lcom/uhf/api/cls/Reader;->IT_E7_istargetA:Z

    xor-int/2addr v4, v0

    iput-boolean v4, v1, Lcom/uhf/api/cls/Reader;->IT_E7_istargetA:Z

    new-array v1, v0, [I

    aput v2, v1, v2

    .line 4397
    iget-object v4, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v4, v4, Lcom/uhf/api/cls/Reader;->IT_E7_istargetA:Z

    if-eqz v4, :cond_c

    .line 4398
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    const-string v4, "set to A"

    invoke-static {v0, v4}, Lcom/uhf/api/cls/Reader;->access$700(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    aput v0, v1, v2

    .line 4401
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    const-string v4, "set to B"

    invoke-static {v0, v4}, Lcom/uhf/api/cls/Reader;->access$700(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V

    .line 4403
    :goto_3
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    sget-object v4, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_TARGET:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v0, v4, v1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 4405
    sget-object v4, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v0, v4, :cond_d

    .line 4406
    iget-object v4, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v4, v0}, Lcom/uhf/api/cls/Reader;->access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 4408
    :cond_d
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v0, v0, Lcom/uhf/api/cls/Reader;->IT_E7_istargetA:Z

    if-eqz v0, :cond_f

    .line 4409
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    const-string v4, "set to 107,S2 to A"

    invoke-static {v0, v4}, Lcom/uhf/api/cls/Reader;->access$700(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V

    aput v3, v1, v2

    .line 4411
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    sget-object v3, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_TAGENCODING:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v0, v3, v1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 4412
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v0, v3, :cond_e

    .line 4413
    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v3, v0}, Lcom/uhf/api/cls/Reader;->access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 4415
    :cond_e
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v3, v0, Lcom/uhf/api/cls/Reader;->pants:[I

    iget-object v4, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v4, v4, Lcom/uhf/api/cls/Reader;->IT_E7_centrefre:I

    iget-object v5, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v5, v5, Lcom/uhf/api/cls/Reader;->IT_E7_pow:I

    invoke-virtual {v0, v3, v4, v5}, Lcom/uhf/api/cls/Reader;->SetFilterSessioninTargetA([III)I

    .line 4418
    :cond_f
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " set gen2code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v4, v4, Lcom/uhf/api/cls/Reader;->IT_E7_rfm:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/uhf/api/cls/Reader;->access$700(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V

    .line 4419
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v0, v0, Lcom/uhf/api/cls/Reader;->IT_E7_rfm:I

    aput v0, v1, v2

    .line 4420
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    sget-object v3, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_TAGENCODING:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v0, v3, v1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 4421
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v0, v1, :cond_10

    .line 4422
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v1, v0}, Lcom/uhf/api/cls/Reader;->access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 4424
    :cond_10
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    const-string v3, " to start"

    invoke-static {v1, v3}, Lcom/uhf/api/cls/Reader;->access$700(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V

    .line 4425
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v1, v1, Lcom/uhf/api/cls/Reader;->isIT_E7_run:Z

    if-eqz v1, :cond_11

    .line 4426
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v1, v0, Lcom/uhf/api/cls/Reader;->pants:[I

    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v3, v3, Lcom/uhf/api/cls/Reader;->pants:[I

    array-length v3, v3

    iget-object v4, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v4, v4, Lcom/uhf/api/cls/Reader;->poption:I

    invoke-virtual {v0, v1, v3, v4}, Lcom/uhf/api/cls/Reader;->AsyncStartReading([III)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 4427
    :cond_11
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v0, v1, :cond_12

    .line 4428
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v1, v0}, Lcom/uhf/api/cls/Reader;->access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 4430
    :cond_12
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iput v2, v0, Lcom/uhf/api/cls/Reader;->IT_E7_step:I

    .line 4431
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/uhf/api/cls/Reader;->IT_E7_start:J

    .line 4432
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-wide v5, v1, Lcom/uhf/api/cls/Reader;->IT_E7_start:J

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lcom/uhf/api/cls/Reader;->vstaticstarttick:J

    .line 4436
    :cond_13
    :goto_4
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v0, Lcom/uhf/api/cls/Reader;->totalcount:I

    iput v1, v0, Lcom/uhf/api/cls/Reader;->totalcountlast:I

    .line 4437
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iput v2, v0, Lcom/uhf/api/cls/Reader;->totalcount:I

    .line 4439
    :cond_14
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v0, v0, Lcom/uhf/api/cls/Reader;->isIT_E7_run:Z

    if-nez v0, :cond_0

    goto :goto_5

    .line 4347
    :cond_15
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_E7_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v0, v3}, Lcom/uhf/api/cls/Reader;->access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    :cond_16
    :goto_5
    return-void
.end method
