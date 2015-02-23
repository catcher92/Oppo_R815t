.class Lcom/oppo/widget/OppoPopupWindow$1;
.super Ljava/lang/Object;
.source "OppoPopupWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoPopupWindow;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/oppo/widget/OppoPopupWindow$1;->this$0:Lcom/oppo/widget/OppoPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 8

    .prologue
    const/4 v3, -0x1

    .line 135
    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow$1;->this$0:Lcom/oppo/widget/OppoPopupWindow;

    #getter for: Lcom/oppo/widget/OppoPopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/oppo/widget/OppoPopupWindow;->access$000(Lcom/oppo/widget/OppoPopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow$1;->this$0:Lcom/oppo/widget/OppoPopupWindow;

    #getter for: Lcom/oppo/widget/OppoPopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/oppo/widget/OppoPopupWindow;->access$000(Lcom/oppo/widget/OppoPopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v6, v0

    .line 136
    .local v6, anchor:Landroid/view/View;
    :goto_0
    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow$1;->this$0:Lcom/oppo/widget/OppoPopupWindow;

    #getter for: Lcom/oppo/widget/OppoPopupWindow;->mPopupView:Landroid/view/View;
    invoke-static {v0}, Lcom/oppo/widget/OppoPopupWindow;->access$100(Lcom/oppo/widget/OppoPopupWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow$1;->this$0:Lcom/oppo/widget/OppoPopupWindow;

    #getter for: Lcom/oppo/widget/OppoPopupWindow;->mPopupView:Landroid/view/View;
    invoke-static {v0}, Lcom/oppo/widget/OppoPopupWindow;->access$100(Lcom/oppo/widget/OppoPopupWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 140
    .local v7, p:Landroid/view/WindowManager$LayoutParams;
    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow$1;->this$0:Lcom/oppo/widget/OppoPopupWindow;

    iget-object v1, p0, Lcom/oppo/widget/OppoPopupWindow$1;->this$0:Lcom/oppo/widget/OppoPopupWindow;

    iget-object v2, p0, Lcom/oppo/widget/OppoPopupWindow$1;->this$0:Lcom/oppo/widget/OppoPopupWindow;

    #getter for: Lcom/oppo/widget/OppoPopupWindow;->mAnchorXoff:I
    invoke-static {v2}, Lcom/oppo/widget/OppoPopupWindow;->access$200(Lcom/oppo/widget/OppoPopupWindow;)I

    move-result v2

    iget-object v4, p0, Lcom/oppo/widget/OppoPopupWindow$1;->this$0:Lcom/oppo/widget/OppoPopupWindow;

    #getter for: Lcom/oppo/widget/OppoPopupWindow;->mAnchorYoff:I
    invoke-static {v4}, Lcom/oppo/widget/OppoPopupWindow;->access$300(Lcom/oppo/widget/OppoPopupWindow;)I

    move-result v4

    #calls: Lcom/oppo/widget/OppoPopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    invoke-static {v1, v6, v7, v2, v4}, Lcom/oppo/widget/OppoPopupWindow;->access$400(Lcom/oppo/widget/OppoPopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v1

    #calls: Lcom/oppo/widget/OppoPopupWindow;->updateAboveAnchor(Z)V
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoPopupWindow;->access$500(Lcom/oppo/widget/OppoPopupWindow;Z)V

    .line 141
    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow$1;->this$0:Lcom/oppo/widget/OppoPopupWindow;

    iget v1, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/widget/OppoPopupWindow;->update(IIIIZ)V

    .line 143
    .end local v7           #p:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void

    .line 135
    .end local v6           #anchor:Landroid/view/View;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method
