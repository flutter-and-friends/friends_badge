.class public Lcom/yanzhenjie/permission/checker/PermissionTest$CursorTest;
.super Ljava/lang/Object;
.source "PermissionTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanzhenjie/permission/checker/PermissionTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CursorTest"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroid/database/Cursor;)V
    .locals 3

    .line 30
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 32
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    .line 33
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getType(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 43
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    :cond_0
    return-void
.end method
