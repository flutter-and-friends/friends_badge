.class public final Lcom/yanzhenjie/permission/runtime/Permission$Group;
.super Ljava/lang/Object;
.source "Permission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanzhenjie/permission/runtime/Permission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Group"
.end annotation


# static fields
.field public static final CALENDAR:[Ljava/lang/String;

.field public static final CAMERA:[Ljava/lang/String;

.field public static final CONTACTS:[Ljava/lang/String;

.field public static final LOCATION:[Ljava/lang/String;

.field public static final MICROPHONE:[Ljava/lang/String;

.field public static final PHONE:[Ljava/lang/String;

.field public static final SENSORS:[Ljava/lang/String;

.field public static final SMS:[Ljava/lang/String;

.field public static final STORAGE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "android.permission.READ_CALENDAR"

    const-string v1, "android.permission.WRITE_CALENDAR"

    .line 71
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yanzhenjie/permission/runtime/Permission$Group;->CALENDAR:[Ljava/lang/String;

    const-string v0, "android.permission.CAMERA"

    .line 73
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yanzhenjie/permission/runtime/Permission$Group;->CAMERA:[Ljava/lang/String;

    const-string v0, "android.permission.READ_CONTACTS"

    const-string v1, "android.permission.WRITE_CONTACTS"

    const-string v2, "android.permission.GET_ACCOUNTS"

    .line 75
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yanzhenjie/permission/runtime/Permission$Group;->CONTACTS:[Ljava/lang/String;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 78
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yanzhenjie/permission/runtime/Permission$Group;->LOCATION:[Ljava/lang/String;

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 81
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yanzhenjie/permission/runtime/Permission$Group;->MICROPHONE:[Ljava/lang/String;

    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "android.permission.CALL_PHONE"

    const-string v4, "android.permission.READ_CALL_LOG"

    const-string v5, "android.permission.WRITE_CALL_LOG"

    const-string v6, "com.android.voicemail.permission.ADD_VOICEMAIL"

    const-string v7, "android.permission.USE_SIP"

    const-string v8, "android.permission.PROCESS_OUTGOING_CALLS"

    const-string v9, "android.permission.READ_PHONE_NUMBERS"

    const-string v10, "android.permission.ANSWER_PHONE_CALLS"

    .line 87
    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yanzhenjie/permission/runtime/Permission$Group;->PHONE:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "android.permission.CALL_PHONE"

    const-string v3, "android.permission.READ_CALL_LOG"

    const-string v4, "android.permission.WRITE_CALL_LOG"

    const-string v5, "com.android.voicemail.permission.ADD_VOICEMAIL"

    const-string v6, "android.permission.USE_SIP"

    const-string v7, "android.permission.PROCESS_OUTGOING_CALLS"

    .line 91
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yanzhenjie/permission/runtime/Permission$Group;->PHONE:[Ljava/lang/String;

    :goto_0
    const-string v0, "android.permission.BODY_SENSORS"

    .line 97
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yanzhenjie/permission/runtime/Permission$Group;->SENSORS:[Ljava/lang/String;

    const-string v0, "android.permission.SEND_SMS"

    const-string v1, "android.permission.RECEIVE_SMS"

    const-string v2, "android.permission.READ_SMS"

    const-string v3, "android.permission.RECEIVE_WAP_PUSH"

    const-string v4, "android.permission.RECEIVE_MMS"

    .line 99
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yanzhenjie/permission/runtime/Permission$Group;->SMS:[Ljava/lang/String;

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 102
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yanzhenjie/permission/runtime/Permission$Group;->STORAGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
