.class Lcom/uhf/api/cls/Reader$IT_CT_notify;
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
    name = "IT_CT_notify"
.end annotation


# instance fields
.field reader:Lcom/uhf/api/cls/Reader;

.field final synthetic this$0:Lcom/uhf/api/cls/Reader;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader;)V
    .locals 0

    .line 3986
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3987
    iput-object p2, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->reader:Lcom/uhf/api/cls/Reader;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 3992
    :cond_0
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v0, v0, Lcom/uhf/api/cls/Reader;->isIT_CT_run:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 3997
    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v3, v1}, Lcom/uhf/api/cls/Reader;->AsyncGetTagCount([I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v3

    .line 3999
    sget-object v4, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v3, v4, :cond_1d

    .line 4000
    aget v3, v1, v2

    if-lez v3, :cond_4

    .line 4002
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    const/4 v4, 0x0

    .line 4003
    :goto_0
    aget v5, v1, v2

    if-ge v4, v5, :cond_3

    .line 4004
    new-instance v5, Lcom/uhf/api/cls/Reader$TAGINFO;

    iget-object v6, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-direct {v5, v6}, Lcom/uhf/api/cls/Reader$TAGINFO;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 4005
    iget-object v6, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v6, v5}, Lcom/uhf/api/cls/Reader;->AsyncGetNextTag(Lcom/uhf/api/cls/Reader$TAGINFO;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v6

    .line 4006
    sget-object v7, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v6, v7, :cond_2

    .line 4009
    iget-object v6, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v6, v6, Lcom/uhf/api/cls/Reader;->quetagstr:Ljava/util/Vector;

    iget-object v7, v5, Lcom/uhf/api/cls/Reader$TAGINFO;->EpcId:[B

    invoke-static {v7}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 4010
    iget-object v6, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v6, v6, Lcom/uhf/api/cls/Reader;->quetagstr:Ljava/util/Vector;

    iget-object v7, v5, Lcom/uhf/api/cls/Reader$TAGINFO;->EpcId:[B

    invoke-static {v7}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 4011
    iget-object v6, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v7, v6, Lcom/uhf/api/cls/Reader;->totalcount:I

    add-int/2addr v7, v0

    iput v7, v6, Lcom/uhf/api/cls/Reader;->totalcount:I

    .line 4015
    :cond_1
    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4017
    :cond_2
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v1, v6}, Lcom/uhf/api/cls/Reader;->access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 4023
    :cond_3
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/uhf/api/cls/Reader$TAGINFO;

    .line 4024
    invoke-virtual {v3, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/uhf/api/cls/Reader$TAGINFO;

    .line 4025
    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v3, v3, Lcom/uhf/api/cls/Reader;->readListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    array-length v3, v1

    if-lez v3, :cond_4

    .line 4027
    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v3, v3, Lcom/uhf/api/cls/Reader;->readListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uhf/api/cls/ReadListener;

    .line 4028
    iget-object v5, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->reader:Lcom/uhf/api/cls/Reader;

    invoke-interface {v4, v5, v1}, Lcom/uhf/api/cls/ReadListener;->tagRead(Lcom/uhf/api/cls/Reader;[Lcom/uhf/api/cls/Reader$TAGINFO;)V

    goto :goto_1

    .line 4037
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-wide v5, v1, Lcom/uhf/api/cls/Reader;->IT_CT_start:J

    sub-long/2addr v3, v5

    .line 4039
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->IT_CT_step:I

    const/16 v5, 0x3e8

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v1, v1, Lcom/uhf/api/cls/Reader;->isIT_CT_run:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->IT_CT_m1_keep:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v6, v1

    cmp-long v1, v3, v6

    if-ltz v1, :cond_5

    .line 4042
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iput v0, v1, Lcom/uhf/api/cls/Reader;->IT_CT_step:I

    .line 4043
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/uhf/api/cls/Reader;->IT_CT_start:J

    .line 4044
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-wide v8, v8, Lcom/uhf/api/cls/Reader;->IT_CT_start:J

    sub-long/2addr v6, v8

    iput-wide v6, v1, Lcom/uhf/api/cls/Reader;->vstaticstarttick:J

    .line 4047
    :cond_5
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->IT_CT_step:I

    const/4 v6, 0x5

    const/4 v7, 0x6

    if-ne v1, v6, :cond_6

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v1, v1, Lcom/uhf/api/cls/Reader;->isIT_CT_run:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->IT_CT_m1_keep:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v8, v1

    cmp-long v1, v3, v8

    if-ltz v1, :cond_6

    .line 4050
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iput v7, v1, Lcom/uhf/api/cls/Reader;->IT_CT_step:I

    .line 4052
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/uhf/api/cls/Reader;->IT_CT_start:J

    .line 4053
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-wide v10, v10, Lcom/uhf/api/cls/Reader;->IT_CT_start:J

    sub-long/2addr v8, v10

    iput-wide v8, v1, Lcom/uhf/api/cls/Reader;->vstaticstarttick:J

    .line 4057
    :cond_6
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->IT_CT_step:I

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x4

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->IT_CT_step:I

    if-eq v1, v0, :cond_b

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->IT_CT_step:I

    if-ne v1, v6, :cond_7

    goto :goto_3

    .line 4060
    :cond_7
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->IT_CT_step:I

    if-eq v1, v8, :cond_a

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->IT_CT_step:I

    if-ne v1, v9, :cond_8

    goto :goto_2

    .line 4062
    :cond_8
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->IT_CT_step:I

    if-eq v1, v10, :cond_9

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->IT_CT_step:I

    if-ne v1, v7, :cond_c

    .line 4063
    :cond_9
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v5, v1, Lcom/uhf/api/cls/Reader;->IT_CT_m3_cycleread:I

    goto :goto_4

    .line 4061
    :cond_a
    :goto_2
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v5, v1, Lcom/uhf/api/cls/Reader;->IT_CT_m2_cycle:I

    goto :goto_4

    .line 4059
    :cond_b
    :goto_3
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v5, v1, Lcom/uhf/api/cls/Reader;->IT_CT_m1_cycle:I

    .line 4067
    :cond_c
    :goto_4
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-wide v11, v1, Lcom/uhf/api/cls/Reader;->vstaticstarttick:J

    sub-long v11, v3, v11

    int-to-long v5, v5

    cmp-long v1, v11, v5

    if-ltz v1, :cond_1c

    .line 4071
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iput-wide v3, v1, Lcom/uhf/api/cls/Reader;->vstaticstarttick:J

    .line 4073
    iget v1, v1, Lcom/uhf/api/cls/Reader;->IT_CT_step:I

    if-ne v1, v0, :cond_d

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v1, v1, Lcom/uhf/api/cls/Reader;->isIT_CT_run:Z

    if-eqz v1, :cond_d

    .line 4075
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v0, v0, Lcom/uhf/api/cls/Reader;->totalcount:I

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->totalcountlast:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->IT_CT_m1_toma:I

    if-ge v0, v1, :cond_1b

    .line 4077
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iput v10, v0, Lcom/uhf/api/cls/Reader;->IT_CT_step:I

    .line 4078
    iput v2, v0, Lcom/uhf/api/cls/Reader;->IT_CT_c:I

    .line 4079
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/uhf/api/cls/Reader;->IT_CT_start:J

    .line 4080
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-wide v3, v3, Lcom/uhf/api/cls/Reader;->IT_CT_start:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/uhf/api/cls/Reader;->vstaticstarttick:J

    goto/16 :goto_7

    .line 4082
    :cond_d
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->IT_CT_step:I

    if-ne v1, v8, :cond_11

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v1, v1, Lcom/uhf/api/cls/Reader;->isIT_CT_run:Z

    if-eqz v1, :cond_11

    .line 4084
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader;->AsyncStopReading()Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 4085
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v1, v2, :cond_e

    .line 4086
    iget-object v2, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v2, v1}, Lcom/uhf/api/cls/Reader;->access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 4090
    :cond_e
    iget-object v2, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v2, v2, Lcom/uhf/api/cls/Reader;->isIT_CT_run:Z

    if-eqz v2, :cond_f

    .line 4091
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->pants:[I

    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v3, v3, Lcom/uhf/api/cls/Reader;->pants:[I

    array-length v3, v3

    iget-object v4, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v4, v4, Lcom/uhf/api/cls/Reader;->poption:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/uhf/api/cls/Reader;->AsyncStartReading([III)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 4095
    :cond_f
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v1, v2, :cond_10

    .line 4096
    iget-object v2, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v2, v1}, Lcom/uhf/api/cls/Reader;->access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 4099
    :cond_10
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v2, v1, Lcom/uhf/api/cls/Reader;->IT_CT_c:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/uhf/api/cls/Reader;->IT_CT_c:I

    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v0, v0, Lcom/uhf/api/cls/Reader;->IT_CT_m2_keepcount:I

    if-lt v2, v0, :cond_1b

    .line 4101
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iput v9, v0, Lcom/uhf/api/cls/Reader;->IT_CT_step:I

    .line 4102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/uhf/api/cls/Reader;->IT_CT_start:J

    .line 4103
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-wide v3, v3, Lcom/uhf/api/cls/Reader;->IT_CT_start:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/uhf/api/cls/Reader;->vstaticstarttick:J

    goto/16 :goto_7

    .line 4105
    :cond_11
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v0, v0, Lcom/uhf/api/cls/Reader;->IT_CT_step:I

    if-ne v0, v9, :cond_13

    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v0, v0, Lcom/uhf/api/cls/Reader;->isIT_CT_run:Z

    if-eqz v0, :cond_13

    .line 4106
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v0, v0, Lcom/uhf/api/cls/Reader;->totalcount:I

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->totalcountlast:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->IT_CT_m2_tomc:I

    if-ge v0, v1, :cond_12

    .line 4108
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iput v10, v0, Lcom/uhf/api/cls/Reader;->IT_CT_step:I

    .line 4109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/uhf/api/cls/Reader;->IT_CT_start:J

    .line 4110
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-wide v3, v3, Lcom/uhf/api/cls/Reader;->IT_CT_start:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/uhf/api/cls/Reader;->vstaticstarttick:J

    goto/16 :goto_7

    .line 4111
    :cond_12
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v0, v0, Lcom/uhf/api/cls/Reader;->totalcount:I

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->totalcountlast:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->IT_CT_m2_toma:I

    if-le v0, v1, :cond_1b

    .line 4113
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iput v2, v0, Lcom/uhf/api/cls/Reader;->IT_CT_step:I

    .line 4114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/uhf/api/cls/Reader;->IT_CT_start:J

    .line 4115
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-wide v3, v3, Lcom/uhf/api/cls/Reader;->IT_CT_start:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/uhf/api/cls/Reader;->vstaticstarttick:J

    goto/16 :goto_7

    .line 4117
    :cond_13
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v0, v0, Lcom/uhf/api/cls/Reader;->IT_CT_step:I

    if-eq v0, v10, :cond_14

    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v0, v0, Lcom/uhf/api/cls/Reader;->IT_CT_step:I

    if-ne v0, v7, :cond_1b

    :cond_14
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v0, v0, Lcom/uhf/api/cls/Reader;->isIT_CT_run:Z

    if-eqz v0, :cond_1b

    .line 4119
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v0, v0, Lcom/uhf/api/cls/Reader;->totalcount:I

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->totalcountlast:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v1, Lcom/uhf/api/cls/Reader;->IT_CT_m3_toma:I

    if-le v0, v1, :cond_15

    .line 4121
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iput v2, v0, Lcom/uhf/api/cls/Reader;->IT_CT_step:I

    goto :goto_6

    .line 4125
    :cond_15
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v0}, Lcom/uhf/api/cls/Reader;->AsyncStopReading()Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 4126
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v0, v1, :cond_16

    .line 4127
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v1, v0}, Lcom/uhf/api/cls/Reader;->access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 4130
    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4134
    :cond_17
    :try_start_0
    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v3, v3, Lcom/uhf/api/cls/Reader;->isIT_CT_run:Z

    if-eqz v3, :cond_18

    const-wide/16 v3, 0x32

    .line 4135
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    nop

    .line 4140
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    iget-object v5, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v5, v5, Lcom/uhf/api/cls/Reader;->IT_CT_m3_cyclestop:I

    int-to-long v5, v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_17

    .line 4144
    :cond_18
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v1, v1, Lcom/uhf/api/cls/Reader;->isIT_CT_run:Z

    if-eqz v1, :cond_19

    .line 4145
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v1, v0, Lcom/uhf/api/cls/Reader;->pants:[I

    iget-object v2, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v2, v2, Lcom/uhf/api/cls/Reader;->pantcnt:I

    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v3, v3, Lcom/uhf/api/cls/Reader;->poption:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/uhf/api/cls/Reader;->AsyncStartReading([III)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 4149
    :cond_19
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v0, v1, :cond_1a

    .line 4150
    iget-object v1, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v1, v0}, Lcom/uhf/api/cls/Reader;->access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 4153
    :cond_1a
    :goto_6
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/uhf/api/cls/Reader;->IT_CT_start:J

    .line 4154
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-wide v3, v3, Lcom/uhf/api/cls/Reader;->IT_CT_start:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/uhf/api/cls/Reader;->vstaticstarttick:J

    .line 4157
    :cond_1b
    :goto_7
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget v1, v0, Lcom/uhf/api/cls/Reader;->totalcount:I

    iput v1, v0, Lcom/uhf/api/cls/Reader;->totalcountlast:I

    .line 4159
    :cond_1c
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-boolean v0, v0, Lcom/uhf/api/cls/Reader;->isIT_CT_run:Z

    if-nez v0, :cond_0

    goto :goto_8

    .line 4033
    :cond_1d
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$IT_CT_notify;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-static {v0, v3}, Lcom/uhf/api/cls/Reader;->access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    :cond_1e
    :goto_8
    return-void
.end method
