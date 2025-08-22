.class public Ldevlight/io/library/ntb/NavigationTabBar$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "NavigationTabBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldevlight/io/library/ntb/NavigationTabBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ldevlight/io/library/ntb/NavigationTabBar$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private index:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1624
    new-instance v0, Ldevlight/io/library/ntb/NavigationTabBar$SavedState$1;

    invoke-direct {v0}, Ldevlight/io/library/ntb/NavigationTabBar$SavedState$1;-><init>()V

    sput-object v0, Ldevlight/io/library/ntb/NavigationTabBar$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 1613
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1614
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$SavedState;->index:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ldevlight/io/library/ntb/NavigationTabBar$1;)V
    .locals 0

    .line 1604
    invoke-direct {p0, p1}, Ldevlight/io/library/ntb/NavigationTabBar$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 1609
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$900(Ldevlight/io/library/ntb/NavigationTabBar$SavedState;)I
    .locals 0

    .line 1604
    iget p0, p0, Ldevlight/io/library/ntb/NavigationTabBar$SavedState;->index:I

    return p0
.end method

.method static synthetic access$902(Ldevlight/io/library/ntb/NavigationTabBar$SavedState;I)I
    .locals 0

    .line 1604
    iput p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$SavedState;->index:I

    return p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1619
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1620
    iget p2, p0, Ldevlight/io/library/ntb/NavigationTabBar$SavedState;->index:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
