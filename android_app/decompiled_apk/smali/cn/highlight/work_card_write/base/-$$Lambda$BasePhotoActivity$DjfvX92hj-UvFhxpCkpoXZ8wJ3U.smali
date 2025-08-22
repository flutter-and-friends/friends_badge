.class public final synthetic Lcn/highlight/work_card_write/base/-$$Lambda$BasePhotoActivity$DjfvX92hj-UvFhxpCkpoXZ8wJ3U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcn/highlight/work_card_write/base/BasePhotoActivity;

.field private final synthetic f$1:Landroid/app/AlertDialog;

.field private final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcn/highlight/work_card_write/base/BasePhotoActivity;Landroid/app/AlertDialog;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/highlight/work_card_write/base/-$$Lambda$BasePhotoActivity$DjfvX92hj-UvFhxpCkpoXZ8wJ3U;->f$0:Lcn/highlight/work_card_write/base/BasePhotoActivity;

    iput-object p2, p0, Lcn/highlight/work_card_write/base/-$$Lambda$BasePhotoActivity$DjfvX92hj-UvFhxpCkpoXZ8wJ3U;->f$1:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcn/highlight/work_card_write/base/-$$Lambda$BasePhotoActivity$DjfvX92hj-UvFhxpCkpoXZ8wJ3U;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcn/highlight/work_card_write/base/-$$Lambda$BasePhotoActivity$DjfvX92hj-UvFhxpCkpoXZ8wJ3U;->f$0:Lcn/highlight/work_card_write/base/BasePhotoActivity;

    iget-object v1, p0, Lcn/highlight/work_card_write/base/-$$Lambda$BasePhotoActivity$DjfvX92hj-UvFhxpCkpoXZ8wJ3U;->f$1:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcn/highlight/work_card_write/base/-$$Lambda$BasePhotoActivity$DjfvX92hj-UvFhxpCkpoXZ8wJ3U;->f$2:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, p1}, Lcn/highlight/work_card_write/base/BasePhotoActivity;->lambda$showNormalDialog$3$BasePhotoActivity(Landroid/app/AlertDialog;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
