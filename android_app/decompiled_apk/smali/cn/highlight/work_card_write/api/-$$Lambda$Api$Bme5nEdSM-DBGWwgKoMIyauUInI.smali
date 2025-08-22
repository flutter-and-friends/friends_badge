.class public final synthetic Lcn/highlight/work_card_write/api/-$$Lambda$Api$Bme5nEdSM-DBGWwgKoMIyauUInI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcn/highlight/work_card_write/api/Api;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/util/concurrent/ConcurrentHashMap;

.field private final synthetic f$3:Ljava/lang/Long;

.field private final synthetic f$4:Lcn/highlight/work_card_write/api/ApiResult;

.field private final synthetic f$5:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Lcn/highlight/work_card_write/api/Api;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Long;Lcn/highlight/work_card_write/api/ApiResult;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/highlight/work_card_write/api/-$$Lambda$Api$Bme5nEdSM-DBGWwgKoMIyauUInI;->f$0:Lcn/highlight/work_card_write/api/Api;

    iput-object p2, p0, Lcn/highlight/work_card_write/api/-$$Lambda$Api$Bme5nEdSM-DBGWwgKoMIyauUInI;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcn/highlight/work_card_write/api/-$$Lambda$Api$Bme5nEdSM-DBGWwgKoMIyauUInI;->f$2:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p4, p0, Lcn/highlight/work_card_write/api/-$$Lambda$Api$Bme5nEdSM-DBGWwgKoMIyauUInI;->f$3:Ljava/lang/Long;

    iput-object p5, p0, Lcn/highlight/work_card_write/api/-$$Lambda$Api$Bme5nEdSM-DBGWwgKoMIyauUInI;->f$4:Lcn/highlight/work_card_write/api/ApiResult;

    iput-object p6, p0, Lcn/highlight/work_card_write/api/-$$Lambda$Api$Bme5nEdSM-DBGWwgKoMIyauUInI;->f$5:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcn/highlight/work_card_write/api/-$$Lambda$Api$Bme5nEdSM-DBGWwgKoMIyauUInI;->f$0:Lcn/highlight/work_card_write/api/Api;

    iget-object v1, p0, Lcn/highlight/work_card_write/api/-$$Lambda$Api$Bme5nEdSM-DBGWwgKoMIyauUInI;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcn/highlight/work_card_write/api/-$$Lambda$Api$Bme5nEdSM-DBGWwgKoMIyauUInI;->f$2:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lcn/highlight/work_card_write/api/-$$Lambda$Api$Bme5nEdSM-DBGWwgKoMIyauUInI;->f$3:Ljava/lang/Long;

    iget-object v4, p0, Lcn/highlight/work_card_write/api/-$$Lambda$Api$Bme5nEdSM-DBGWwgKoMIyauUInI;->f$4:Lcn/highlight/work_card_write/api/ApiResult;

    iget-object v5, p0, Lcn/highlight/work_card_write/api/-$$Lambda$Api$Bme5nEdSM-DBGWwgKoMIyauUInI;->f$5:Ljava/lang/Class;

    invoke-virtual/range {v0 .. v5}, Lcn/highlight/work_card_write/api/Api;->lambda$Get$0$Api(Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Long;Lcn/highlight/work_card_write/api/ApiResult;Ljava/lang/Class;)V

    return-void
.end method
