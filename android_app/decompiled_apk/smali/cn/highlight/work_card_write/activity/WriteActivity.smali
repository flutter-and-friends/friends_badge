.class public Lcn/highlight/work_card_write/activity/WriteActivity;
.super Lcn/highlight/work_card_write/base/BaseActivity;
.source "WriteActivity.java"


# instance fields
.field private badgeColor:Ljava/lang/String;

.field private baseBadgeBean:Lcn/highlight/work_card_write/greendao/table/BadgeBean;

.field private bitmap:Landroid/graphics/Bitmap;

.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field btnSave:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090092
    .end annotation
.end field

.field btnWrite:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090094
    .end annotation
.end field

.field private countDownTimer:Landroid/os/CountDownTimer;

.field private decimalFormat:Ljava/text/DecimalFormat;

.field editColorLinear:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900f2
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field image:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090127
    .end annotation
.end field

.field private imageName:Ljava/lang/String;

.field imgBack:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090147
    .end annotation
.end field

.field imgHome:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090149
    .end annotation
.end field

.field private isConnect:Z

.field private isExit:Z

.field private isExits:Z

.field private isImageSave:Z

.field private isNormal:Z

.field private isRead:Z

.field private isSearch:Z

.field private isShake:Z

.field private isStart:Z

.field private isWrite:Z

.field private locationManager:Landroid/location/LocationManager;

.field private modify:Z

.field private nfcAdapter:Landroid/nfc/NfcAdapter;

.field private nfcDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

.field private onDataReceivedTag:Lcn/highlight/tx/listener/OnDataReceivedTag;

.field progressBar:Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901e9
    .end annotation
.end field

.field private readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;

.field rfRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090204
    .end annotation
.end field

.field private sendError:I

.field slideSwitch:Lcn/highlight/work_card_write/view/SlideSwitchView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090244
    .end annotation
.end field

.field private thread:Ljava/lang/Thread;

.field private timer:Ljava/util/Timer;

.field private timerTask:Ljava/util/TimerTask;

.field tvProgress:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902aa
    .end annotation
.end field

.field private txManager:Lcn/highlight/tx/BaseTxManager;

.field private type:I

.field private writeAdapter:Lcn/highlight/work_card_write/adapter/WriteAdapter;

.field private writeBitmap:Landroid/graphics/Bitmap;

.field private writeColor:Ljava/lang/String;

.field private writeHeight:I

