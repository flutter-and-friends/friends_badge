.class Lcom/gyf/barlibrary/KeyboardPatch$1;
.super Ljava/lang/Object;
.source "KeyboardPatch.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gyf/barlibrary/KeyboardPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gyf/barlibrary/KeyboardPatch;


# direct methods
.method constructor <init>(Lcom/gyf/barlibrary/KeyboardPatch;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 9

    .line 141
    iget-object v0, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v0}, Lcom/gyf/barlibrary/KeyboardPatch;->access$000(Lcom/gyf/barlibrary/KeyboardPatch;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 143
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 144
    iget-object v1, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v1}, Lcom/gyf/barlibrary/KeyboardPatch;->access$100(Lcom/gyf/barlibrary/KeyboardPatch;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 148
    iget-object v1, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v1}, Lcom/gyf/barlibrary/KeyboardPatch;->access$200(Lcom/gyf/barlibrary/KeyboardPatch;)Lcom/gyf/barlibrary/BarParams;

    move-result-object v1

    iget-boolean v1, v1, Lcom/gyf/barlibrary/BarParams;->systemWindows:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 149
    iget-object v1, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v1}, Lcom/gyf/barlibrary/KeyboardPatch;->access$300(Lcom/gyf/barlibrary/KeyboardPatch;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v0}, Lcom/gyf/barlibrary/KeyboardPatch;->access$400(Lcom/gyf/barlibrary/KeyboardPatch;)I

    move-result v0

    sub-int/2addr v1, v0

    .line 150
    iget-object v0, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v0}, Lcom/gyf/barlibrary/KeyboardPatch;->access$200(Lcom/gyf/barlibrary/KeyboardPatch;)Lcom/gyf/barlibrary/BarParams;

    move-result-object v0

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->onKeyboardListener:Lcom/gyf/barlibrary/OnKeyboardListener;

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v0}, Lcom/gyf/barlibrary/KeyboardPatch;->access$400(Lcom/gyf/barlibrary/KeyboardPatch;)I

    move-result v0

    if-le v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 153
    :goto_0
    iget-object v0, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v0}, Lcom/gyf/barlibrary/KeyboardPatch;->access$200(Lcom/gyf/barlibrary/KeyboardPatch;)Lcom/gyf/barlibrary/BarParams;

    move-result-object v0

    iget-object v0, v0, Lcom/gyf/barlibrary/BarParams;->onKeyboardListener:Lcom/gyf/barlibrary/OnKeyboardListener;

    invoke-interface {v0, v2, v1}, Lcom/gyf/barlibrary/OnKeyboardListener;->onKeyboardChange(ZI)V

    :cond_2
    return-void

    .line 157
    :cond_3
    iget-object v1, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v1}, Lcom/gyf/barlibrary/KeyboardPatch;->access$500(Lcom/gyf/barlibrary/KeyboardPatch;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 158
    iget-object v1, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v1}, Lcom/gyf/barlibrary/KeyboardPatch;->access$200(Lcom/gyf/barlibrary/KeyboardPatch;)Lcom/gyf/barlibrary/BarParams;

    move-result-object v1

    iget-boolean v1, v1, Lcom/gyf/barlibrary/BarParams;->isSupportActionBar:Z

    if-eqz v1, :cond_4

    .line 159
    iget-object v1, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v1}, Lcom/gyf/barlibrary/KeyboardPatch;->access$300(Lcom/gyf/barlibrary/KeyboardPatch;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v4, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v4}, Lcom/gyf/barlibrary/KeyboardPatch;->access$600(Lcom/gyf/barlibrary/KeyboardPatch;)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v4}, Lcom/gyf/barlibrary/KeyboardPatch;->access$700(Lcom/gyf/barlibrary/KeyboardPatch;)I

    move-result v4

    add-int/2addr v1, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    :goto_1
    sub-int/2addr v1, v0

    goto :goto_2

    .line 160
    :cond_4
    iget-object v1, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v1}, Lcom/gyf/barlibrary/KeyboardPatch;->access$200(Lcom/gyf/barlibrary/KeyboardPatch;)Lcom/gyf/barlibrary/BarParams;

    move-result-object v1

    iget-boolean v1, v1, Lcom/gyf/barlibrary/BarParams;->fits:Z

    if-eqz v1, :cond_5

    .line 161
    iget-object v1, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v1}, Lcom/gyf/barlibrary/KeyboardPatch;->access$300(Lcom/gyf/barlibrary/KeyboardPatch;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v4, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v4}, Lcom/gyf/barlibrary/KeyboardPatch;->access$600(Lcom/gyf/barlibrary/KeyboardPatch;)I

    move-result v4

    add-int/2addr v1, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 163
    :cond_5
    iget-object v1, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v1}, Lcom/gyf/barlibrary/KeyboardPatch;->access$300(Lcom/gyf/barlibrary/KeyboardPatch;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 164
    :goto_2
    iget-object v0, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v0}, Lcom/gyf/barlibrary/KeyboardPatch;->access$200(Lcom/gyf/barlibrary/KeyboardPatch;)Lcom/gyf/barlibrary/BarParams;

    move-result-object v0

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->fullScreen:Z

    if-eqz v0, :cond_6

    .line 165
    iget-object v0, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v0}, Lcom/gyf/barlibrary/KeyboardPatch;->access$400(Lcom/gyf/barlibrary/KeyboardPatch;)I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_3

    :cond_6
    move v0, v1

    .line 168
    :goto_3
    iget-object v4, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v4}, Lcom/gyf/barlibrary/KeyboardPatch;->access$200(Lcom/gyf/barlibrary/KeyboardPatch;)Lcom/gyf/barlibrary/BarParams;

    move-result-object v4

    iget-boolean v4, v4, Lcom/gyf/barlibrary/BarParams;->fullScreen:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v4}, Lcom/gyf/barlibrary/KeyboardPatch;->access$400(Lcom/gyf/barlibrary/KeyboardPatch;)I

    move-result v4

    if-ne v1, v4, :cond_7

    .line 169
    iget-object v4, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v4}, Lcom/gyf/barlibrary/KeyboardPatch;->access$400(Lcom/gyf/barlibrary/KeyboardPatch;)I

    move-result v4

    sub-int/2addr v1, v4

    .line 171
    :cond_7
    iget-object v4, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v4}, Lcom/gyf/barlibrary/KeyboardPatch;->access$800(Lcom/gyf/barlibrary/KeyboardPatch;)I

    move-result v4

    if-eq v0, v4, :cond_12

    .line 172
    iget-object v4, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v4}, Lcom/gyf/barlibrary/KeyboardPatch;->access$300(Lcom/gyf/barlibrary/KeyboardPatch;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v5}, Lcom/gyf/barlibrary/KeyboardPatch;->access$900(Lcom/gyf/barlibrary/KeyboardPatch;)I

    move-result v5

    iget-object v6, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v6}, Lcom/gyf/barlibrary/KeyboardPatch;->access$1000(Lcom/gyf/barlibrary/KeyboardPatch;)I

    move-result v6

    iget-object v7, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v7}, Lcom/gyf/barlibrary/KeyboardPatch;->access$1100(Lcom/gyf/barlibrary/KeyboardPatch;)I

    move-result v7

    iget-object v8, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v8}, Lcom/gyf/barlibrary/KeyboardPatch;->access$1200(Lcom/gyf/barlibrary/KeyboardPatch;)I

    move-result v8

    add-int/2addr v1, v8

    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 173
    iget-object v1, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v1, v0}, Lcom/gyf/barlibrary/KeyboardPatch;->access$802(Lcom/gyf/barlibrary/KeyboardPatch;I)I

    .line 174
    iget-object v1, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v1}, Lcom/gyf/barlibrary/KeyboardPatch;->access$200(Lcom/gyf/barlibrary/KeyboardPatch;)Lcom/gyf/barlibrary/BarParams;

    move-result-object v1

    iget-object v1, v1, Lcom/gyf/barlibrary/BarParams;->onKeyboardListener:Lcom/gyf/barlibrary/OnKeyboardListener;

    if-eqz v1, :cond_12

    .line 175
    iget-object v1, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v1}, Lcom/gyf/barlibrary/KeyboardPatch;->access$400(Lcom/gyf/barlibrary/KeyboardPatch;)I

    move-result v1

    if-le v0, v1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    .line 177
    :goto_4
    iget-object v1, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v1}, Lcom/gyf/barlibrary/KeyboardPatch;->access$200(Lcom/gyf/barlibrary/KeyboardPatch;)Lcom/gyf/barlibrary/BarParams;

    move-result-object v1

    iget-object v1, v1, Lcom/gyf/barlibrary/BarParams;->onKeyboardListener:Lcom/gyf/barlibrary/OnKeyboardListener;

    invoke-interface {v1, v2, v0}, Lcom/gyf/barlibrary/OnKeyboardListener;->onKeyboardChange(ZI)V

    goto/16 :goto_b

    .line 181
    :cond_9
    iget-object v1, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v1}, Lcom/gyf/barlibrary/KeyboardPatch;->access$300(Lcom/gyf/barlibrary/KeyboardPatch;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    .line 183
    iget-object v0, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v0}, Lcom/gyf/barlibrary/KeyboardPatch;->access$200(Lcom/gyf/barlibrary/KeyboardPatch;)Lcom/gyf/barlibrary/BarParams;

    move-result-object v0

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarEnable:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v0}, Lcom/gyf/barlibrary/KeyboardPatch;->access$200(Lcom/gyf/barlibrary/KeyboardPatch;)Lcom/gyf/barlibrary/BarParams;

    move-result-object v0

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->navigationBarWithKitkatEnable:Z

    if-eqz v0, :cond_d

    .line 184
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-eq v0, v4, :cond_c

    invoke-static {}, Lcom/gyf/barlibrary/OSUtils;->isEMUI3_1()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_5

    .line 187
    :cond_a
    iget-object v0, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v0}, Lcom/gyf/barlibrary/KeyboardPatch;->access$200(Lcom/gyf/barlibrary/KeyboardPatch;)Lcom/gyf/barlibrary/BarParams;

    move-result-object v0

    iget-boolean v0, v0, Lcom/gyf/barlibrary/BarParams;->fullScreen:Z

    if-nez v0, :cond_b

    move v0, v1

    goto :goto_7

    .line 190
    :cond_b
    iget-object v0, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v0}, Lcom/gyf/barlibrary/KeyboardPatch;->access$400(Lcom/gyf/barlibrary/KeyboardPatch;)I

    move-result v0

    goto :goto_6

    .line 185
    :cond_c
    :goto_5
    iget-object v0, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v0}, Lcom/gyf/barlibrary/KeyboardPatch;->access$400(Lcom/gyf/barlibrary/KeyboardPatch;)I

    move-result v0

    :goto_6
    sub-int v0, v1, v0

    .line 192
    :goto_7
    iget-object v4, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v4}, Lcom/gyf/barlibrary/KeyboardPatch;->access$200(Lcom/gyf/barlibrary/KeyboardPatch;)Lcom/gyf/barlibrary/BarParams;

    move-result-object v4

    iget-boolean v4, v4, Lcom/gyf/barlibrary/BarParams;->fullScreen:Z

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v4}, Lcom/gyf/barlibrary/KeyboardPatch;->access$400(Lcom/gyf/barlibrary/KeyboardPatch;)I

    move-result v4

    if-ne v1, v4, :cond_e

    .line 193
    iget-object v4, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v4}, Lcom/gyf/barlibrary/KeyboardPatch;->access$400(Lcom/gyf/barlibrary/KeyboardPatch;)I

    move-result v4

    sub-int/2addr v1, v4

    goto :goto_8

    :cond_d
    move v0, v1

    .line 196
    :cond_e
    :goto_8
    iget-object v4, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v4}, Lcom/gyf/barlibrary/KeyboardPatch;->access$800(Lcom/gyf/barlibrary/KeyboardPatch;)I

    move-result v4

    if-eq v0, v4, :cond_12

    .line 197
    iget-object v4, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v4}, Lcom/gyf/barlibrary/KeyboardPatch;->access$200(Lcom/gyf/barlibrary/KeyboardPatch;)Lcom/gyf/barlibrary/BarParams;

    move-result-object v4

    iget-boolean v4, v4, Lcom/gyf/barlibrary/BarParams;->isSupportActionBar:Z

    if-eqz v4, :cond_f

    .line 198
    iget-object v4, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v4}, Lcom/gyf/barlibrary/KeyboardPatch;->access$300(Lcom/gyf/barlibrary/KeyboardPatch;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v5}, Lcom/gyf/barlibrary/KeyboardPatch;->access$600(Lcom/gyf/barlibrary/KeyboardPatch;)I

    move-result v5

    iget-object v6, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v6}, Lcom/gyf/barlibrary/KeyboardPatch;->access$700(Lcom/gyf/barlibrary/KeyboardPatch;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v3, v5, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_9

    .line 199
    :cond_f
    iget-object v4, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v4}, Lcom/gyf/barlibrary/KeyboardPatch;->access$200(Lcom/gyf/barlibrary/KeyboardPatch;)Lcom/gyf/barlibrary/BarParams;

    move-result-object v4

    iget-boolean v4, v4, Lcom/gyf/barlibrary/BarParams;->fits:Z

    if-eqz v4, :cond_10

    .line 200
    iget-object v4, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v4}, Lcom/gyf/barlibrary/KeyboardPatch;->access$300(Lcom/gyf/barlibrary/KeyboardPatch;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v5}, Lcom/gyf/barlibrary/KeyboardPatch;->access$600(Lcom/gyf/barlibrary/KeyboardPatch;)I

    move-result v5

    invoke-virtual {v4, v3, v5, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_9

    .line 202
    :cond_10
    iget-object v4, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v4}, Lcom/gyf/barlibrary/KeyboardPatch;->access$300(Lcom/gyf/barlibrary/KeyboardPatch;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3, v3, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 203
    :goto_9
    iget-object v1, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v1, v0}, Lcom/gyf/barlibrary/KeyboardPatch;->access$802(Lcom/gyf/barlibrary/KeyboardPatch;I)I

    .line 204
    iget-object v1, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v1}, Lcom/gyf/barlibrary/KeyboardPatch;->access$200(Lcom/gyf/barlibrary/KeyboardPatch;)Lcom/gyf/barlibrary/BarParams;

    move-result-object v1

    iget-object v1, v1, Lcom/gyf/barlibrary/BarParams;->onKeyboardListener:Lcom/gyf/barlibrary/OnKeyboardListener;

    if-eqz v1, :cond_12

    .line 205
    iget-object v1, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v1}, Lcom/gyf/barlibrary/KeyboardPatch;->access$400(Lcom/gyf/barlibrary/KeyboardPatch;)I

    move-result v1

    if-le v0, v1, :cond_11

    goto :goto_a

    :cond_11
    const/4 v2, 0x0

    .line 207
    :goto_a
    iget-object v1, p0, Lcom/gyf/barlibrary/KeyboardPatch$1;->this$0:Lcom/gyf/barlibrary/KeyboardPatch;

    invoke-static {v1}, Lcom/gyf/barlibrary/KeyboardPatch;->access$200(Lcom/gyf/barlibrary/KeyboardPatch;)Lcom/gyf/barlibrary/BarParams;

    move-result-object v1

    iget-object v1, v1, Lcom/gyf/barlibrary/BarParams;->onKeyboardListener:Lcom/gyf/barlibrary/OnKeyboardListener;

    invoke-interface {v1, v2, v0}, Lcom/gyf/barlibrary/OnKeyboardListener;->onKeyboardChange(ZI)V

    :cond_12
    :goto_b
    return-void
.end method
