.class public final Lcom/yanzhenjie/permission/checker/StrictChecker;
.super Ljava/lang/Object;
.source "StrictChecker.java"

# interfaces
.implements Lcom/yanzhenjie/permission/checker/PermissionChecker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAddVoicemail(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 171
    new-instance v0, Lcom/yanzhenjie/permission/checker/AddVoicemailTest;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/permission/checker/AddVoicemailTest;-><init>(Landroid/content/Context;)V

    .line 172
    invoke-interface {v0}, Lcom/yanzhenjie/permission/checker/PermissionTest;->test()Z

    move-result p0

    return p0
.end method

.method private static checkCamera(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/yanzhenjie/permission/checker/CameraTest;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/permission/checker/CameraTest;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-interface {v0}, Lcom/yanzhenjie/permission/checker/PermissionTest;->test()Z

    move-result p0

    return p0
.end method

.method private static checkCoarseLocation(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 141
    new-instance v0, Lcom/yanzhenjie/permission/checker/LocationCoarseTest;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/permission/checker/LocationCoarseTest;-><init>(Landroid/content/Context;)V

    .line 142
    invoke-interface {v0}, Lcom/yanzhenjie/permission/checker/PermissionTest;->test()Z

    move-result p0

    return p0
.end method

.method private static checkFineLocation(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/yanzhenjie/permission/checker/LocationFineTest;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/permission/checker/LocationFineTest;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-interface {v0}, Lcom/yanzhenjie/permission/checker/PermissionTest;->test()Z

    move-result p0

    return p0
.end method

.method private static checkReadCalendar(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/yanzhenjie/permission/checker/CalendarReadTest;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/permission/checker/CalendarReadTest;-><init>(Landroid/content/Context;)V

    .line 116
    invoke-interface {v0}, Lcom/yanzhenjie/permission/checker/PermissionTest;->test()Z

    move-result p0

    return p0
.end method

.method private static checkReadCallLog(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 161
    new-instance v0, Lcom/yanzhenjie/permission/checker/CallLogReadTest;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/permission/checker/CallLogReadTest;-><init>(Landroid/content/Context;)V

    .line 162
    invoke-interface {v0}, Lcom/yanzhenjie/permission/checker/PermissionTest;->test()Z

    move-result p0

    return p0
.end method

.method private static checkReadContacts(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 130
    new-instance v0, Lcom/yanzhenjie/permission/checker/ContactsReadTest;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/permission/checker/ContactsReadTest;-><init>(Landroid/content/Context;)V

    .line 131
    invoke-interface {v0}, Lcom/yanzhenjie/permission/checker/PermissionTest;->test()Z

    move-result p0

    return p0
.end method

.method private static checkReadPhoneState(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 156
    new-instance v0, Lcom/yanzhenjie/permission/checker/PhoneStateReadTest;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/permission/checker/PhoneStateReadTest;-><init>(Landroid/content/Context;)V

    .line 157
    invoke-interface {v0}, Lcom/yanzhenjie/permission/checker/PermissionTest;->test()Z

    move-result p0

    return p0
.end method

.method private static checkReadSms(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 186
    new-instance v0, Lcom/yanzhenjie/permission/checker/SmsReadTest;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/permission/checker/SmsReadTest;-><init>(Landroid/content/Context;)V

    .line 187
    invoke-interface {v0}, Lcom/yanzhenjie/permission/checker/PermissionTest;->test()Z

    move-result p0

    return p0
.end method

.method private static checkReadStorage()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 191
    new-instance v0, Lcom/yanzhenjie/permission/checker/StorageReadTest;

    invoke-direct {v0}, Lcom/yanzhenjie/permission/checker/StorageReadTest;-><init>()V

    .line 192
    invoke-interface {v0}, Lcom/yanzhenjie/permission/checker/PermissionTest;->test()Z

    move-result v0

    return v0
.end method

.method private static checkRecordAudio(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 151
    new-instance v0, Lcom/yanzhenjie/permission/checker/RecordAudioTest;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/permission/checker/RecordAudioTest;-><init>(Landroid/content/Context;)V

    .line 152
    invoke-interface {v0}, Lcom/yanzhenjie/permission/checker/PermissionTest;->test()Z

    move-result p0

    return p0
.end method

.method private static checkSensors(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 181
    new-instance v0, Lcom/yanzhenjie/permission/checker/SensorsTest;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/permission/checker/SensorsTest;-><init>(Landroid/content/Context;)V

    .line 182
    invoke-interface {v0}, Lcom/yanzhenjie/permission/checker/PermissionTest;->test()Z

    move-result p0

    return p0
.end method

.method private static checkSip(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 176
    new-instance v0, Lcom/yanzhenjie/permission/checker/SipTest;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/permission/checker/SipTest;-><init>(Landroid/content/Context;)V

    .line 177
    invoke-interface {v0}, Lcom/yanzhenjie/permission/checker/PermissionTest;->test()Z

    move-result p0

    return p0
.end method

.method private static checkWriteCalendar(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 120
    new-instance v0, Lcom/yanzhenjie/permission/checker/CalendarWriteTest;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/permission/checker/CalendarWriteTest;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-interface {v0}, Lcom/yanzhenjie/permission/checker/PermissionTest;->test()Z

    move-result p0

    return p0
.end method

.method private static checkWriteCallLog(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 166
    new-instance v0, Lcom/yanzhenjie/permission/checker/CallLogWriteTest;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/permission/checker/CallLogWriteTest;-><init>(Landroid/content/Context;)V

    .line 167
    invoke-interface {v0}, Lcom/yanzhenjie/permission/checker/PermissionTest;->test()Z

    move-result p0

    return p0
.end method

.method private static checkWriteContacts(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 136
    new-instance v0, Lcom/yanzhenjie/permission/checker/ContactsWriteTest;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/permission/checker/ContactsWriteTest;-><init>(Landroid/content/ContentResolver;)V

    .line 137
    invoke-interface {v0}, Lcom/yanzhenjie/permission/checker/PermissionTest;->test()Z

    move-result p0

    return p0
.end method

.method private static checkWriteStorage()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 196
    new-instance v0, Lcom/yanzhenjie/permission/checker/StorageWriteTest;

    invoke-direct {v0}, Lcom/yanzhenjie/permission/checker/StorageWriteTest;-><init>()V

    .line 197
    invoke-interface {v0}, Lcom/yanzhenjie/permission/checker/PermissionTest;->test()Z

    move-result v0

    return v0
.end method

.method private hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 60
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "android.permission.READ_CONTACTS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "android.permission.GET_ACCOUNTS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "android.permission.USE_SIP"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "android.permission.WRITE_CALL_LOG"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "android.permission.WRITE_CALENDAR"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_9
    const-string v2, "android.permission.CAMERA"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_0

    :sswitch_a
    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "android.permission.CALL_PHONE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_c
    const-string v2, "android.permission.SEND_SMS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_d
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_e
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_f
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 v0, 0x16

    goto :goto_0

    :sswitch_10
    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 v0, 0x15

    goto :goto_0

    :sswitch_11
    const-string v2, "android.permission.RECEIVE_MMS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 v0, 0x12

    goto :goto_0

    :sswitch_12
    const-string v2, "android.permission.BODY_SENSORS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :sswitch_13
    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 v0, 0x14

    goto :goto_0

    :sswitch_14
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_15
    const-string v2, "android.permission.READ_CALL_LOG"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    :sswitch_16
    const-string v2, "android.permission.READ_CALENDAR"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_17
    const-string v2, "android.permission.READ_SMS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 v0, 0x13

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 106
    :pswitch_0
    invoke-static {}, Lcom/yanzhenjie/permission/checker/StrictChecker;->checkWriteStorage()Z

    move-result p1

    return p1

    .line 104
    :pswitch_1
    invoke-static {}, Lcom/yanzhenjie/permission/checker/StrictChecker;->checkReadStorage()Z

    move-result p1

    return p1

    :pswitch_2
    return v3

    .line 99
    :pswitch_3
    invoke-static {p1}, Lcom/yanzhenjie/permission/checker/StrictChecker;->checkReadSms(Landroid/content/Context;)Z

    move-result p1

    return p1

    :pswitch_4
    return v3

    .line 94
    :pswitch_5
    invoke-static {p1}, Lcom/yanzhenjie/permission/checker/StrictChecker;->checkSensors(Landroid/content/Context;)Z

    move-result p1

    return p1

    :pswitch_6
    return v3

    .line 90
    :pswitch_7
    invoke-static {p1}, Lcom/yanzhenjie/permission/checker/StrictChecker;->checkSip(Landroid/content/Context;)Z

    move-result p1

    return p1

    .line 88
    :pswitch_8
    invoke-static {p1}, Lcom/yanzhenjie/permission/checker/StrictChecker;->checkAddVoicemail(Landroid/content/Context;)Z

    move-result p1

    return p1

    .line 86
    :pswitch_9
    invoke-static {p1}, Lcom/yanzhenjie/permission/checker/StrictChecker;->checkWriteCallLog(Landroid/content/Context;)Z

    move-result p1

    return p1

    .line 84
    :pswitch_a
    invoke-static {p1}, Lcom/yanzhenjie/permission/checker/StrictChecker;->checkReadCallLog(Landroid/content/Context;)Z

    move-result p1

    return p1

    :pswitch_b
    return v3

    .line 80
    :pswitch_c
    invoke-static {p1}, Lcom/yanzhenjie/permission/checker/StrictChecker;->checkReadPhoneState(Landroid/content/Context;)Z

    move-result p1

    return p1

    .line 78
    :pswitch_d
    invoke-static {p1}, Lcom/yanzhenjie/permission/checker/StrictChecker;->checkRecordAudio(Landroid/content/Context;)Z

    move-result p1

    return p1

    .line 76
    :pswitch_e
    invoke-static {p1}, Lcom/yanzhenjie/permission/checker/StrictChecker;->checkFineLocation(Landroid/content/Context;)Z

    move-result p1

    return p1

    .line 74
    :pswitch_f
    invoke-static {p1}, Lcom/yanzhenjie/permission/checker/StrictChecker;->checkCoarseLocation(Landroid/content/Context;)Z

    move-result p1

    return p1

    :pswitch_10
    return v3

    .line 70
    :pswitch_11
    invoke-static {p1}, Lcom/yanzhenjie/permission/checker/StrictChecker;->checkWriteContacts(Landroid/content/Context;)Z

    move-result p1

    return p1

    .line 68
    :pswitch_12
    invoke-static {p1}, Lcom/yanzhenjie/permission/checker/StrictChecker;->checkReadContacts(Landroid/content/Context;)Z

    move-result p1

    return p1

    .line 66
    :pswitch_13
    invoke-static {p1}, Lcom/yanzhenjie/permission/checker/StrictChecker;->checkCamera(Landroid/content/Context;)Z

    move-result p1

    return p1

    .line 64
    :pswitch_14
    invoke-static {p1}, Lcom/yanzhenjie/permission/checker/StrictChecker;->checkWriteCalendar(Landroid/content/Context;)Z

    move-result p1

    return p1

    .line 62
    :pswitch_15
    invoke-static {p1}, Lcom/yanzhenjie/permission/checker/StrictChecker;->checkReadCalendar(Landroid/content/Context;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :goto_1
    return v3

    :catchall_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7aed85b0 -> :sswitch_17
        -0x72f13779 -> :sswitch_16
        -0x7286b8f4 -> :sswitch_15
        -0x70918bc1 -> :sswitch_14
        -0x583351d1 -> :sswitch_13
        -0x49cb6684 -> :sswitch_12
        -0x3562fc09 -> :sswitch_11
        -0x3562e583 -> :sswitch_10
        -0x1833add0 -> :sswitch_f
        -0x3c1ac56 -> :sswitch_e
        -0x550ba9 -> :sswitch_d
        0x322a742 -> :sswitch_c
        0x6afff6d -> :sswitch_b
        0xcc96c13 -> :sswitch_a
        0x1b9efa65 -> :sswitch_9
        0x23fb06fe -> :sswitch_8
        0x24658583 -> :sswitch_7
        0x2ec2d2a2 -> :sswitch_6
        0x38cade52 -> :sswitch_5
        0x4bcdda0f -> :sswitch_4
        0x516a29a7 -> :sswitch_3
        0x6d24f988 -> :sswitch_2
        0x75dd2d9c -> :sswitch_1
        0x7f2f307d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public hasPermission(Landroid/content/Context;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    return v1

    .line 50
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/yanzhenjie/permission/checker/StrictChecker;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_2
    return v1
.end method

.method public varargs hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 5

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    return v1

    .line 38
    :cond_0
    array-length v0, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p2, v3

    .line 39
    invoke-direct {p0, p1, v4}, Lcom/yanzhenjie/permission/checker/StrictChecker;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method
