.class public Ljxl/write/WritableFont$FontName;
.super Ljava/lang/Object;
.source "WritableFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/write/WritableFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontName"
.end annotation


# instance fields
.field name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Ljxl/write/WritableFont$FontName;->name:Ljava/lang/String;

    return-void
.end method