.field private writeImgData:[[B

.field private writeSize:Ljava/lang/String;

.field private writeWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 92
    invoke-direct {p0}, Lcn/highlight/work_card_write/base/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isShake:Z

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isImageSave:Z

    const/4 v1, 0x0

    .line 131
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->baseBadgeBean:Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    .line 150
    iput-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isRead:Z

    .line 152
    iput-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isSearch:Z

    .line 154
    iput-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isConnect:Z

    .line 156
    iput-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isStart:Z

    .line 158
    iput-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isWrite:Z

    .line 160
    iput-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isNormal:Z

    .line 162
    iput-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isExit:Z

    .line 164
    iput-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isExits:Z

    .line 166
    iput v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->sendError:I

    .line 168
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##%"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->decimalFormat:Ljava/text/DecimalFormat;

    .line 1396
    new-instance v0, Lcn/highlight/work_card_write/activity/WriteActivity$11;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/activity/WriteActivity$11;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;)V

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method private CheckData()V
    .locals 3

    const-string v0, "TAG"

    const-string v1, "CheckData: \u6570\u636e\u6821\u9a8c"

    .line 1193
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    iget-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isExits:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 1195
    fill-array-data v0, :array_0

    .line 1196
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->txManager:Lcn/highlight/tx/BaseTxManager;

    new-instance v2, Lcn/highlight/work_card_write/activity/WriteActivity$9;

    invoke-direct {v2, p0}, Lcn/highlight/work_card_write/activity/WriteActivity$9;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;)V

    invoke-virtual {v1, v0, v2}, Lcn/highlight/tx/BaseTxManager;->writeData([BLcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;)V

    return-void

    nop

    :array_0
    .array-data 1
        -0x5bt
        0x0t
        0x13t
        0x13t
    .end array-data
.end method

.method static synthetic access$002(Lcn/highlight/work_card_write/activity/WriteActivity;Z)Z
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isSearch:Z

    return p1
.end method

.method static synthetic access$100(Lcn/highlight/work_card_write/activity/WriteActivity;Ljava/lang/String;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->addInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcn/highlight/work_card_write/activity/WriteActivity;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->clearHandler()V

    return-void
.end method

.method static synthetic access$1100(Lcn/highlight/work_card_write/activity/WriteActivity;Ljava/lang/String;I)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2}, Lcn/highlight/work_card_write/activity/WriteActivity;->addInfo(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1202(Lcn/highlight/work_card_write/activity/WriteActivity;Z)Z
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isWrite:Z

    return p1
.end method

.method static synthetic access$1302(Lcn/highlight/work_card_write/activity/WriteActivity;Z)Z
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isExit:Z

    return p1
.end method

.method static synthetic access$1400(Lcn/highlight/work_card_write/activity/WriteActivity;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->exitProgress()V

    return-void
.end method

.method static synthetic access$1500(Lcn/highlight/work_card_write/activity/WriteActivity;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->reSend()V

    return-void
.end method

.method static synthetic access$1600(Lcn/highlight/work_card_write/activity/WriteActivity;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->disConnectBLE()V

    return-void
.end method

.method static synthetic access$1700(Lcn/highlight/work_card_write/activity/WriteActivity;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->swipe()V

    return-void
.end method

.method static synthetic access$1800(Lcn/highlight/work_card_write/activity/WriteActivity;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->clearNFCCallback()V

    return-void
.end method

.method static synthetic access$200(Lcn/highlight/work_card_write/activity/WriteActivity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcn/highlight/work_card_write/activity/WriteActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcn/highlight/work_card_write/activity/WriteActivity;)Landroid/os/Handler;
    .locals 0

    .line 92
    iget-object p0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcn/highlight/work_card_write/activity/WriteActivity;)Lcn/highlight/tx/BaseTxManager;
    .locals 0

    .line 92
    iget-object p0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->txManager:Lcn/highlight/tx/BaseTxManager;

    return-object p0
.end method

.method static synthetic access$500(Lcn/highlight/work_card_write/activity/WriteActivity;Lcn/highlight/tx/ble/data/BleDevice;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->connectBLE(Lcn/highlight/tx/ble/data/BleDevice;)V

    return-void
.end method

.method static synthetic access$602(Lcn/highlight/work_card_write/activity/WriteActivity;Z)Z
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isConnect:Z

    return p1
.end method

.method static synthetic access$700(Lcn/highlight/work_card_write/activity/WriteActivity;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->sendStatrData()V

    return-void
.end method

.method static synthetic access$802(Lcn/highlight/work_card_write/activity/WriteActivity;Z)Z
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isStart:Z

    return p1
.end method

.method static synthetic access$900(Lcn/highlight/work_card_write/activity/WriteActivity;)Z
    .locals 0

    .line 92
    iget-boolean p0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isNormal:Z

    return p0
.end method

.method static synthetic access$902(Lcn/highlight/work_card_write/activity/WriteActivity;Z)Z
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isNormal:Z

    return p1
.end method

.method private addInfo(Ljava/lang/String;)V
    .locals 1

    .line 1444
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$tEN90Fo5ocMHBwmdIfih2ZKcbW4;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$tEN90Fo5ocMHBwmdIfih2ZKcbW4;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private addInfo(Ljava/lang/String;I)V
    .locals 1

    .line 1456
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$vxavto3l-0O9qocdBwe3WK38NGY;

    invoke-direct {v0, p0, p1, p2}, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$vxavto3l-0O9qocdBwe3WK38NGY;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private backHome(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 467
    invoke-static {}, Lcn/highlight/core/utils/AppManager;->getAppManager()Lcn/highlight/core/utils/AppManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/core/utils/AppManager;->finishAllActivity()V

    .line 468
    const-class p1, Lcn/highlight/work_card_write/activity/HomeActivity;

    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->launchActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 470
    :cond_0
    invoke-static {}, Lcn/highlight/core/utils/AppManager;->getAppManager()Lcn/highlight/core/utils/AppManager;

    move-result-object p1

    const-class v0, Lcn/highlight/work_card_write/activity/HomeActivity;

    invoke-virtual {p1, v0}, Lcn/highlight/core/utils/AppManager;->appExitLogin(Ljava/lang/Class;)V

    :goto_0
    return-void
.end method

.method private checkPermission()V
    .locals 4

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 631
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->nfcAdapter:Landroid/nfc/NfcAdapter;

    const-string v2, "\u3001"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const v1, 0x7f100112

    .line 632
    invoke-virtual {p0, v1}, Lcn/highlight/work_card_write/activity/WriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    :cond_1
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const v1, 0x7f100109

    .line 635
    invoke-virtual {p0, v1}, Lcn/highlight/work_card_write/activity/WriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    :cond_3
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->locationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_4

    const-string v3, "gps"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->locationManager:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const v1, 0x7f100111

    .line 638
    invoke-virtual {p0, v1}, Lcn/highlight/work_card_write/activity/WriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f100114

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 642
    invoke-direct {p0, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->showTipToast(Ljava/lang/String;)V

    return-void

    .line 645
    :cond_6
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->showStartNFCDialog()V

    .line 646
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->readNFC()V

    return-void
.end method

.method private checkWrite()V
    .locals 1

    .line 929
    iget-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isWrite:Z

    if-nez v0, :cond_0

    .line 930
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->disConnectBLE()V

    :cond_0
    return-void
.end method

.method private clearHandler()V
    .locals 2

    .line 1435
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1436
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private clearNFCCallback()V
    .locals 4

    .line 681
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 682
    iput-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;

    .line 683
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->nfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v2, 0x1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/nfc/NfcAdapter;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private connectBLE(Lcn/highlight/tx/ble/data/BleDevice;)V
    .locals 2

    .line 866
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10010a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->addInfo(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 867
    iput-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isConnect:Z

    .line 868
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->txManager:Lcn/highlight/tx/BaseTxManager;

    new-instance v1, Lcn/highlight/work_card_write/activity/WriteActivity$2;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/activity/WriteActivity$2;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;)V

    invoke-virtual {v0, p1, v1}, Lcn/highlight/tx/BaseTxManager;->conn(Lcn/highlight/tx/ble/data/BleDevice;Lcn/highlight/tx/listener/OnConnStatus;)V

    return-void
.end method

.method private dataReSend(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "[B>;)V"
        }
    .end annotation

    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dataReSend: \u6570\u636e\u8865\u53d1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    iget-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isExits:Z

    if-eqz v0, :cond_0

    return-void

    .line 1166
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1167
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->txManager:Lcn/highlight/tx/BaseTxManager;

    new-instance v2, Lcn/highlight/work_card_write/activity/WriteActivity$8;

    invoke-direct {v2, p0}, Lcn/highlight/work_card_write/activity/WriteActivity$8;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;)V

    invoke-virtual {v1, v0, v2}, Lcn/highlight/tx/BaseTxManager;->writeData([BLcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;)V

    const-wide/16 v0, 0x1e

    .line 1179
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1181
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1184
    :cond_1
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->progressBar:Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;

    invoke-virtual {p1}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->getMax()I

    move-result p1

    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->setCurrentProcess(I)V

    .line 1185
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->CheckData()V

    return-void
.end method

.method private disConnectBLE()V
    .locals 1

    .line 1265
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$J-IhwFuf5CgwP7UY1A3wALXAy60;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$J-IhwFuf5CgwP7UY1A3wALXAy60;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;)V

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private dismissNFCDialog()V
    .locals 1

    .line 672
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->nfcDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private exitProgress()V
    .locals 1

    .line 1503
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$pJ9UnK6Hov2Mc3V5AcQshVUiCG8;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$pJ9UnK6Hov2Mc3V5AcQshVUiCG8;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;)V

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initBLETXReceive()V
    .locals 1

    .line 691
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$h5fuse2w8mW2LTE1hlzESuNBHIU;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$h5fuse2w8mW2LTE1hlzESuNBHIU;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;)V

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->onDataReceivedTag:Lcn/highlight/tx/listener/OnDataReceivedTag;

    return-void
.end method

.method private initImage()V
    .locals 3

    .line 291
    sget-object v0, Lcn/highlight/work_card_write/Constants;->editModelImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/highlight/work_card_write/Constants;->editModelImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    sget-object v0, Lcn/highlight/work_card_write/Constants;->editModelImage:Landroid/graphics/Bitmap;

    iget v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeWidth:I

    iget v2, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeHeight:I

    invoke-static {v0, v1, v2}, Lcn/highlight/work_card_write/util/ScaleBitmapUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->bitmap:Landroid/graphics/Bitmap;

    .line 293
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->setImage()V

    :cond_0
    return-void
.end method

.method private initProcess()V
    .locals 1

    .line 1465
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$e7mhoJyjOlANPdviL3mikvveIN8;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$e7mhoJyjOlANPdviL3mikvveIN8;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;)V

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initRB()V
    .locals 3

    .line 266
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 267
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 268
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->rfRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 269
    new-instance v0, Lcn/highlight/work_card_write/adapter/WriteAdapter;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/adapter/WriteAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeAdapter:Lcn/highlight/work_card_write/adapter/WriteAdapter;

    .line 270
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->rfRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeAdapter:Lcn/highlight/work_card_write/adapter/WriteAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 272
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeSize:Ljava/lang/String;

    invoke-static {v0}, Lcn/highlight/work_card_write/util/BadgeSpecificationUtils;->getColorBySize(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeAdapter:Lcn/highlight/work_card_write/adapter/WriteAdapter;

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeColor:Ljava/lang/String;

    iput-object v2, v1, Lcn/highlight/work_card_write/adapter/WriteAdapter;->selectColor:Ljava/lang/String;

    .line 274
    invoke-virtual {v1, v0}, Lcn/highlight/work_card_write/adapter/WriteAdapter;->setDataList(Ljava/util/List;)V

    .line 275
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeAdapter:Lcn/highlight/work_card_write/adapter/WriteAdapter;

    new-instance v2, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$zNvYP3NsiRHbb9k_cujmcVtBYIs;

    invoke-direct {v2, p0, v0}, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$zNvYP3NsiRHbb9k_cujmcVtBYIs;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/adapter/WriteAdapter;->setOnItemClickListener(Lcn/highlight/work_card_write/adapter/WriteAdapter$OnItemClickListener;)V

    return-void
.end method

.method private initShake()V
    .locals 4

    .line 242
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00ac

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 243
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00ab

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 244
    iget-object v2, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->slideSwitch:Lcn/highlight/work_card_write/view/SlideSwitchView;

    invoke-virtual {v2, v0, v1}, Lcn/highlight/work_card_write/view/SlideSwitchView;->setSwitchImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 245
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->slideSwitch:Lcn/highlight/work_card_write/view/SlideSwitchView;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070148

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcn/highlight/work_card_write/view/SlideSwitchView;->setSwitchImageSize(II)V

    .line 246
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->slideSwitch:Lcn/highlight/work_card_write/view/SlideSwitchView;

    iget-boolean v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isShake:Z

    invoke-virtual {v0, v1}, Lcn/highlight/work_card_write/view/SlideSwitchView;->setChecked(Z)V

    .line 247
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->slideSwitch:Lcn/highlight/work_card_write/view/SlideSwitchView;

    new-instance v1, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$Z0omgKHXWbW0vrBEeLO_050K3RQ;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$Z0omgKHXWbW0vrBEeLO_050K3RQ;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;)V

    invoke-virtual {v0, v1}, Lcn/highlight/work_card_write/view/SlideSwitchView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initTX()V
    .locals 2

    .line 392
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->txManager:Lcn/highlight/tx/BaseTxManager;

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Lcn/highlight/tx/BaseTxManager;

    invoke-direct {v0}, Lcn/highlight/tx/BaseTxManager;-><init>()V

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->txManager:Lcn/highlight/tx/BaseTxManager;

    .line 396
    :cond_0
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    .line 397
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->nfcAdapter:Landroid/nfc/NfcAdapter;

    .line 400
    :cond_1
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_2

    .line 401
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->txManager:Lcn/highlight/tx/BaseTxManager;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/highlight/tx/BaseTxManager;->initBle(Landroid/app/Application;)V

    .line 402
    invoke-static {}, Lcn/highlight/tx/ble/BleManager;->getInstance()Lcn/highlight/tx/ble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/tx/ble/BleManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 405
    :cond_2
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_3

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 406
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "location"

    .line 407
    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->locationManager:Landroid/location/LocationManager;

    :cond_3
    return-void
.end method

.method private initWrite()V
    .locals 2

    .line 223
    iget v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->type:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    sget-object v0, Lcn/highlight/work_card_write/Constants;->editSize:Ljava/lang/String;

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeSize:Ljava/lang/String;

    const-string v0, "\u9ed1\u767d\u7ea2\u9ec4"

    .line 231
    iput-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeColor:Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeSize:Ljava/lang/String;

    invoke-static {v0}, Lcn/highlight/work_card_write/util/BadgeSpecificationUtils;->getWidthBySzie(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeWidth:I

    .line 233
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeSize:Ljava/lang/String;

    invoke-static {v0}, Lcn/highlight/work_card_write/util/BadgeSpecificationUtils;->getHeightBySzie(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeHeight:I

    .line 234
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->editColorLinear:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 224
    :cond_1
    :goto_0
    sget-object v0, Lcn/highlight/work_card_write/Constants;->editSize:Ljava/lang/String;

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeSize:Ljava/lang/String;

    .line 225
    sget-object v0, Lcn/highlight/work_card_write/Constants;->editColor:Ljava/lang/String;

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeColor:Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeSize:Ljava/lang/String;

    invoke-static {v0}, Lcn/highlight/work_card_write/util/BadgeSpecificationUtils;->getWidthBySzie(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeWidth:I

    .line 227
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeSize:Ljava/lang/String;

    invoke-static {v0}, Lcn/highlight/work_card_write/util/BadgeSpecificationUtils;->getHeightBySzie(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeHeight:I

    .line 228
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->editColorLinear:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public static synthetic lambda$3HRYHzo7PJFFviuqUX-HgukwwXg(Lcn/highlight/work_card_write/activity/WriteActivity;)V
    .locals 0

    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->checkWrite()V

    return-void
.end method

.method public static synthetic lambda$3a-X46KiqZUUGGSlOr_rNvA-4Ls(Lcn/highlight/work_card_write/activity/WriteActivity;)V
    .locals 0

    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->sendStatrData()V

    return-void
.end method

.method public static synthetic lambda$l7bH2cqpt2hztStgm_zXZKnPBu8(Lcn/highlight/work_card_write/activity/WriteActivity;)V
    .locals 0

    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->disConnectBLE()V

    return-void
.end method

.method static synthetic lambda$null$3(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 369
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$null$4(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 370
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$null$8()V
    .locals 1

    .line 442
    invoke-static {}, Lcn/highlight/work_card_write/api/ApiUtil;->getInstance()Lcn/highlight/work_card_write/api/ApiUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/api/ApiUtil;->getLoadingUtil()Lcn/highlight/core/utils/load/LoadingUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/core/utils/load/LoadingUtil;->dismissProgressDialog()V

    return-void
.end method

.method private reSend()V
    .locals 3

    .line 1237
    iget v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->sendError:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    .line 1238
    iput v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->sendError:I

    .line 1239
    invoke-direct {p0, v1}, Lcn/highlight/work_card_write/activity/WriteActivity;->refreshUI(I)V

    goto :goto_0

    :cond_0
    add-int/2addr v0, v1

    .line 1241
    iput v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->sendError:I

    .line 1242
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->sendStatrData()V

    :goto_0
    return-void
.end method

.method private readNFC()V
    .locals 4

    .line 760
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$Sk08qk88tYuIxowI2ab4lBP-TQc;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$Sk08qk88tYuIxowI2ab4lBP-TQc;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;)V

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;

    .line 808
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    return-void

    .line 809
    :cond_0
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;

    const/4 v2, 0x1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/nfc/NfcAdapter;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    return-void
.end method

.method private refreshUI(I)V
    .locals 3

    .line 1252
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x7d0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1254
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 1256
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private saveDoodleLists(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/highlight/lib_doodle/IDoodleItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 557
    invoke-static {p2}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->imageName:Ljava/lang/String;

    .line 560
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/IDoodleItem;

    .line 561
    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodleItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v1

    sget-object v2, Lcn/highlight/lib_doodle/DoodlePen;->BG:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 562
    :cond_1
    new-instance v1, Lcn/highlight/work_card_write/greendao/table/DoodleBean;

    invoke-direct {v1}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;-><init>()V

    .line 563
    invoke-virtual {v1, p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setImageName(Ljava/lang/String;)V

    .line 564
    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodleItem;->getSize()F

    move-result v2

    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMSize(F)V

    .line 565
    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodleItem;->getColor()Lcn/highlight/lib_doodle/IDoodleColor;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, -0x1

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodleItem;->getColor()Lcn/highlight/lib_doodle/IDoodleColor;

    move-result-object v2

    check-cast v2, Lcn/highlight/lib_doodle/DoodleColor;

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleColor;->getColor()I

    move-result v2

    :goto_1
    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMColor(I)V

    .line 566
    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodleItem;->getLocation()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMLocationX(F)V

    .line 567
    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodleItem;->getLocation()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMLocationY(F)V

    .line 568
    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodleItem;->getPivotX()F

    move-result v2

    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMPivotX(F)V

    .line 569
    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodleItem;->getPivotY()F

    move-result v2

    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMPivotY(F)V

    .line 570
    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodleItem;->getItemRotate()F

    move-result v2

    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMRotate(F)V

    .line 571
    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodleItem;->isNeedClipOutside()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMIsNeedClipOutside(Z)V

    .line 572
    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodleItem;->getScale()F

    move-result v2

    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMScale(F)V

    .line 573
    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodleItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v2

    sget-object v3, Lcn/highlight/lib_doodle/DoodlePen;->TEXT:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    .line 574
    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMIDoodlePen(I)V

    .line 575
    check-cast v0, Lcn/highlight/lib_doodle/DoodleText;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleText;->getText1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMText(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleText;->getText0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMText0(Ljava/lang/String;)V

    .line 577
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleText;->getTypeface()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMTextStyle(Ljava/lang/String;)V

    .line 578
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleText;->getBgColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMTextBgColor(I)V

    .line 579
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleText;->getBold()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMTextBold(I)V

    .line 580
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleText;->getItalic()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMTextItalic(I)V

    .line 581
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleText;->getUnderline()I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMTextUnderline(I)V

    goto/16 :goto_2

    .line 582
    :cond_3
    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodleItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v2

    sget-object v3, Lcn/highlight/lib_doodle/DoodlePen;->BITMAP:Lcn/highlight/lib_doodle/DoodlePen;

    const/16 v4, 0x64

    const-string v5, ".png"

    if-ne v2, v3, :cond_4

    const/4 v2, 0x2

    .line 583
    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMIDoodlePen(I)V

    .line 584
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 585
    invoke-static {}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getInstance()Lcn/highlight/work_card_write/util/FileCompressUtil;

    move-result-object v3

    check-cast v0, Lcn/highlight/lib_doodle/DoodleBitmap;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, p0, v0, v2}, Lcn/highlight/work_card_write/util/FileCompressUtil;->saveBitmapToPath(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 586
    invoke-static {}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getInstance()Lcn/highlight/work_card_write/util/FileCompressUtil;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v4, v2}, Lcn/highlight/work_card_write/util/FileCompressUtil;->compressImgSync(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 587
    invoke-static {}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getInstance()Lcn/highlight/work_card_write/util/FileCompressUtil;

    move-result-object v2

    invoke-static {}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getInstance()Lcn/highlight/work_card_write/util/FileCompressUtil;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getBitmapFromPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getBitmapToDatabase(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 588
    invoke-virtual {v1, v0}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMBitmap([B)V

    goto/16 :goto_2

    .line 589
    :cond_4
    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodleItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v2

    sget-object v3, Lcn/highlight/lib_doodle/DoodlePen;->QRCODE:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v2, v3, :cond_5

    const/4 v2, 0x3

    .line 590
    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMIDoodlePen(I)V

    .line 591
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 592
    invoke-static {}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getInstance()Lcn/highlight/work_card_write/util/FileCompressUtil;

    move-result-object v3

    check-cast v0, Lcn/highlight/lib_doodle/DoodleQRCode;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleQRCode;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, p0, v5, v2}, Lcn/highlight/work_card_write/util/FileCompressUtil;->saveBitmapToPath(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 593
    invoke-static {}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getInstance()Lcn/highlight/work_card_write/util/FileCompressUtil;

    move-result-object v5

    invoke-virtual {v5, p0, v3, v4, v2}, Lcn/highlight/work_card_write/util/FileCompressUtil;->compressImgSync(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 594
    invoke-static {}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getInstance()Lcn/highlight/work_card_write/util/FileCompressUtil;

    move-result-object v3

    invoke-static {}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getInstance()Lcn/highlight/work_card_write/util/FileCompressUtil;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getBitmapFromPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getBitmapToDatabase(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 595
    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMBitmap([B)V

    .line 596
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleQRCode;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMText(Ljava/lang/String;)V

    .line 597
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleQRCode;->getBgColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setBgColor(I)V

    .line 598
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleQRCode;->getFgColor()I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setFgColor(I)V

    goto/16 :goto_2

    .line 599
    :cond_5
    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodleItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v2

    sget-object v3, Lcn/highlight/lib_doodle/DoodlePen;->BARCODE:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v2, v3, :cond_6

    const/4 v2, 0x4

    .line 600
    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMIDoodlePen(I)V

    .line 601
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 602
    invoke-static {}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getInstance()Lcn/highlight/work_card_write/util/FileCompressUtil;

    move-result-object v3

    check-cast v0, Lcn/highlight/lib_doodle/DoodleBarCode;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleBarCode;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, p0, v5, v2}, Lcn/highlight/work_card_write/util/FileCompressUtil;->saveBitmapToPath(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 603
    invoke-static {}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getInstance()Lcn/highlight/work_card_write/util/FileCompressUtil;

    move-result-object v5

    invoke-virtual {v5, p0, v3, v4, v2}, Lcn/highlight/work_card_write/util/FileCompressUtil;->compressImgSync(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 604
    invoke-static {}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getInstance()Lcn/highlight/work_card_write/util/FileCompressUtil;

    move-result-object v3

    invoke-static {}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getInstance()Lcn/highlight/work_card_write/util/FileCompressUtil;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getBitmapFromPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getBitmapToDatabase(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 605
    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMBitmap([B)V

    .line 606
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleBarCode;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMText(Ljava/lang/String;)V

    .line 607
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleBarCode;->getBgColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setBgColor(I)V

    .line 608
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleBarCode;->getFgColor()I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setFgColor(I)V

    goto :goto_2

    .line 609
    :cond_6
    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodleItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v2

    sget-object v3, Lcn/highlight/lib_doodle/DoodlePen;->SHAPE:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v2, v3, :cond_7

    const/4 v2, 0x5

    .line 610
    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMIDoodlePen(I)V

    .line 611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 612
    invoke-static {}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getInstance()Lcn/highlight/work_card_write/util/FileCompressUtil;

    move-result-object v3

    check-cast v0, Lcn/highlight/lib_doodle/DoodleShape1;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleShape1;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, p0, v5, v2}, Lcn/highlight/work_card_write/util/FileCompressUtil;->saveBitmapToPath(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 613
    invoke-static {}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getInstance()Lcn/highlight/work_card_write/util/FileCompressUtil;

    move-result-object v5

    invoke-virtual {v5, p0, v3, v4, v2}, Lcn/highlight/work_card_write/util/FileCompressUtil;->compressImgSync(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 614
    invoke-static {}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getInstance()Lcn/highlight/work_card_write/util/FileCompressUtil;

    move-result-object v3

    invoke-static {}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getInstance()Lcn/highlight/work_card_write/util/FileCompressUtil;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getBitmapFromPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getBitmapToDatabase(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 615
    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMBitmap([B)V

    .line 616
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleShape1;->getFgColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setFgColor(I)V

    .line 617
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleShape1;->getShape1()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setShape1(I)V

    .line 618
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleShape1;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setWidth(I)V

    .line 619
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleShape1;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setHeight(I)V

    .line 620
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleShape1;->getEffects()I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setEffects(I)V

    .line 622
    :cond_7
    :goto_2
    invoke-static {v1}, Lcn/highlight/work_card_write/greendao/dao/DoodleBeanDaoUse;->insert(Lcn/highlight/work_card_write/greendao/table/DoodleBean;)V

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private saveModelData(Z)V
    .locals 9

    .line 479
    sget-object v0, Lcn/highlight/work_card_write/Constants;->editSaveModel:Lcn/highlight/lib_doodle/IDoodle;

    const v1, 0x7f100118

    if-nez v0, :cond_0

    .line 480
    invoke-virtual {p0, v1}, Lcn/highlight/work_card_write/activity/WriteActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->showTipToast(Ljava/lang/String;)V

    return-void

    .line 483
    :cond_0
    iget-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isImageSave:Z

    const/4 v2, 0x0

    if-nez v0, :cond_6

    .line 484
    sget-object v0, Lcn/highlight/work_card_write/Constants;->editSaveModel:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodle;->getAllItem()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 486
    invoke-virtual {p0, v1}, Lcn/highlight/work_card_write/activity/WriteActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->showTipToast(Ljava/lang/String;)V

    return-void

    .line 490
    :cond_1
    sget-object v1, Lcn/highlight/work_card_write/Constants;->editSaveModel:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodle;->getAllItem()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/highlight/lib_doodle/DoodleBg;

    invoke-virtual {v1}, Lcn/highlight/lib_doodle/DoodleBg;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget v3, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeWidth:I

    mul-int/lit8 v3, v3, 0x4

    iget v4, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeHeight:I

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v1, v3, v4}, Lcn/highlight/work_card_write/util/ScaleBitmapUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 491
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 492
    invoke-static {}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getInstance()Lcn/highlight/work_card_write/util/FileCompressUtil;

    move-result-object v5

    invoke-virtual {v5, p0, v1, v3}, Lcn/highlight/work_card_write/util/FileCompressUtil;->saveBitmapToPath(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 493
    invoke-static {}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getInstance()Lcn/highlight/work_card_write/util/FileCompressUtil;

    move-result-object v5

    const/16 v6, 0x64

    invoke-virtual {v5, p0, v1, v6, v3}, Lcn/highlight/work_card_write/util/FileCompressUtil;->compressImgSync(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 494
    invoke-static {}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getInstance()Lcn/highlight/work_card_write/util/FileCompressUtil;

    move-result-object v3

    invoke-static {}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getInstance()Lcn/highlight/work_card_write/util/FileCompressUtil;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getBitmapFromPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getBitmapToDatabase(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    .line 496
    sget-object v3, Lcn/highlight/work_card_write/Constants;->editModelImage:Landroid/graphics/Bitmap;

    iget v5, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeWidth:I

    mul-int/lit8 v5, v5, 0x4

    iget v7, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeHeight:I

    mul-int/lit8 v7, v7, 0x4

    invoke-static {v3, v5, v7}, Lcn/highlight/work_card_write/util/ScaleBitmapUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 497
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 498
    invoke-static {}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getInstance()Lcn/highlight/work_card_write/util/FileCompressUtil;

    move-result-object v5

    invoke-virtual {v5, p0, v3, v4}, Lcn/highlight/work_card_write/util/FileCompressUtil;->saveBitmapToPath(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 499
    invoke-static {}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getInstance()Lcn/highlight/work_card_write/util/FileCompressUtil;

    move-result-object v5

    invoke-virtual {v5, p0, v3, v6, v4}, Lcn/highlight/work_card_write/util/FileCompressUtil;->compressImgSync(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 500
    invoke-static {}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getInstance()Lcn/highlight/work_card_write/util/FileCompressUtil;

    move-result-object v4

    invoke-static {}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getInstance()Lcn/highlight/work_card_write/util/FileCompressUtil;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getBitmapFromPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getBitmapToDatabase(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    .line 501
    sget-object v4, Lcn/highlight/work_card_write/Constants;->editSelectModel:Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    if-eqz v4, :cond_4

    sget-object v4, Lcn/highlight/work_card_write/Constants;->IsModelThemeIn:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 526
    :cond_2
    sget-object v4, Lcn/highlight/work_card_write/Constants;->editSelectModel:Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    .line 528
    iget-boolean v5, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->modify:Z

    if-eqz v5, :cond_3

    .line 530
    invoke-virtual {v4}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getImageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/highlight/work_card_write/greendao/dao/DoodleBeanDaoUse;->deleteAllByName(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v4}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getImageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcn/highlight/work_card_write/activity/WriteActivity;->saveDoodleLists(Ljava/util/List;Ljava/lang/String;)V

    .line 534
    invoke-virtual {v4, v1}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->setBitmapStart([B)V

    .line 535
    invoke-virtual {v4, v3}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->setBitmapEnd([B)V

    .line 536
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->setTime(Ljava/lang/String;)V

    .line 537
    invoke-static {v4}, Lcn/highlight/work_card_write/greendao/dao/BadgeBeanDaoUse;->update(Lcn/highlight/work_card_write/greendao/table/BadgeBean;)V

    goto :goto_1

    .line 540
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->setTime(Ljava/lang/String;)V

    .line 541
    invoke-static {v4}, Lcn/highlight/work_card_write/greendao/dao/BadgeBeanDaoUse;->update(Lcn/highlight/work_card_write/greendao/table/BadgeBean;)V

    goto :goto_1

    .line 502
    :cond_4
    :goto_0
    iget-object v4, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->baseBadgeBean:Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    if-nez v4, :cond_5

    const-string v4, ""

    .line 504
    invoke-direct {p0, v0, v4}, Lcn/highlight/work_card_write/activity/WriteActivity;->saveDoodleLists(Ljava/util/List;Ljava/lang/String;)V

    .line 506
    new-instance v0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    invoke-direct {v0}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;-><init>()V

    .line 507
    iget-object v4, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->imageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->setImageName(Ljava/lang/String;)V

    .line 508
    iget-object v4, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeSize:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->setSize(Ljava/lang/String;)V

    .line 509
    iget-object v4, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeColor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->setColor(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v0, v1}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->setBitmapStart([B)V

    .line 511
    invoke-virtual {v0, v3}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->setBitmapEnd([B)V

    .line 512
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->setTime(Ljava/lang/String;)V

    .line 513
    invoke-static {v0}, Lcn/highlight/work_card_write/greendao/dao/BadgeBeanDaoUse;->insert(Lcn/highlight/work_card_write/greendao/table/BadgeBean;)V

    goto :goto_1

    .line 516
    :cond_5
    invoke-virtual {v4}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getImageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/highlight/work_card_write/greendao/dao/DoodleBeanDaoUse;->deleteAllByName(Ljava/lang/String;)V

    .line 518
    iget-object v4, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->baseBadgeBean:Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    invoke-virtual {v4}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getImageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcn/highlight/work_card_write/activity/WriteActivity;->saveDoodleLists(Ljava/util/List;Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->baseBadgeBean:Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    invoke-virtual {v0, v1}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->setBitmapStart([B)V

    .line 521
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->baseBadgeBean:Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    invoke-virtual {v0, v3}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->setBitmapEnd([B)V

    .line 522
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->baseBadgeBean:Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->setTime(Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->baseBadgeBean:Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    invoke-static {v0}, Lcn/highlight/work_card_write/greendao/dao/BadgeBeanDaoUse;->update(Lcn/highlight/work_card_write/greendao/table/BadgeBean;)V

    :cond_6
    :goto_1
    const/4 v0, 0x1

    .line 545
    iput-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isImageSave:Z

    const v0, 0x7f100119

    .line 546
    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->showTipToast(Ljava/lang/String;)V

    .line 547
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcn/highlight/work_card_write/api/MessageEvent;

    const-string v3, "\u5237\u65b0\u4e3b\u9898"

    invoke-direct {v1, v3}, Lcn/highlight/work_card_write/api/MessageEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    if-eqz p1, :cond_7

    .line 548
    invoke-direct {p0, v2}, Lcn/highlight/work_card_write/activity/WriteActivity;->backHome(Z)V

    .line 549
    :cond_7
    invoke-static {}, Lcn/highlight/work_card_write/util/FileCompressUtil;->getInstance()Lcn/highlight/work_card_write/util/FileCompressUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/work_card_write/util/FileCompressUtil;->clearCompressPath()V

    return-void
.end method

.method private sendData(Landroid/nfc/tech/IsoDep;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1276
    :try_start_0
    iget-boolean v0, v1, Lcn/highlight/work_card_write/activity/WriteActivity;->isExits:Z

    if-eqz v0, :cond_0

    return-void

    .line 1277
    :cond_0
    iput-boolean v4, v1, Lcn/highlight/work_card_write/activity/WriteActivity;->isWrite:Z

    const/4 v0, 0x5

    new-array v5, v0, [B

    const/16 v6, -0x30

    aput-byte v6, v5, v3

    const/16 v7, -0x2f

    aput-byte v7, v5, v4

    const/4 v8, 0x2

    aput-byte v3, v5, v8

    const/4 v9, 0x3

    aput-byte v3, v5, v9

    const/4 v10, 0x4

    aput-byte v3, v5, v10

    .line 1280
    invoke-virtual {v2, v5}, Landroid/nfc/tech/IsoDep;->transceive([B)[B

    move-result-object v5

    .line 1281
    invoke-static {v5}, Lcn/highlight/work_card_write/util/HexUtils;->byte2HexStr([B)Ljava/lang/String;

    move-result-object v5

    const/16 v11, 0xf8

    if-eqz v5, :cond_d

    const-string v12, "9000"

    .line 1284
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1285
    invoke-virtual/range {p0 .. p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v12, 0x7f10011b

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcn/highlight/work_card_write/activity/WriteActivity;->addInfo(Ljava/lang/String;)V

    .line 1288
    iget-object v5, v1, Lcn/highlight/work_card_write/activity/WriteActivity;->writeImgData:[[B

    aget-object v5, v5, v3

    .line 1290
    invoke-direct/range {p0 .. p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->initProcess()V

    .line 1292
    array-length v12, v5

    rem-int/2addr v12, v11

    if-nez v12, :cond_1

    array-length v12, v5

    div-int/2addr v12, v11

    goto :goto_0

    :cond_1
    array-length v12, v5

    div-int/2addr v12, v11

    add-int/2addr v12, v4

    :goto_0
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    const/16 v15, 0xfd

    if-ge v13, v12, :cond_6

    new-array v15, v15, [B

    aput-byte v6, v15, v3

    aput-byte v7, v15, v4

    add-int/lit8 v0, v12, -0x1

    if-ge v13, v0, :cond_2

    const/16 v16, 0x1

    goto :goto_2

    :cond_2
    const/16 v16, 0x2

    :goto_2
    aput-byte v16, v15, v8

    aput-byte v3, v15, v9

    if-ge v13, v0, :cond_3

    const/16 v0, 0xf8

    goto :goto_3

    .line 1300
    :cond_3
    array-length v9, v5

    mul-int/lit16 v0, v0, 0xf8

    sub-int v0, v9, v0

    :goto_3
    int-to-byte v0, v0

    aput-byte v0, v15, v10

    const/4 v0, 0x5

    .line 1301
    :goto_4
    array-length v9, v15

    if-ge v0, v9, :cond_5

    mul-int/lit16 v9, v13, 0xf8

    add-int/lit8 v17, v0, -0x5

    add-int v9, v9, v17

    .line 1302
    array-length v10, v5

    if-ge v9, v10, :cond_4

    .line 1303
    aget-byte v9, v5, v9

    aput-byte v9, v15, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    const/4 v10, 0x4

    goto :goto_4

    .line 1306
    :cond_5
    invoke-virtual {v2, v15}, Landroid/nfc/tech/IsoDep;->transceive([B)[B

    .line 1307
    array-length v0, v15

    add-int/2addr v14, v0

    .line 1308
    invoke-direct {v1, v14}, Lcn/highlight/work_card_write/activity/WriteActivity;->setCurrentProcess(I)V

    add-int/lit8 v13, v13, 0x1

    const/4 v0, 0x5

    const/4 v9, 0x3

    const/4 v10, 0x4

    goto :goto_1

    .line 1313
    :cond_6
    iget-object v0, v1, Lcn/highlight/work_card_write/activity/WriteActivity;->writeImgData:[[B

    aget-object v0, v0, v4

    .line 1315
    array-length v5, v0

    rem-int/2addr v5, v11

    if-nez v5, :cond_7

    array-length v5, v0

    div-int/2addr v5, v11

    goto :goto_5

    :cond_7
    array-length v5, v0

    div-int/2addr v5, v11

    add-int/2addr v5, v4

    :goto_5
    const/4 v9, 0x0

    :goto_6
    if-ge v9, v5, :cond_c

    new-array v10, v15, [B

    aput-byte v6, v10, v3

    aput-byte v7, v10, v4

    add-int/lit8 v12, v5, -0x1

    if-ge v9, v12, :cond_8

    const/4 v13, 0x4

    goto :goto_7

    :cond_8
    const/4 v13, 0x5

    :goto_7
    aput-byte v13, v10, v8

    const/4 v13, 0x3

    aput-byte v3, v10, v13

    if-ge v9, v12, :cond_9

    const/16 v12, 0xf8

    goto :goto_8

    .line 1324
    :cond_9
    array-length v13, v0

    mul-int/lit16 v12, v12, 0xf8

    sub-int v12, v13, v12

    :goto_8
    int-to-byte v12, v12

    const/4 v13, 0x4

    aput-byte v12, v10, v13

    const/4 v12, 0x5

    .line 1325
    :goto_9
    array-length v13, v10

    if-ge v12, v13, :cond_b

    mul-int/lit16 v13, v9, 0xf8

    add-int/lit8 v18, v12, -0x5

    add-int v13, v13, v18

    .line 1326
    array-length v11, v0

    if-ge v13, v11, :cond_a

    .line 1327
    aget-byte v11, v0, v13

    aput-byte v11, v10, v12

    :cond_a
    add-int/lit8 v12, v12, 0x1

    const/16 v11, 0xf8

    goto :goto_9

    .line 1330
    :cond_b
    invoke-virtual {v2, v10}, Landroid/nfc/tech/IsoDep;->transceive([B)[B

    .line 1331
    array-length v10, v10

    add-int/2addr v14, v10

    .line 1332
    invoke-direct {v1, v14}, Lcn/highlight/work_card_write/activity/WriteActivity;->setCurrentProcess(I)V

    add-int/lit8 v9, v9, 0x1

    const/16 v11, 0xf8

    goto :goto_6

    :cond_c
    const-wide/16 v9, 0x32

    .line 1334
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    const/4 v0, 0x5

    new-array v5, v0, [B

    aput-byte v6, v5, v3

    aput-byte v7, v5, v4

    const/4 v0, 0x3

    aput-byte v0, v5, v8

    aput-byte v3, v5, v0

    const/4 v0, 0x4

    aput-byte v3, v5, v0

    .line 1336
    invoke-virtual {v2, v5}, Landroid/nfc/tech/IsoDep;->transceive([B)[B

    .line 1337
    iget-object v0, v1, Lcn/highlight/work_card_write/activity/WriteActivity;->handler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1338
    invoke-direct/range {p0 .. p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->exitProgress()V

    goto :goto_c

    .line 1366
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f100120

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->addInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    move-object v5, v0

    .line 1370
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/nfc/tech/IsoDep;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    .line 1372
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1374
    :goto_b
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1375
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ssss"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f10011c

    .line 1376
    invoke-virtual {v1, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f10004a

    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/activity/WriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, v4}, Lcn/highlight/work_card_write/activity/WriteActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1377
    iput-boolean v3, v1, Lcn/highlight/work_card_write/activity/WriteActivity;->isWrite:Z

    .line 1378
    invoke-direct/range {p0 .. p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->exitProgress()V

    const-string v0, ""

    .line 1379
    invoke-direct {v1, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->addInfo(Ljava/lang/String;)V

    .line 1380
    invoke-direct/range {p0 .. p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->stopSwipe()V

    .line 1381
    invoke-direct/range {p0 .. p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->clearNFCCallback()V

    :goto_c
    return-void
.end method

.method private sendEndData()V
    .locals 3

    const-string v0, "TAG"

    const-string v1, "sendEndData: \u5237\u56fe"

    .line 1215
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    iget-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isExits:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 1217
    fill-array-data v0, :array_0

    .line 1218
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->txManager:Lcn/highlight/tx/BaseTxManager;

    new-instance v2, Lcn/highlight/work_card_write/activity/WriteActivity$10;

    invoke-direct {v2, p0}, Lcn/highlight/work_card_write/activity/WriteActivity$10;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;)V

    invoke-virtual {v1, v0, v2}, Lcn/highlight/tx/BaseTxManager;->writeData([BLcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;)V

    const/4 v0, 0x0

    .line 1230
    invoke-direct {p0, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->refreshUI(I)V

    return-void

    nop

    :array_0
    .array-data 1
        -0x5bt
        0x0t
        0x14t
        0x14t
    .end array-data
.end method

.method private sendImageDataBW()V
    .locals 14

    .line 938
    iget-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isExits:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TAG"

    const-string v1, "sendImageDataBW: \u9ed1\u767d\u6570\u636e"

    .line 939
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v2, 0x1

    .line 941
    iput-boolean v2, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isWrite:Z

    const/16 v3, 0xdc

    new-array v4, v2, [I

    const/4 v5, 0x0

    aput v5, v4, v5

    .line 946
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->initProcess()V

    .line 950
    iget-object v6, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeImgData:[[B

    aget-object v6, v6, v5

    .line 952
    array-length v7, v6

    rem-int/2addr v7, v3

    if-nez v7, :cond_1

    array-length v7, v6

    div-int/2addr v7, v3

    goto :goto_0

    :cond_1
    array-length v7, v6

    div-int/2addr v7, v3

    add-int/2addr v7, v2

    :goto_0
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_6

    .line 955
    iget-boolean v9, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isExit:Z

    if-eqz v9, :cond_2

    return-void

    :cond_2
    add-int/lit8 v9, v7, -0x1

    if-ge v8, v9, :cond_3

    const/16 v9, 0xdc

    goto :goto_2

    .line 956
    :cond_3
    array-length v10, v6

    mul-int/lit16 v9, v9, 0xdc

    sub-int v9, v10, v9

    :goto_2
    add-int/lit8 v10, v9, 0x7

    .line 957
    new-array v10, v10, [B

    const/16 v11, -0x5b

    .line 958
    aput-byte v11, v10, v5

    const/4 v11, 0x3

    add-int/2addr v9, v11

    int-to-byte v9, v9

    .line 959
    aput-byte v9, v10, v2

    const/4 v9, 0x2

    const/16 v12, 0x12

    .line 960
    aput-byte v12, v10, v9

    .line 961
    aput-byte v5, v10, v11

    const/4 v9, 0x4

    mul-int v11, v3, v8

    .line 962
    invoke-static {v11}, Lcn/highlight/work_card_write/util/HexUtils;->intToBytes(I)[B

    move-result-object v12

    aget-byte v12, v12, v5

    aput-byte v12, v10, v9

    const/4 v9, 0x5

    .line 963
    invoke-static {v11}, Lcn/highlight/work_card_write/util/HexUtils;->intToBytes(I)[B

    move-result-object v12

    aget-byte v12, v12, v2

    aput-byte v12, v10, v9

    const/4 v9, 0x6

    .line 964
    :goto_3
    array-length v12, v10

    sub-int/2addr v12, v2

    if-ge v9, v12, :cond_5

    add-int/lit8 v12, v9, -0x6

    add-int/2addr v12, v11

    .line 965
    array-length v13, v6

    if-ge v12, v13, :cond_4

    .line 966
    aget-byte v12, v6, v12

    aput-byte v12, v10, v9

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 969
    :cond_5
    array-length v9, v10

    sub-int/2addr v9, v2

    invoke-static {v10}, Lcn/highlight/work_card_write/util/HexUtils;->GetCheckSum([B)B

    move-result v11

    aput-byte v11, v10, v9

    .line 970
    aget v9, v4, v5

    array-length v11, v10

    add-int/2addr v9, v11

    aput v9, v4, v5

    .line 971
    aget v9, v4, v5

    invoke-direct {p0, v9}, Lcn/highlight/work_card_write/activity/WriteActivity;->setCurrentProcess(I)V

    .line 972
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendImageDataBW: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lcn/highlight/work_card_write/util/HexUtils;->byte2HexStr([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object v9, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->txManager:Lcn/highlight/tx/BaseTxManager;

    new-instance v11, Lcn/highlight/work_card_write/activity/WriteActivity$4;

    invoke-direct {v11, p0, v1, v10}, Lcn/highlight/work_card_write/activity/WriteActivity$4;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;Ljava/util/concurrent/CopyOnWriteArrayList;[B)V

    invoke-virtual {v9, v10, v11}, Lcn/highlight/tx/BaseTxManager;->writeData([BLcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;)V

    const-wide/16 v9, 0x1e

    .line 986
    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v9

    .line 988
    invoke-virtual {v9}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 992
    :cond_6
    iput-boolean v5, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isWrite:Z

    .line 993
    invoke-direct {p0, v1}, Lcn/highlight/work_card_write/activity/WriteActivity;->dataReSend(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    return-void
.end method

.method private sendImageDataBWR()V
    .locals 20

    move-object/from16 v1, p0

    .line 1000
    iget-boolean v0, v1, Lcn/highlight/work_card_write/activity/WriteActivity;->isExits:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v2, "TAG"

    const-string v0, "sendImageDataBWR: \u9ed1\u767d\u7ea2\u6570\u636e"

    .line 1001
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v4, 0x1

    .line 1003
    iput-boolean v4, v1, Lcn/highlight/work_card_write/activity/WriteActivity;->isWrite:Z

    const/16 v5, 0xdc

    new-array v6, v4, [I

    const/4 v7, 0x0

    aput v7, v6, v7

    .line 1008
    invoke-direct/range {p0 .. p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->initProcess()V

    .line 1012
    iget-object v0, v1, Lcn/highlight/work_card_write/activity/WriteActivity;->writeImgData:[[B

    aget-object v8, v0, v7

    .line 1014
    array-length v0, v8

    rem-int/2addr v0, v5

    if-nez v0, :cond_1

    array-length v0, v8

    div-int/2addr v0, v5

    goto :goto_0

    :cond_1
    array-length v0, v8

    div-int/2addr v0, v5

    add-int/2addr v0, v4

    :goto_0
    move v9, v0

    const/4 v10, 0x0

    :goto_1
    const/4 v13, 0x5

    const/4 v14, 0x4

    const/16 v15, 0x12

    const/16 v16, 0x2

    const/16 v17, -0x5b

    const/16 v18, 0x6

    const/16 v19, 0x3

    if-ge v10, v9, :cond_6

    .line 1017
    iget-boolean v0, v1, Lcn/highlight/work_card_write/activity/WriteActivity;->isExit:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    add-int/lit8 v0, v9, -0x1

    if-ge v10, v0, :cond_3

    const/16 v0, 0xdc

    goto :goto_2

    .line 1018
    :cond_3
    array-length v11, v8

    mul-int/lit16 v0, v0, 0xdc

    sub-int v0, v11, v0

    :goto_2
    add-int/lit8 v11, v0, 0x7

    .line 1019
    new-array v11, v11, [B

    .line 1020
    aput-byte v17, v11, v7

    add-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    .line 1021
    aput-byte v0, v11, v4

    .line 1022
    aput-byte v15, v11, v16

    .line 1023
    aput-byte v7, v11, v19

    mul-int v0, v5, v10

    .line 1024
    invoke-static {v0}, Lcn/highlight/work_card_write/util/HexUtils;->intToBytes(I)[B

    move-result-object v12

    aget-byte v12, v12, v7

    aput-byte v12, v11, v14

    .line 1025
    invoke-static {v0}, Lcn/highlight/work_card_write/util/HexUtils;->intToBytes(I)[B

    move-result-object v12

    aget-byte v12, v12, v4

    aput-byte v12, v11, v13

    const/4 v12, 0x6

    .line 1026
    :goto_3
    array-length v13, v11

    sub-int/2addr v13, v4

    if-ge v12, v13, :cond_5

    add-int/lit8 v13, v12, -0x6

    add-int/2addr v13, v0

    .line 1027
    array-length v14, v8

    if-ge v13, v14, :cond_4

    .line 1028
    aget-byte v13, v8, v13

    aput-byte v13, v11, v12

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1031
    :cond_5
    array-length v0, v11

    sub-int/2addr v0, v4

    invoke-static {v11}, Lcn/highlight/work_card_write/util/HexUtils;->GetCheckSum([B)B

    move-result v12

    aput-byte v12, v11, v0

    .line 1032
    aget v0, v6, v7

    array-length v12, v11

    add-int/2addr v0, v12

    aput v0, v6, v7

    .line 1033
    aget v0, v6, v7

    invoke-direct {v1, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->setCurrentProcess(I)V

    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sendImageDataBWR: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lcn/highlight/work_card_write/util/HexUtils;->byte2HexStr([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    iget-object v0, v1, Lcn/highlight/work_card_write/activity/WriteActivity;->txManager:Lcn/highlight/tx/BaseTxManager;

    new-instance v12, Lcn/highlight/work_card_write/activity/WriteActivity$5;

    invoke-direct {v12, v1, v3, v11}, Lcn/highlight/work_card_write/activity/WriteActivity$5;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;Ljava/util/concurrent/CopyOnWriteArrayList;[B)V

    invoke-virtual {v0, v11, v12}, Lcn/highlight/tx/BaseTxManager;->writeData([BLcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;)V

    const-wide/16 v11, 0x1e

    .line 1048
    :try_start_0
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v11, v0

    .line 1050
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 1056
    :cond_6
    iget-object v0, v1, Lcn/highlight/work_card_write/activity/WriteActivity;->writeImgData:[[B

    aget-object v2, v0, v4

    .line 1057
    array-length v0, v2

    rem-int/2addr v0, v5

    if-nez v0, :cond_7

    array-length v0, v2

    div-int/2addr v0, v5

    goto :goto_5

    :cond_7
    array-length v0, v2

    div-int/2addr v0, v5

    add-int/2addr v0, v4

    :goto_5
    move v8, v0

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v8, :cond_c

    .line 1060
    iget-boolean v0, v1, Lcn/highlight/work_card_write/activity/WriteActivity;->isExit:Z

    if-eqz v0, :cond_8

    return-void

    :cond_8
    add-int/lit8 v0, v8, -0x1

    if-ge v9, v0, :cond_9

    const/16 v0, 0xdc

    goto :goto_7

    .line 1061
    :cond_9
    array-length v10, v2

    mul-int/lit16 v0, v0, 0xdc

    sub-int v0, v10, v0

    :goto_7
    add-int/lit8 v10, v0, 0x7

    .line 1062
    new-array v10, v10, [B

    .line 1063
    aput-byte v17, v10, v7

    add-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    .line 1064
    aput-byte v0, v10, v4

    .line 1065
    aput-byte v15, v10, v16

    .line 1066
    aput-byte v4, v10, v19

    mul-int v0, v5, v9

    .line 1067
    invoke-static {v0}, Lcn/highlight/work_card_write/util/HexUtils;->intToBytes(I)[B

    move-result-object v11

    aget-byte v11, v11, v7

    aput-byte v11, v10, v14

    .line 1068
    invoke-static {v0}, Lcn/highlight/work_card_write/util/HexUtils;->intToBytes(I)[B

    move-result-object v11

    aget-byte v11, v11, v4

    aput-byte v11, v10, v13

    const/4 v11, 0x6

    .line 1069
    :goto_8
    array-length v12, v10

    sub-int/2addr v12, v4

    if-ge v11, v12, :cond_b

    add-int/lit8 v12, v11, -0x6

    add-int/2addr v12, v0

    .line 1070
    array-length v5, v2

    if-ge v12, v5, :cond_a

    .line 1071
    aget-byte v5, v2, v12

    aput-byte v5, v10, v11

    :cond_a
    add-int/lit8 v11, v11, 0x1

    const/16 v5, 0xdc

    goto :goto_8

    .line 1074
    :cond_b
    array-length v0, v10

    sub-int/2addr v0, v4

    invoke-static {v10}, Lcn/highlight/work_card_write/util/HexUtils;->GetCheckSum([B)B

    move-result v5

    aput-byte v5, v10, v0

    .line 1075
    aget v0, v6, v7

    array-length v5, v10

    add-int/2addr v0, v5

    aput v0, v6, v7

    .line 1076
    aget v0, v6, v7

    invoke-direct {v1, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->setCurrentProcess(I)V

    .line 1077
    iget-object v0, v1, Lcn/highlight/work_card_write/activity/WriteActivity;->txManager:Lcn/highlight/tx/BaseTxManager;

    new-instance v5, Lcn/highlight/work_card_write/activity/WriteActivity$6;

    invoke-direct {v5, v1, v3, v10}, Lcn/highlight/work_card_write/activity/WriteActivity$6;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;Ljava/util/concurrent/CopyOnWriteArrayList;[B)V

    invoke-virtual {v0, v10, v5}, Lcn/highlight/tx/BaseTxManager;->writeData([BLcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;)V

    const-wide/16 v10, 0x1e

    .line 1088
    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    move-object v5, v0

    .line 1090
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_9
    add-int/lit8 v9, v9, 0x1

    const/16 v5, 0xdc

    goto :goto_6

    .line 1094
    :cond_c
    iput-boolean v7, v1, Lcn/highlight/work_card_write/activity/WriteActivity;->isWrite:Z

    .line 1095
    invoke-direct {v1, v3}, Lcn/highlight/work_card_write/activity/WriteActivity;->dataReSend(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    return-void
.end method

.method private sendImageDataBWYR()V
    .locals 14

    .line 1102
    iget-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isExits:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TAG"

    const-string v1, "sendImageDataBWYR: \u9ed1\u767d\u7ea2\u9ec4\u6570\u636e"

    .line 1103
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v2, 0x1

    .line 1105
    iput-boolean v2, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isWrite:Z

    const/16 v3, 0xd2

    new-array v4, v2, [I

    const/4 v5, 0x0

    aput v5, v4, v5

    .line 1110
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->initProcess()V

    .line 1114
    iget-object v6, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeImgData:[[B

    aget-object v6, v6, v5

    .line 1116
    array-length v7, v6

    rem-int/2addr v7, v3

    if-nez v7, :cond_1

    array-length v7, v6

    div-int/2addr v7, v3

    goto :goto_0

    :cond_1
    array-length v7, v6

    div-int/2addr v7, v3

    add-int/2addr v7, v2

    :goto_0
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_6

    .line 1119
    iget-boolean v9, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isExit:Z

    if-eqz v9, :cond_2

    return-void

    :cond_2
    add-int/lit8 v9, v7, -0x1

    if-ge v8, v9, :cond_3

    const/16 v9, 0xd2

    goto :goto_2

    .line 1120
    :cond_3
    array-length v10, v6

    mul-int/lit16 v9, v9, 0xd2

    sub-int v9, v10, v9

    :goto_2
    add-int/lit8 v10, v9, 0x7

    .line 1121
    new-array v10, v10, [B

    const/16 v11, -0x5b

    .line 1122
    aput-byte v11, v10, v5

    const/4 v11, 0x3

    add-int/2addr v9, v11

    int-to-byte v9, v9

    .line 1123
    aput-byte v9, v10, v2

    const/4 v9, 0x2

    const/16 v12, 0x12

    .line 1124
    aput-byte v12, v10, v9

    .line 1125
    aput-byte v5, v10, v11

    const/4 v9, 0x4

    mul-int v11, v3, v8

    .line 1126
    invoke-static {v11}, Lcn/highlight/work_card_write/util/HexUtils;->intToBytes(I)[B

    move-result-object v12

    aget-byte v12, v12, v5

    aput-byte v12, v10, v9

    const/4 v9, 0x5

    .line 1127
    invoke-static {v11}, Lcn/highlight/work_card_write/util/HexUtils;->intToBytes(I)[B

    move-result-object v12

    aget-byte v12, v12, v2

    aput-byte v12, v10, v9

    const/4 v9, 0x6

    .line 1128
    :goto_3
    array-length v12, v10

    sub-int/2addr v12, v2

    if-ge v9, v12, :cond_5

    add-int/lit8 v12, v9, -0x6

    add-int/2addr v12, v11

    .line 1129
    array-length v13, v6

    if-ge v12, v13, :cond_4

    .line 1130
    aget-byte v12, v6, v12

    aput-byte v12, v10, v9

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1133
    :cond_5
    array-length v9, v10

    sub-int/2addr v9, v2

    invoke-static {v10}, Lcn/highlight/work_card_write/util/HexUtils;->GetCheckSum([B)B

    move-result v11

    aput-byte v11, v10, v9

    .line 1134
    aget v9, v4, v5

    array-length v11, v10

    add-int/2addr v9, v11

    aput v9, v4, v5

    .line 1135
    aget v9, v4, v5

    invoke-direct {p0, v9}, Lcn/highlight/work_card_write/activity/WriteActivity;->setCurrentProcess(I)V

    .line 1136
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendImageDataBWYR: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lcn/highlight/work_card_write/util/HexUtils;->byte2HexStr([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    iget-object v9, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->txManager:Lcn/highlight/tx/BaseTxManager;

    new-instance v11, Lcn/highlight/work_card_write/activity/WriteActivity$7;

    invoke-direct {v11, p0, v1, v10}, Lcn/highlight/work_card_write/activity/WriteActivity$7;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;Ljava/util/concurrent/CopyOnWriteArrayList;[B)V

    invoke-virtual {v9, v10, v11}, Lcn/highlight/tx/BaseTxManager;->writeData([BLcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;)V

    const-wide/16 v9, 0x1e

    .line 1150
    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v9

    .line 1152
    invoke-virtual {v9}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 1156
    :cond_6
    iput-boolean v5, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isWrite:Z

    .line 1157
    invoke-direct {p0, v1}, Lcn/highlight/work_card_write/activity/WriteActivity;->dataReSend(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    return-void
.end method

.method private sendStatrData()V
    .locals 5

    const/4 v0, 0x1

    .line 908
    iput-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isStart:Z

    .line 909
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->txManager:Lcn/highlight/tx/BaseTxManager;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->onDataReceivedTag:Lcn/highlight/tx/listener/OnDataReceivedTag;

    invoke-virtual {v0, v1}, Lcn/highlight/tx/BaseTxManager;->setOnDataReceivedTag(Lcn/highlight/tx/listener/OnDataReceivedTag;)V

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 911
    fill-array-data v0, :array_0

    .line 913
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$99RMnWfrtRtdp6FQRWp0IJeQhUQ;

    invoke-direct {v2, p0, v0}, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$99RMnWfrtRtdp6FQRWp0IJeQhUQ;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;[B)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 925
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$3HRYHzo7PJFFviuqUX-HgukwwXg;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$3HRYHzo7PJFFviuqUX-HgukwwXg;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;)V

    const-wide/16 v2, 0x8fc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    nop

    :array_0
    .array-data 1
        -0x5bt
        0x0t
        0x11t
        0x11t
    .end array-data
.end method

.method private serachBLE(Landroid/nfc/Tag;)V
    .locals 3

    .line 816
    iget-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isRead:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isSearch:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isConnect:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isWrite:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 817
    :cond_0
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10011a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->addInfo(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 818
    iput-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isSearch:Z

    .line 819
    invoke-virtual {p1}, Landroid/nfc/Tag;->getId()[B

    move-result-object v0

    invoke-static {v0}, Lcn/highlight/work_card_write/util/HexUtils;->byte2HexStr([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/nfc/Tag;->getId()[B

    move-result-object p1

    invoke-static {p1}, Lcn/highlight/work_card_write/util/HexUtils;->byte2HexStr([B)Ljava/lang/String;

    move-result-object p1

    .line 820
    :goto_0
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->txManager:Lcn/highlight/tx/BaseTxManager;

    new-instance v1, Lcn/highlight/work_card_write/activity/WriteActivity$1;

    invoke-direct {v1, p0, p1}, Lcn/highlight/work_card_write/activity/WriteActivity$1;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/highlight/tx/BaseTxManager;->startScanBle(Lcn/highlight/tx/ble/callback/BleScanCallback;)V

    .line 857
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    const-wide/16 v1, 0x2710

    .line 858
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private setCurrentProcess(I)V
    .locals 1

    .line 1485
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$n1QY2NJ5ovkBBJv7K0DdW6XMhSE;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$n1QY2NJ5ovkBBJv7K0DdW6XMhSE;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;I)V

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setImage()V
    .locals 7

    .line 301
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeAdapter:Lcn/highlight/work_card_write/adapter/WriteAdapter;

    iget-object v0, v0, Lcn/highlight/work_card_write/adapter/WriteAdapter;->selectColor:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x13b1cc

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v3, :cond_3

    const v3, 0x2630656

    if-eq v2, v3, :cond_2

    const v3, 0x49fe632e    # 2083941.8f

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "\u9ed1\u767d\u7ea2\u9ec4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const-string v2, "\u9ed1\u767d\u7ea2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "\u9ed1\u767d"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    :cond_4
    :goto_0
    if-eqz v1, :cond_7

    if-eq v1, v6, :cond_6

    if-eq v1, v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, 0x6

    goto :goto_1

    :cond_6
    const/4 v5, 0x1

    .line 314
    :cond_7
    :goto_1
    iget-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isShake:Z

    if-nez v0, :cond_8

    .line 315
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->bitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeWidth:I

    iget v2, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeHeight:I

    invoke-static {v0, v6, v1, v2, v5}, Lcn/highlight/work_card_write/util/EPaperPicture;->createIndexedImage(Landroid/graphics/Bitmap;ZIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 317
    :cond_8
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->bitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeWidth:I

    iget v2, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeHeight:I

    invoke-static {v0, v1, v2, v5}, Lcn/highlight/work_card_write/util/EPaperPicture;->createIndexedImage2(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeBitmap:Landroid/graphics/Bitmap;

    .line 319
    :goto_2
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    .line 320
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_9
    return-void
.end method

.method private setImageData()V
    .locals 2

    .line 383
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 384
    :cond_0
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->badgeColor:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/highlight/work_card_write/util/ImgUtil;->gray2Binary(Landroid/graphics/Bitmap;Ljava/lang/String;)[[B

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeImgData:[[B

    return-void
.end method

.method private showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 336
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$DdryM7rlMD2JhmuGsIa1KaAJyVM;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$DdryM7rlMD2JhmuGsIa1KaAJyVM;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private showStartNFCDialog()V
    .locals 4

    .line 654
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0066

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902a3

    .line 655
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 656
    new-instance v2, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const v3, 0x7f1100d5

    invoke-direct {v2, p0, v3}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->nfcDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 657
    iget-object v2, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->nfcDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v2, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 658
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->nfcDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    .line 659
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->nfcDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCancelable(Z)V

    .line 660
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->nfcDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    .line 662
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$zx77wKvhzuTEQqwvUUIDEocYtXA;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$zx77wKvhzuTEQqwvUUIDEocYtXA;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showTipToast(Ljava/lang/String;)V
    .locals 1

    .line 328
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$JbxQatAvM-QLDMMvo7UbGvr5x4Y;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$JbxQatAvM-QLDMMvo7UbGvr5x4Y;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private stopSwipe()V
    .locals 1

    .line 1532
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 1533
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 1534
    iput-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->countDownTimer:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method private stopTimer()V
    .locals 2

    .line 1386
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->timerTask:Ljava/util/TimerTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1387
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 1388
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->timerTask:Ljava/util/TimerTask;

    .line 1390
    :cond_0
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 1391
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1392
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->timer:Ljava/util/Timer;

    :cond_1
    return-void
.end method

.method private swipe()V
    .locals 7

    .line 1513
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->stopSwipe()V

    .line 1514
    new-instance v6, Lcn/highlight/work_card_write/activity/WriteActivity$12;

    const-wide/16 v2, 0x4650

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcn/highlight/work_card_write/activity/WriteActivity$12;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;JJ)V

    .line 1527
    invoke-virtual {v6}, Lcn/highlight/work_card_write/activity/WriteActivity$12;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->countDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public getPercent2(II)Ljava/lang/String;
    .locals 5

    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double v0, v0, v2

    int-to-double p1, p2

    mul-double p1, p1, v2

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    cmpl-double v4, p1, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 1499
    :cond_0
    iget-object v2, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->decimalFormat:Ljava/text/DecimalFormat;

    div-double/2addr v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, "0%"

    return-object p1
.end method

.method protected initData()V
    .locals 0

    .line 209
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->initTX()V

    .line 210
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->initBLETXReceive()V

    return-void
.end method

.method protected initViews(Landroid/os/Bundle;)V
    .locals 3

    .line 183
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->type:I

    .line 184
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "modify"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->modify:Z

    .line 185
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->imageName:Ljava/lang/String;

    .line 187
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->initWrite()V

    .line 189
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->initShake()V

    .line 191
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->initRB()V

    .line 193
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->initImage()V

    .line 195
    iput-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isImageSave:Z

    .line 196
    invoke-static {}, Lcn/highlight/work_card_write/greendao/dao/BadgeBeanDaoUse;->queryAll()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 198
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    .line 199
    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getImageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->imageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    iput-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->baseBadgeBean:Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    :cond_1
    return-void
.end method

.method public synthetic lambda$addInfo$19$WriteActivity(Ljava/lang/String;)V
    .locals 2

    .line 1445
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->tvProgress:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1446
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1447
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->tvProgress:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$addInfo$21$WriteActivity(Ljava/lang/String;I)V
    .locals 2

    .line 1456
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$rhqhbjK8B7We4LDEOadT9m4924M;

    invoke-direct {v1, p0, p1}, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$rhqhbjK8B7We4LDEOadT9m4924M;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;Ljava/lang/String;)V

    int-to-long p1, p2

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$disConnectBLE$18$WriteActivity()V
    .locals 1

    .line 1266
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->txManager:Lcn/highlight/tx/BaseTxManager;

    invoke-virtual {v0}, Lcn/highlight/tx/BaseTxManager;->disConn()V

    const/4 v0, 0x0

    .line 1267
    iput-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isConnect:Z

    return-void
.end method

.method public synthetic lambda$exitProgress$24$WriteActivity()V
    .locals 2

    .line 1504
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->progressBar:Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1505
    invoke-virtual {v0, v1}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->setMax(I)V

    .line 1506
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->progressBar:Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;

    invoke-virtual {v0, v1}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->setProgress(I)V

    .line 1507
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->progressBar:Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initBLETXReceive$15$WriteActivity([B)V
    .locals 9

    .line 692
    invoke-static {p1}, Lcn/highlight/work_card_write/util/HexUtils;->byte2HexStr([B)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcn/highlight/work_card_write/util/HexUtils;->byte2HexStr([B)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x4

    const/4 v1, 0x6

    .line 694
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    .line 695
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    .line 696
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x620

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v4, v5, :cond_4

    const/16 v5, 0x622

    if-eq v4, v5, :cond_3

    const/16 v5, 0x623

    if-eq v4, v5, :cond_2

    goto :goto_1

    :cond_2
    const-string v4, "14"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x2

    goto :goto_1

    :cond_3
    const-string v4, "13"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const-string v4, "11"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x0

    :cond_5
    :goto_1
    if-eqz v3, :cond_b

    if-eq v3, v7, :cond_7

    if-eq v3, v6, :cond_6

    goto/16 :goto_3

    .line 749
    :cond_6
    invoke-direct {p0, v8}, Lcn/highlight/work_card_write/activity/WriteActivity;->refreshUI(I)V

    .line 750
    iput-boolean v7, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isExit:Z

    goto/16 :goto_3

    .line 727
    :cond_7
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->badgeColor:Ljava/lang/String;

    const-string v1, "\u9ed1\u767d\u7ea2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 728
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeImgData:[[B

    aget-object v0, v0, v8

    invoke-static {v0}, Lcn/highlight/work_card_write/util/CRC32Utils;->crc32([B)I

    move-result v0

    .line 729
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeImgData:[[B

    aget-object v1, v1, v7

    invoke-static {v1, v0}, Lcn/highlight/work_card_write/util/CRC32Utils;->crc32([BI)I

    move-result v0

    .line 730
    invoke-static {v0}, Lcn/highlight/work_card_write/util/CRC32Utils;->toByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Lcn/highlight/work_card_write/util/HexUtils;->byte2HexStr([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 732
    :cond_8
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeImgData:[[B

    aget-object v0, v0, v8

    invoke-static {v0}, Lcn/highlight/work_card_write/util/CRC32Utils;->crc32([B)I

    move-result v0

    invoke-static {v0}, Lcn/highlight/work_card_write/util/CRC32Utils;->toByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Lcn/highlight/work_card_write/util/HexUtils;->byte2HexStr([B)Ljava/lang/String;

    move-result-object v0

    :goto_2
    const/16 v1, 0x10

    .line 734
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initBLETXReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TAG"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->sendError:I

    if-lt v1, v6, :cond_9

    .line 737
    iput v8, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->sendError:I

    .line 738
    invoke-direct {p0, v7}, Lcn/highlight/work_card_write/activity/WriteActivity;->refreshUI(I)V

    .line 739
    iput-boolean v7, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isExit:Z

    goto :goto_3

    :cond_9
    if-eqz v0, :cond_a

    .line 740
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 741
    iput v8, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->sendError:I

    .line 742
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->sendEndData()V

    goto :goto_3

    .line 744
    :cond_a
    iget p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->sendError:I

    add-int/2addr p1, v7

    iput p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->sendError:I

    .line 745
    new-instance p1, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$3a-X46KiqZUUGGSlOr_rNvA-4Ls;

    invoke-direct {p1, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$3a-X46KiqZUUGGSlOr_rNvA-4Ls;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;)V

    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_b
    const-string p1, "00"

    .line 698
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 699
    iput-boolean v8, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isStart:Z

    .line 700
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10011b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->addInfo(Ljava/lang/String;)V

    .line 701
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->thread:Ljava/lang/Thread;

    if-eqz p1, :cond_c

    .line 702
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 704
    :cond_c
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$Xs-7if-sH7fJOqB40PE_UCI7UdQ;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$Xs-7if-sH7fJOqB40PE_UCI7UdQ;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->thread:Ljava/lang/Thread;

    .line 718
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->thread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_3

    .line 720
    :cond_d
    iput-boolean v8, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isStart:Z

    .line 721
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100120

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->addInfo(Ljava/lang/String;)V

    .line 722
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$l7bH2cqpt2hztStgm_zXZKnPBu8;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$l7bH2cqpt2hztStgm_zXZKnPBu8;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_3
    return-void
.end method

.method public synthetic lambda$initProcess$22$WriteActivity()V
    .locals 7

    .line 1466
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->tvProgress:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->progressBar:Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    .line 1467
    invoke-virtual {v0, v1}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->setVisibility(I)V

    .line 1469
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->badgeColor:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x13b1cc

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2

    const v4, 0x2630656

    if-eq v3, v4, :cond_1

    const v4, 0x49fe632e    # 2083941.8f

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "\u9ed1\u767d\u7ea2\u9ec4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "\u9ed1\u767d\u7ea2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    const-string v3, "\u9ed1\u767d"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    :cond_3
    :goto_0
    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_5

    if-eq v2, v5, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    .line 1475
    :cond_4
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeImgData:[[B

    aget-object v2, v0, v1

    array-length v2, v2

    aget-object v0, v0, v6

    array-length v0, v0

    add-int/2addr v0, v2

    goto :goto_1

    .line 1472
    :cond_5
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeImgData:[[B

    aget-object v0, v0, v1

    array-length v0, v0

    .line 1478
    :goto_1
    iget-object v2, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->progressBar:Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;

    add-int/2addr v0, v6

    invoke-virtual {v2, v0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->setMax(I)V

    .line 1479
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->progressBar:Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;

    invoke-virtual {v0, v1}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->setProgress(I)V

    :cond_6
    return-void
.end method

.method public synthetic lambda$initRB$1$WriteActivity(Ljava/util/List;I)V
    .locals 1

    .line 276
    iget-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isRead:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isSearch:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isConnect:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isStart:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isWrite:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeColor:Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeAdapter:Lcn/highlight/work_card_write/adapter/WriteAdapter;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcn/highlight/work_card_write/adapter/WriteAdapter;->selectColor:Ljava/lang/String;

    .line 282
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeAdapter:Lcn/highlight/work_card_write/adapter/WriteAdapter;

    invoke-virtual {p1}, Lcn/highlight/work_card_write/adapter/WriteAdapter;->notifyDataSetChanged()V

    .line 283
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->setImage()V

    return-void

    .line 277
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeAdapter:Lcn/highlight/work_card_write/adapter/WriteAdapter;

    invoke-virtual {p1}, Lcn/highlight/work_card_write/adapter/WriteAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public synthetic lambda$initShake$0$WriteActivity(Landroid/view/View;)V
    .locals 2

    .line 248
    iget-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isRead:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isSearch:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isConnect:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isStart:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isWrite:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->slideSwitch:Lcn/highlight/work_card_write/view/SlideSwitchView;

    invoke-virtual {p1}, Lcn/highlight/work_card_write/view/SlideSwitchView;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcn/highlight/work_card_write/view/SlideSwitchView;->setChecked(Z)V

    .line 252
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->slideSwitch:Lcn/highlight/work_card_write/view/SlideSwitchView;

    invoke-virtual {p1}, Lcn/highlight/work_card_write/view/SlideSwitchView;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 253
    iput-boolean v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isShake:Z

    .line 254
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->setImage()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 256
    iput-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isShake:Z

    .line 257
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->setImage()V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$null$10$WriteActivity()V
    .locals 2

    .line 451
    invoke-static {}, Lcn/highlight/work_card_write/api/ApiUtil;->getInstance()Lcn/highlight/work_card_write/api/ApiUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/api/ApiUtil;->getLoadingUtil()Lcn/highlight/core/utils/load/LoadingUtil;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lcn/highlight/core/utils/load/LoadingUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$null$11$WriteActivity()V
    .locals 1

    .line 454
    invoke-static {}, Lcn/highlight/work_card_write/api/ApiUtil;->getInstance()Lcn/highlight/work_card_write/api/ApiUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/api/ApiUtil;->getLoadingUtil()Lcn/highlight/core/utils/load/LoadingUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/core/utils/load/LoadingUtil;->dismissProgressDialog()V

    .line 455
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->checkPermission()V

    return-void
.end method

.method public synthetic lambda$null$14$WriteActivity()V
    .locals 6

    const/4 v0, 0x0

    .line 705
    iput-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isExit:Z

    .line 706
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->badgeColor:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x13b1cc

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_2

    const v0, 0x2630656

    if-eq v2, v0, :cond_1

    const v0, 0x49fe632e    # 2083941.8f

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "\u9ed1\u767d\u7ea2\u9ec4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "\u9ed1\u767d\u7ea2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "\u9ed1\u767d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    goto :goto_2

    .line 714
    :cond_4
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->sendImageDataBWYR()V

    goto :goto_2

    .line 711
    :cond_5
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->sendImageDataBWR()V

    goto :goto_2

    .line 708
    :cond_6
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->sendImageDataBW()V

    :goto_2
    return-void
.end method

.method public synthetic lambda$null$20$WriteActivity(Ljava/lang/String;)V
    .locals 2

    .line 1457
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->tvProgress:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1458
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1459
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->tvProgress:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$null$5$WriteActivity(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 372
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const/4 p1, 0x1

    .line 373
    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->backHome(Z)V

    return-void
.end method

.method public synthetic lambda$null$7$WriteActivity()V
    .locals 2

    .line 440
    invoke-static {}, Lcn/highlight/work_card_write/api/ApiUtil;->getInstance()Lcn/highlight/work_card_write/api/ApiUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/api/ApiUtil;->getLoadingUtil()Lcn/highlight/core/utils/load/LoadingUtil;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lcn/highlight/core/utils/load/LoadingUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onViewClicked$12$WriteActivity()V
    .locals 1

    .line 451
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$v2gY2WXerq9AlIlQvTQ3SvfjaYk;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$v2gY2WXerq9AlIlQvTQ3SvfjaYk;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;)V

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 452
    invoke-direct {p0, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->saveModelData(Z)V

    .line 453
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$XiY5tkdl8EmhTVDKHekGCtXBMx4;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$XiY5tkdl8EmhTVDKHekGCtXBMx4;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;)V

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onViewClicked$9$WriteActivity()V
    .locals 1

    .line 440
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$EPfdRsqbpWFXchPyNUD8igDN3Zs;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$EPfdRsqbpWFXchPyNUD8igDN3Zs;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;)V

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 441
    invoke-direct {p0, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->saveModelData(Z)V

    .line 442
    sget-object v0, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$_BDOZ9bscbXtHajg0zPkfKcsjR4;->INSTANCE:Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$_BDOZ9bscbXtHajg0zPkfKcsjR4;

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$readNFC$16$WriteActivity(Landroid/nfc/Tag;)V
    .locals 9

    const/4 v0, 0x0

    .line 762
    :try_start_0
    iget-boolean v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isRead:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isSearch:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isConnect:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isStart:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isWrite:Z

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 766
    iput-boolean v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isRead:Z

    .line 767
    invoke-static {p1}, Landroid/nfc/tech/IsoDep;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/IsoDep;

    move-result-object v2

    .line 768
    invoke-virtual {v2}, Landroid/nfc/tech/IsoDep;->connect()V

    const/4 v3, 0x5

    new-array v3, v3, [B

    const/16 v4, -0x30

    aput-byte v4, v3, v0

    const/16 v4, -0x2f

    aput-byte v4, v3, v1

    const/4 v4, 0x3

    const/4 v5, 0x2

    aput-byte v4, v3, v5

    aput-byte v0, v3, v4

    const/4 v4, 0x4

    aput-byte v1, v3, v4

    .line 771
    invoke-virtual {v2, v3}, Landroid/nfc/tech/IsoDep;->transceive([B)[B

    move-result-object v3

    .line 772
    invoke-static {v3}, Lcn/highlight/work_card_write/util/HexUtils;->byte2HexStr([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 773
    invoke-static {v3}, Lcn/highlight/work_card_write/util/BadgeSpecificationUtils;->getSpecificationByHardware(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 774
    invoke-static {v3}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "-"

    .line 775
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 776
    aget-object v6, v4, v0

    .line 777
    aget-object v7, v4, v1

    .line 778
    aget-object v4, v4, v5

    iput-object v4, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->badgeColor:Ljava/lang/String;

    const-string v4, "TAG"

    .line 779
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readNFC: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-object v3, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeSize:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 781
    iput-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isRead:Z

    .line 782
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->dismissNFCDialog()V

    .line 783
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->clearNFCCallback()V

    const p1, 0x7f100110

    .line 784
    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v2, 0x7f100047

    invoke-virtual {p0, v2}, Lcn/highlight/work_card_write/activity/WriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2, v1}, Lcn/highlight/work_card_write/activity/WriteActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 787
    :cond_1
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->setImageData()V

    .line 788
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->writeImgData:[[B

    if-nez v1, :cond_2

    return-void

    :cond_2
    const-string v1, "\u65e0\u6e90"

    .line 789
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v1, :cond_3

    .line 790
    :try_start_1
    iput-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isRead:Z

    .line 791
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->dismissNFCDialog()V

    .line 792
    invoke-direct {p0, v3}, Lcn/highlight/work_card_write/activity/WriteActivity;->addInfo(Ljava/lang/String;)V

    .line 793
    invoke-direct {p0, v2}, Lcn/highlight/work_card_write/activity/WriteActivity;->sendData(Landroid/nfc/tech/IsoDep;)V

    goto :goto_1

    .line 795
    :cond_3
    iput-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isNormal:Z

    .line 796
    iput-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isRead:Z

    .line 797
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->dismissNFCDialog()V

    .line 798
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->clearNFCCallback()V

    .line 799
    invoke-direct {p0, v3}, Lcn/highlight/work_card_write/activity/WriteActivity;->addInfo(Ljava/lang/String;)V

    .line 800
    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->serachBLE(Landroid/nfc/Tag;)V

    goto :goto_1

    :cond_4
    :goto_0
    const p1, 0x7f10010f

    .line 763
    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->showTipToast(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 804
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 805
    iput-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isRead:Z

    :cond_5
    :goto_1
    return-void
.end method

.method public synthetic lambda$sendStatrData$17$WriteActivity([B)V
    .locals 2

    .line 913
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->txManager:Lcn/highlight/tx/BaseTxManager;

    new-instance v1, Lcn/highlight/work_card_write/activity/WriteActivity$3;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/activity/WriteActivity$3;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;)V

    invoke-virtual {v0, p1, v1}, Lcn/highlight/tx/BaseTxManager;->writeData([BLcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;)V

    return-void
.end method

.method public synthetic lambda$setCurrentProcess$23$WriteActivity(I)V
    .locals 2

    .line 1486
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->tvProgress:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->progressBar:Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;

    if-eqz v0, :cond_0

    .line 1487
    invoke-virtual {v0, p1}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->setProgress(I)V

    .line 1488
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->tvProgress:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->progressBar:Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;

    invoke-virtual {v0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->progressBar:Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;

    invoke-virtual {v1}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->getMax()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcn/highlight/work_card_write/activity/WriteActivity;->getPercent2(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$showErrorDialog$6$WriteActivity(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 14

    move-object v0, p0

    .line 338
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0058

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0902c0

    .line 339
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0902b5

    .line 340
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090182

    .line 341
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v5, 0x7f09008d

    .line 342
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const v6, 0x7f090183

    .line 343
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    const v7, 0x7f09008c

    .line 344
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    const v8, 0x7f09008e

    .line 345
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 346
    new-instance v9, Landroid/app/Dialog;

    const v10, 0x7f1100ca

    invoke-direct {v9, p0, v10}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 347
    invoke-virtual {v9, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 348
    invoke-virtual {v9, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 350
    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    .line 351
    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 352
    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    .line 353
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    .line 354
    invoke-virtual {v13, v12}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 355
    iget v12, v12, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    const/high16 v13, 0x3f400000    # 0.75f

    mul-float v12, v12, v13

    float-to-int v12, v12

    iput v12, v11, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v12, -0x2

    .line 356
    iput v12, v11, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 357
    invoke-virtual {v10, v11}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 358
    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    move-object v10, p1

    .line 360
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v2, p2

    .line 361
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x8

    if-eqz p3, :cond_0

    .line 363
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 364
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 366
    :cond_0
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 367
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 369
    :goto_0
    new-instance v1, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$I_OsDV1pNLqMj34apbwuCnV0C_w;

    invoke-direct {v1, v9}, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$I_OsDV1pNLqMj34apbwuCnV0C_w;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    new-instance v1, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$eYnJaLqTBI8oRXyk8gB5040OJR4;

    invoke-direct {v1, v9}, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$eYnJaLqTBI8oRXyk8gB5040OJR4;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    new-instance v1, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$rfLn5LUt5aWdXBk_M3IMAsmuI0Y;

    invoke-direct {v1, p0, v9}, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$rfLn5LUt5aWdXBk_M3IMAsmuI0Y;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;Landroid/app/Dialog;)V

    invoke-virtual {v8, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic lambda$showStartNFCDialog$13$WriteActivity(Landroid/view/View;)V
    .locals 0

    .line 663
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->nfcDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    .line 664
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->clearNFCCallback()V

    return-void
.end method

.method public synthetic lambda$showTipToast$2$WriteActivity(Ljava/lang/String;)V
    .locals 0

    .line 328
    invoke-static {p0, p1}, Lcn/highlight/core/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1567
    invoke-super {p0}, Lcn/highlight/work_card_write/base/BaseActivity;->onDestroy()V

    .line 1568
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->txManager:Lcn/highlight/tx/BaseTxManager;

    invoke-virtual {v0}, Lcn/highlight/tx/BaseTxManager;->free()V

    .line 1569
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->stopTimer()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1543
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 1544
    iget-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isRead:Z

    const/4 p2, 0x1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isSearch:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isConnect:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isStart:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isWrite:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1548
    :cond_0
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->finishActivity()V

    return p2

    :cond_1
    :goto_0
    const p1, 0x7f10010e

    .line 1545
    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->showTipToast(Ljava/lang/String;)V

    return p2

    .line 1551
    :cond_2
    invoke-super {p0, p1, p2}, Lcn/highlight/work_card_write/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 1556
    invoke-super {p0}, Lcn/highlight/work_card_write/base/BaseActivity;->onPause()V

    .line 1557
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 1558
    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    .line 1560
    :cond_0
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->disConnectBLE()V

    const/4 v0, 0x1

    .line 1561
    iput-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isExits:Z

    .line 1562
    iput-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isExit:Z

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 215
    invoke-super {p0}, Lcn/highlight/work_card_write/base/BaseActivity;->onResume()V

    const/4 v0, 0x0

    .line 216
    iput-boolean v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isExits:Z

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090147,
            0x7f090149,
            0x7f090092,
            0x7f090094
        }
    .end annotation

    .line 415
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f10010e

    const v1, 0x7f10010f

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_4

    .line 424
    :sswitch_0
    iget-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isRead:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isSearch:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isConnect:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isStart:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isWrite:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 428
    :cond_0
    iget-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isImageSave:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 429
    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->backHome(Z)V

    goto/16 :goto_4

    :cond_1
    const p1, 0x7f100043

    .line 431
    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f100046

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcn/highlight/work_card_write/activity/WriteActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 425
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->showTipToast(Ljava/lang/String;)V

    return-void

    .line 417
    :sswitch_1
    iget-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isRead:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isSearch:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isConnect:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isStart:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isWrite:Z

    if-eqz p1, :cond_3

    goto :goto_1

    .line 421
    :cond_3
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/WriteActivity;->finishActivity()V

    goto :goto_4

    .line 418
    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->showTipToast(Ljava/lang/String;)V

    return-void

    .line 446
    :sswitch_2
    iget-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isRead:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isSearch:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isConnect:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isStart:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isWrite:Z

    if-eqz p1, :cond_5

    goto :goto_2

    .line 450
    :cond_5
    new-instance p1, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$ecRB4SP3meLQAqqIEzEbX5nKCm8;

    invoke-direct {p1, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$ecRB4SP3meLQAqqIEzEbX5nKCm8;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 447
    :cond_6
    :goto_2
    invoke-virtual {p0, v1}, Lcn/highlight/work_card_write/activity/WriteActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->showTipToast(Ljava/lang/String;)V

    return-void

    .line 435
    :sswitch_3
    iget-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isRead:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isSearch:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isConnect:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isStart:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity;->isWrite:Z

    if-eqz p1, :cond_7

    goto :goto_3

    .line 439
    :cond_7
    new-instance p1, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$3-OjadH3sQo3ZHpXkDLcacQpj6g;

    invoke-direct {p1, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$3-OjadH3sQo3ZHpXkDLcacQpj6g;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 436
    :cond_8
    :goto_3
    invoke-virtual {p0, v1}, Lcn/highlight/work_card_write/activity/WriteActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->showTipToast(Ljava/lang/String;)V

    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090092 -> :sswitch_3
        0x7f090094 -> :sswitch_2
        0x7f090147 -> :sswitch_1
        0x7f090149 -> :sswitch_0
    .end sparse-switch
.end method

.method protected setLayoutId()I
    .locals 1

    const v0, 0x7f0c0030

    return v0
.end method
