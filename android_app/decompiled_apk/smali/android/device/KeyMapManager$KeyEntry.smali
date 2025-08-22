.class public Landroid/device/KeyMapManager$KeyEntry;
.super Ljava/lang/Object;
.source "KeyMapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/device/KeyMapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyEntry"
.end annotation


# instance fields
.field public action:Ljava/lang/String;

.field public keycode:I

.field public keycode_meta:I

.field public scancode:I

.field final synthetic this$0:Landroid/device/KeyMapManager;

.field public type:I


# direct methods
.method public constructor <init>(Landroid/device/KeyMapManager;)V
    .locals 1

    .line 113
    iput-object p1, p0, Landroid/device/KeyMapManager$KeyEntry;->this$0:Landroid/device/KeyMapManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 117
    iput p1, p0, Landroid/device/KeyMapManager$KeyEntry;->scancode:I

    .line 121
    iput p1, p0, Landroid/device/KeyMapManager$KeyEntry;->keycode:I

    .line 125
    iput p1, p0, Landroid/device/KeyMapManager$KeyEntry;->keycode_meta:I

    const-string v0, ""

    .line 129
    iput-object v0, p0, Landroid/device/KeyMapManager$KeyEntry;->action:Ljava/lang/String;

    .line 133
    iput p1, p0, Landroid/device/KeyMapManager$KeyEntry;->type:I

    return-void
.end method
