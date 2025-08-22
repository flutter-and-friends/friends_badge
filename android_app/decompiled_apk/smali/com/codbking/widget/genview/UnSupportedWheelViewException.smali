.class public Lcom/codbking/widget/genview/UnSupportedWheelViewException;
.super Ljava/lang/Exception;
.source "UnSupportedWheelViewException.java"


# static fields
.field private static final serialVersionUID:J = 0x1a4b31ac36cfda3eL


# instance fields
.field mistake:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string v0, "Only support List, Map,String Array,Cursor,SparseArray,SparseBooleanArray,SparseIntArray,Vector, and basic data type"

    .line 9
    iput-object v0, p0, Lcom/codbking/widget/genview/UnSupportedWheelViewException;->mistake:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/codbking/widget/genview/UnSupportedWheelViewException;->mistake:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/codbking/widget/genview/UnSupportedWheelViewException;->mistake:Ljava/lang/String;

    return-object v0
.end method
