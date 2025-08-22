.class public Lcn/highlight/tx/ble/data/BleMsg;
.super Ljava/lang/Object;
.source "BleMsg.java"


# static fields
.field public static final KEY_INDICATE_BUNDLE_STATUS:Ljava/lang/String; = "indicate_status"

.field public static final KEY_INDICATE_BUNDLE_VALUE:Ljava/lang/String; = "indicate_value"

.field public static final KEY_NOTIFY_BUNDLE_STATUS:Ljava/lang/String; = "notify_status"

.field public static final KEY_NOTIFY_BUNDLE_VALUE:Ljava/lang/String; = "notify_value"

.field public static final KEY_READ_BUNDLE_STATUS:Ljava/lang/String; = "read_status"

.field public static final KEY_READ_BUNDLE_VALUE:Ljava/lang/String; = "read_value"

.field public static final KEY_READ_RSSI_BUNDLE_STATUS:Ljava/lang/String; = "rssi_status"

.field public static final KEY_READ_RSSI_BUNDLE_VALUE:Ljava/lang/String; = "rssi_value"

.field public static final KEY_SET_MTU_BUNDLE_STATUS:Ljava/lang/String; = "mtu_status"

.field public static final KEY_SET_MTU_BUNDLE_VALUE:Ljava/lang/String; = "mtu_value"

.field public static final KEY_WRITE_BUNDLE_STATUS:Ljava/lang/String; = "write_status"

.field public static final KEY_WRITE_BUNDLE_VALUE:Ljava/lang/String; = "write_value"

.field public static final MSG_CHA_INDICATE_DATA_CHANGE:I = 0x23

.field public static final MSG_CHA_INDICATE_RESULT:I = 0x22

.field public static final MSG_CHA_INDICATE_START:I = 0x21

.field public static final MSG_CHA_NOTIFY_DATA_CHANGE:I = 0x13

.field public static final MSG_CHA_NOTIFY_RESULT:I = 0x12

.field public static final MSG_CHA_NOTIFY_START:I = 0x11

.field public static final MSG_CHA_READ_RESULT:I = 0x42

.field public static final MSG_CHA_READ_START:I = 0x41

.field public static final MSG_CHA_WRITE_RESULT:I = 0x32

.field public static final MSG_CHA_WRITE_START:I = 0x31

.field public static final MSG_CONNECT_FAIL:I = 0x1

.field public static final MSG_CONNECT_OVER_TIME:I = 0x7

.field public static final MSG_DISCONNECTED:I = 0x2

.field public static final MSG_DISCOVER_FAIL:I = 0x5

.field public static final MSG_DISCOVER_SERVICES:I = 0x4

.field public static final MSG_DISCOVER_SUCCESS:I = 0x6

.field public static final MSG_READ_RSSI_RESULT:I = 0x52

.field public static final MSG_READ_RSSI_START:I = 0x51

.field public static final MSG_RECONNECT:I = 0x3

.field public static final MSG_SCAN_DEVICE:I = 0x0

.field public static final MSG_SET_MTU_RESULT:I = 0x62

.field public static final MSG_SET_MTU_START:I = 0x61

.field public static final MSG_SPLIT_WRITE_NEXT:I = 0x33


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
