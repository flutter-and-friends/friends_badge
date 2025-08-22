.class public Lcom/blankj/utilcode/util/LogUtils$Config;
.super Ljava/lang/Object;
.source "LogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/LogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field private mConsoleFilter:I

.field private mDefaultDir:Ljava/lang/String;

.field private mDir:Ljava/lang/String;

.field private mFileFilter:I

.field private mFilePrefix:Ljava/lang/String;

.field private mGlobalTag:Ljava/lang/String;

.field private mLog2ConsoleSwitch:Z

.field private mLog2FileSwitch:Z

.field private mLogBorderSwitch:Z

.field private mLogHeadSwitch:Z

.field private mLogSwitch:Z

.field private mProcessName:Ljava/lang/String;

.field private mSaveDays:I

.field private mSingleTagSwitch:Z

.field private mStackDeep:I

.field private mStackOffset:I

.field private mTagIsSpace:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "util"

    .line 628
    iput-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mFilePrefix:Ljava/lang/String;

    const/4 v0, 0x1

    .line 629
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mLogSwitch:Z

    .line 630
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mLog2ConsoleSwitch:Z

    const-string v1, ""

    .line 631
    iput-object v1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mGlobalTag:Ljava/lang/String;

    .line 632
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mTagIsSpace:Z

    .line 633
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mLogHeadSwitch:Z

    const/4 v1, 0x0

    .line 634
    iput-boolean v1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mLog2FileSwitch:Z

    .line 635
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mLogBorderSwitch:Z

    .line 636
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mSingleTagSwitch:Z

    const/4 v2, 0x2

    .line 637
    iput v2, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mConsoleFilter:I

    .line 638
    iput v2, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mFileFilter:I

    .line 639
    iput v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mStackDeep:I

    .line 640
    iput v1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mStackOffset:I

    const/4 v0, -0x1

    .line 641
    iput v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mSaveDays:I

    .line 642
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils$Config;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mProcessName:Ljava/lang/String;

    .line 645
    iget-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mDefaultDir:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 646
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "log"

    if-eqz v0, :cond_1

    .line 647
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$500()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mDefaultDir:Ljava/lang/String;

    goto :goto_0

    .line 650
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$500()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mDefaultDir:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/blankj/utilcode/util/LogUtils$1;)V
    .locals 0

    .line 625
    invoke-direct {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/blankj/utilcode/util/LogUtils$Config;)I
    .locals 0

    .line 625
    iget p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mConsoleFilter:I

    return p0
.end method

.method static synthetic access$200(Lcom/blankj/utilcode/util/LogUtils$Config;)I
    .locals 0

    .line 625
    iget p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mFileFilter:I

    return p0
.end method

.method static synthetic access$300(Lcom/blankj/utilcode/util/LogUtils$Config;)Z
    .locals 0

    .line 625
    iget-boolean p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mTagIsSpace:Z

    return p0
.end method

.method private static getCurrentProcessName()Ljava/lang/String;
    .locals 5

    .line 816
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 818
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 819
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 820
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 821
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 822
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_2

    .line 823
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 824
    iget-object v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object v0

    :cond_3
    :goto_0
    return-object v1
.end method


