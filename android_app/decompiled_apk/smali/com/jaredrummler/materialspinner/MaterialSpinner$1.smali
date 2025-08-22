.class Lcom/jaredrummler/materialspinner/MaterialSpinner$1;
.super Ljava/lang/Object;
.source "MaterialSpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaredrummler/materialspinner/MaterialSpinner;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaredrummler/materialspinner/MaterialSpinner;


# direct methods
.method constructor <init>(Lcom/jaredrummler/materialspinner/MaterialSpinner;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner$1;->this$0:Lcom/jaredrummler/materialspinner/MaterialSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 177
    iget-object p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner$1;->this$0:Lcom/jaredrummler/materialspinner/MaterialSpinner;

    invoke-static {p1}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->access$000(Lcom/jaredrummler/materialspinner/MaterialSpinner;)I

    move-result p1

    if-lt p3, p1, :cond_0

    iget-object p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner$1;->this$0:Lcom/jaredrummler/materialspinner/MaterialSpinner;

    .line 178
    invoke-static {p1}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->access$100(Lcom/jaredrummler/materialspinner/MaterialSpinner;)Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->getCount()I

    move-result p1

    if-ge p3, p1, :cond_0

    iget-object p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner$1;->this$0:Lcom/jaredrummler/materialspinner/MaterialSpinner;

    .line 179
    invoke-static {p1}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->access$100(Lcom/jaredrummler/materialspinner/MaterialSpinner;)Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner$1;->this$0:Lcom/jaredrummler/materialspinner/MaterialSpinner;

    .line 180
    invoke-static {p1}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->access$200(Lcom/jaredrummler/materialspinner/MaterialSpinner;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/lit8 p3, p3, 0x1

    :cond_0
    move v2, p3

    .line 183
    iget-object p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner$1;->this$0:Lcom/jaredrummler/materialspinner/MaterialSpinner;

    invoke-static {p1, v2}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->access$002(Lcom/jaredrummler/materialspinner/MaterialSpinner;I)I

    .line 184
    iget-object p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner$1;->this$0:Lcom/jaredrummler/materialspinner/MaterialSpinner;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->access$302(Lcom/jaredrummler/materialspinner/MaterialSpinner;Z)Z

    .line 185
    iget-object p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner$1;->this$0:Lcom/jaredrummler/materialspinner/MaterialSpinner;

    invoke-static {p1}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->access$100(Lcom/jaredrummler/materialspinner/MaterialSpinner;)Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 186
    iget-object p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner$1;->this$0:Lcom/jaredrummler/materialspinner/MaterialSpinner;

    invoke-static {p1}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->access$100(Lcom/jaredrummler/materialspinner/MaterialSpinner;)Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->notifyItemSelected(I)V

    .line 187
    iget-object p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner$1;->this$0:Lcom/jaredrummler/materialspinner/MaterialSpinner;

    invoke-static {p1}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->access$400(Lcom/jaredrummler/materialspinner/MaterialSpinner;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->setTextColor(I)V

    .line 188
    iget-object p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner$1;->this$0:Lcom/jaredrummler/materialspinner/MaterialSpinner;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner$1;->this$0:Lcom/jaredrummler/materialspinner/MaterialSpinner;

    invoke-virtual {p1}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->collapse()V

    .line 190
    iget-object p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner$1;->this$0:Lcom/jaredrummler/materialspinner/MaterialSpinner;

    invoke-static {p1}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->access$500(Lcom/jaredrummler/materialspinner/MaterialSpinner;)Lcom/jaredrummler/materialspinner/MaterialSpinner$OnItemSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 192
    iget-object p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner$1;->this$0:Lcom/jaredrummler/materialspinner/MaterialSpinner;

    invoke-static {p1}, Lcom/jaredrummler/materialspinner/MaterialSpinner;->access$500(Lcom/jaredrummler/materialspinner/MaterialSpinner;)Lcom/jaredrummler/materialspinner/MaterialSpinner$OnItemSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinner$1;->this$0:Lcom/jaredrummler/materialspinner/MaterialSpinner;

    move-wide v3, p4

    invoke-interface/range {v0 .. v5}, Lcom/jaredrummler/materialspinner/MaterialSpinner$OnItemSelectedListener;->onItemSelected(Lcom/jaredrummler/materialspinner/MaterialSpinner;IJLjava/lang/Object;)V

    :cond_1
    return-void
.end method
