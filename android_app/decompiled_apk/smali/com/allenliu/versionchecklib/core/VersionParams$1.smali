.class final Lcom/allenliu/versionchecklib/core/VersionParams$1;
.super Ljava/lang/Object;
.source "VersionParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allenliu/versionchecklib/core/VersionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/allenliu/versionchecklib/core/VersionParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/allenliu/versionchecklib/core/VersionParams;
    .locals 1

    .line 337
    new-instance v0, Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-direct {v0, p1}, Lcom/allenliu/versionchecklib/core/VersionParams;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 334
    invoke-virtual {p0, p1}, Lcom/allenliu/versionchecklib/core/VersionParams$1;->createFromParcel(Landroid/os/Parcel;)Lcom/allenliu/versionchecklib/core/VersionParams;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/allenliu/versionchecklib/core/VersionParams;
    .locals 0

    .line 342
    new-array p1, p1, [Lcom/allenliu/versionchecklib/core/VersionParams;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 334
    invoke-virtual {p0, p1}, Lcom/allenliu/versionchecklib/core/VersionParams$1;->newArray(I)[Lcom/allenliu/versionchecklib/core/VersionParams;

    move-result-object p1

    return-object p1
.end method
