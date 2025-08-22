.class Lcn/highlight/work_card_write/activity/Model2Activity$8;
.super Ljava/lang/Object;
.source "Model2Activity.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/activity/Model2Activity;->showMainSetImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

.field final synthetic val$imageSetLibraryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/activity/Model2Activity;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1469
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$8;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    iput-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity$8;->val$imageSetLibraryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onTabSelected$0$Model2Activity$8(Ljava/lang/Integer;)V
    .locals 2

    .line 1498
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity$8;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-virtual {v0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lcn/highlight/work_card_write/Constants;->editCrop2Image:Landroid/graphics/Bitmap;

    .line 1499
    sget-object p1, Lcn/highlight/work_card_write/Constants;->editCrop2Image:Landroid/graphics/Bitmap;

    .line 1500
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity$8;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v0}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    instance-of v0, v0, Lcn/highlight/lib_doodle/DoodleBitmap;

    if-eqz v0, :cond_0

    .line 1501
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity$8;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v0}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object v1

    invoke-virtual {v1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v1

    check-cast v1, Lcn/highlight/lib_doodle/DoodleBitmap;

    invoke-static {v0, v1, p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$800(Lcn/highlight/work_card_write/activity/Model2Activity;Lcn/highlight/lib_doodle/DoodleBitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1503
    :cond_0
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity$8;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$800(Lcn/highlight/work_card_write/activity/Model2Activity;Lcn/highlight/lib_doodle/DoodleBitmap;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$onTabSelected$1$Model2Activity$8(Ljava/lang/Integer;)V
    .locals 2

    .line 1534
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity$8;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-virtual {v0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lcn/highlight/work_card_write/Constants;->editCrop2Image:Landroid/graphics/Bitmap;

    .line 1535
    sget-object p1, Lcn/highlight/work_card_write/Constants;->editCrop2Image:Landroid/graphics/Bitmap;

    .line 1536
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity$8;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v0}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    instance-of v0, v0, Lcn/highlight/lib_doodle/DoodleBitmap;

    if-eqz v0, :cond_0

    .line 1537
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity$8;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-static {v0}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-result-object v1

    invoke-virtual {v1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v1

    check-cast v1, Lcn/highlight/lib_doodle/DoodleBitmap;

    invoke-static {v0, v1, p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$800(Lcn/highlight/work_card_write/activity/Model2Activity;Lcn/highlight/lib_doodle/DoodleBitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1539
    :cond_0
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity$8;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->access$800(Lcn/highlight/work_card_write/activity/Model2Activity;Lcn/highlight/lib_doodle/DoodleBitmap;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    .line 1472
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    const/4 v0, 0x5

    if-nez p1, :cond_0

    .line 1473
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$8;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-direct {p1, v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 1474
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity$8;->val$imageSetLibraryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1475
    new-instance p1, Lcn/highlight/work_card_write/adapter/ModelimageLibraryAdapter;

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity$8;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-direct {p1, v0}, Lcn/highlight/work_card_write/adapter/ModelimageLibraryAdapter;-><init>(Landroid/content/Context;)V

    .line 1476
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity$8;->val$imageSetLibraryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1477
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f080108

    .line 1478
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f080112

    .line 1479
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f080113

    .line 1480
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f080114

    .line 1481
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f080115

    .line 1482
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f080116

    .line 1483
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f080117

    .line 1484
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f080118

    .line 1485
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f080119

    .line 1486
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f080109

    .line 1487
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f08010a

    .line 1488
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f08010b

    .line 1489
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f08010c

    .line 1490
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f08010d

    .line 1491
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f08010e

    .line 1492
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f08010f

    .line 1493
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f080110

    .line 1494
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f080111

    .line 1495
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1496
    invoke-virtual {p1, v0}, Lcn/highlight/work_card_write/adapter/ModelimageLibraryAdapter;->setDataList(Ljava/util/List;)V

    .line 1497
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$8$LQbYXG5BQgfopPl9mA2Gy_rBAqw;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$8$LQbYXG5BQgfopPl9mA2Gy_rBAqw;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity$8;)V

    invoke-virtual {p1, v0}, Lcn/highlight/work_card_write/adapter/ModelimageLibraryAdapter;->setOnClickSelectViewBG(Lcn/highlight/work_card_write/adapter/ModelimageLibraryAdapter$OnClickSelectViewBg;)V

    goto/16 :goto_0

    .line 1507
    :cond_0
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity$8;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-direct {p1, v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 1508
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity$8;->val$imageSetLibraryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1509
    new-instance p1, Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter;

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity$8;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-direct {p1, v0}, Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter;-><init>(Landroid/content/Context;)V

    .line 1510
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity$8;->val$imageSetLibraryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f0800bd

    .line 1512
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0800be

    .line 1513
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0800c9

    .line 1514
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0800ca

    .line 1515
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0800cb

    .line 1516
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0800cc

    .line 1517
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0800cd

    .line 1518
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0800ce

    .line 1519
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0800cf

    .line 1520
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0800d0

    .line 1521
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0800bf

    .line 1522
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0800c0

    .line 1523
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0800c1

    .line 1524
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0800c2

    .line 1525
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0800c3

    .line 1526
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0800c4

    .line 1527
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0800c5

    .line 1528
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0800c6

    .line 1529
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0800c7

    .line 1530
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0800c8

    .line 1531
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1532
    invoke-virtual {p1, v0}, Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter;->setDataList(Ljava/util/List;)V

    .line 1533
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$8$7Rmx5dmRJS13NNYaJvjbezMiPX0;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$8$7Rmx5dmRJS13NNYaJvjbezMiPX0;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity$8;)V

    invoke-virtual {p1, v0}, Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter;->setOnClickSelectViewBG(Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter$OnClickSelectViewBg;)V

    :goto_0
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