# virtual methods
.method public final addFormatter(Lcom/blankj/utilcode/util/LogUtils$IFormatter;)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/LogUtils$IFormatter<",
            "TT;>;)",
            "Lcom/blankj/utilcode/util/LogUtils$Config;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 745
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$800()Landroidx/collection/SimpleArrayMap;

    move-result-object v0

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->access$700(Lcom/blankj/utilcode/util/LogUtils$IFormatter;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public getConsoleFilter()C
    .locals 2

    .line 796
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$900()[C

    move-result-object v0

    iget v1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mConsoleFilter:I

    add-int/lit8 v1, v1, -0x2

    aget-char v0, v0, v1

    return v0
.end method

.method public getDefaultDir()Ljava/lang/String;
    .locals 1

    .line 755
    iget-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mDefaultDir:Ljava/lang/String;

    return-object v0
.end method

.method public getDir()Ljava/lang/String;
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mDir:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mDefaultDir:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getFileFilter()C
    .locals 2

    .line 800
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$900()[C

    move-result-object v0

    iget v1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mFileFilter:I

    add-int/lit8 v1, v1, -0x2

    aget-char v0, v0, v1

    return v0
.end method

.method public getFilePrefix()Ljava/lang/String;
    .locals 1

    .line 763
    iget-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mFilePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalTag()Ljava/lang/String;
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mGlobalTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->access$600(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mGlobalTag:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .line 751
    iget-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public getSaveDays()I
    .locals 1

    .line 812
    iget v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mSaveDays:I

    return v0
.end method

.method public getStackDeep()I
    .locals 1

    .line 804
    iget v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mStackDeep:I

    return v0
.end method

.method public getStackOffset()I
    .locals 1

    .line 808
    iget v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mStackOffset:I

    return v0
.end method

.method public isLog2ConsoleSwitch()Z
    .locals 1

    .line 771
    iget-boolean v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mLog2ConsoleSwitch:Z

    return v0
.end method

.method public isLog2FileSwitch()Z
    .locals 1

    .line 784
    iget-boolean v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mLog2FileSwitch:Z

    return v0
.end method

.method public isLogBorderSwitch()Z
    .locals 1

    .line 788
    iget-boolean v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mLogBorderSwitch:Z

    return v0
.end method

.method public isLogHeadSwitch()Z
    .locals 1

    .line 780
    iget-boolean v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mLogHeadSwitch:Z

    return v0
.end method

.method public isLogSwitch()Z
    .locals 1

    .line 767
    iget-boolean v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mLogSwitch:Z

    return v0
.end method

.method public isSingleTagSwitch()Z
    .locals 1

    .line 792
    iget-boolean v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mSingleTagSwitch:Z

    return v0
.end method

.method public setBorderSwitch(Z)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 0

    .line 709
    iput-boolean p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mLogBorderSwitch:Z

    return-object p0
.end method

.method public setConsoleFilter(I)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 0

    .line 719
    iput p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mConsoleFilter:I

    return-object p0
.end method

.method public setConsoleSwitch(Z)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 0

    .line 660
    iput-boolean p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mLog2ConsoleSwitch:Z

    return-object p0
.end method

.method public setDir(Ljava/io/File;)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 695
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$500()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mDir:Ljava/lang/String;

    return-object p0
.end method

.method public setDir(Ljava/lang/String;)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 1

    .line 686
    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->access$600(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 687
    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mDir:Ljava/lang/String;

    goto :goto_1

    .line 689
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$500()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$500()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mDir:Ljava/lang/String;

    :goto_1
    return-object p0
.end method

.method public setFileFilter(I)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 0

    .line 724
    iput p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mFileFilter:I

    return-object p0
.end method

.method public setFilePrefix(Ljava/lang/String;)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 1

    .line 700
    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->access$600(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "util"

    .line 701
    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mFilePrefix:Ljava/lang/String;

    goto :goto_0

    .line 703
    :cond_0
    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mFilePrefix:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public setGlobalTag(Ljava/lang/String;)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 1

    .line 665
    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->access$600(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    .line 666
    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mGlobalTag:Ljava/lang/String;

    const/4 p1, 0x1

    .line 667
    iput-boolean p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mTagIsSpace:Z

    goto :goto_0

    .line 669
    :cond_0
    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mGlobalTag:Ljava/lang/String;

    const/4 p1, 0x0

    .line 670
    iput-boolean p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mTagIsSpace:Z

    :goto_0
    return-object p0
.end method

.method public setLog2FileSwitch(Z)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 0

    .line 681
    iput-boolean p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mLog2FileSwitch:Z

    return-object p0
.end method

.method public setLogHeadSwitch(Z)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 0

    .line 676
    iput-boolean p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mLogHeadSwitch:Z

    return-object p0
.end method

.method public setLogSwitch(Z)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 0

    .line 655
    iput-boolean p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mLogSwitch:Z

    return-object p0
.end method

.method public setSaveDays(I)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 0

    .line 739
    iput p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mSaveDays:I

    return-object p0
.end method

.method public setSingleTagSwitch(Z)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 0

    .line 714
    iput-boolean p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mSingleTagSwitch:Z

    return-object p0
.end method

.method public setStackDeep(I)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 0

    .line 729
    iput p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mStackDeep:I

    return-object p0
.end method

.method public setStackOffset(I)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 0

    .line 734
    iput p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->mStackOffset:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "switch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->isLogSwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 835
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "console: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->isLog2ConsoleSwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 836
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getGlobalTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "head: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->isLogHeadSwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 838
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->isLog2FileSwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 839
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "dir: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "filePrefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getFilePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "border: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->isLogBorderSwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 842
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "singleTag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->isSingleTagSwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 843
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "consoleFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getConsoleFilter()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 844
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fileFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getFileFilter()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 845
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "stackDeep: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getStackDeep()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 846
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "stackOffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getStackOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 847
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "saveDays: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getSaveDays()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 848
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "formatter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$800()Landroidx/collection/SimpleArrayMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
