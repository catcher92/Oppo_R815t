.class Lcom/oppo/widget/OppoTouchSearchView$1;
.super Ljava/lang/Object;
.source "OppoTouchSearchView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoTouchSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoTouchSearchView;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoTouchSearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/oppo/widget/OppoTouchSearchView$1;->this$0:Lcom/oppo/widget/OppoTouchSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 381
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v1, v4

    .line 382
    .local v1, m:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v2, v4

    .line 383
    .local v2, n:I
    if-lez v1, :cond_2

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView$1;->this$0:Lcom/oppo/widget/OppoTouchSearchView;

    #getter for: Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I
    invoke-static {v4}, Lcom/oppo/widget/OppoTouchSearchView;->access$000(Lcom/oppo/widget/OppoTouchSearchView;)I

    move-result v4

    if-ge v1, v4, :cond_2

    if-lez v2, :cond_2

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView$1;->this$0:Lcom/oppo/widget/OppoTouchSearchView;

    #getter for: Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I
    invoke-static {v4}, Lcom/oppo/widget/OppoTouchSearchView;->access$100(Lcom/oppo/widget/OppoTouchSearchView;)I

    move-result v4

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView$1;->this$0:Lcom/oppo/widget/OppoTouchSearchView;

    #getter for: Lcom/oppo/widget/OppoTouchSearchView;->mPopupDefaultHeight:I
    invoke-static {v5}, Lcom/oppo/widget/OppoTouchSearchView;->access$200(Lcom/oppo/widget/OppoTouchSearchView;)I

    move-result v5

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_2

    .line 385
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView$1;->this$0:Lcom/oppo/widget/OppoTouchSearchView;

    #getter for: Lcom/oppo/widget/OppoTouchSearchView;->mPopupWinSubHeight:I
    invoke-static {v4}, Lcom/oppo/widget/OppoTouchSearchView;->access$300(Lcom/oppo/widget/OppoTouchSearchView;)I

    move-result v4

    div-int v3, v2, v4

    .line 386
    .local v3, wilNum:I
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView$1;->this$0:Lcom/oppo/widget/OppoTouchSearchView;

    #getter for: Lcom/oppo/widget/OppoTouchSearchView;->curNum:I
    invoke-static {v4}, Lcom/oppo/widget/OppoTouchSearchView;->access$400(Lcom/oppo/widget/OppoTouchSearchView;)I

    move-result v4

    if-eq v4, v3, :cond_1

    .line 387
    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView$1;->this$0:Lcom/oppo/widget/OppoTouchSearchView;

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView$1;->this$0:Lcom/oppo/widget/OppoTouchSearchView;

    #getter for: Lcom/oppo/widget/OppoTouchSearchView;->mTextViewList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/oppo/widget/OppoTouchSearchView;->access$600(Lcom/oppo/widget/OppoTouchSearchView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    #setter for: Lcom/oppo/widget/OppoTouchSearchView;->surname:Ljava/lang/CharSequence;
    invoke-static {v5, v4}, Lcom/oppo/widget/OppoTouchSearchView;->access$502(Lcom/oppo/widget/OppoTouchSearchView;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 388
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView$1;->this$0:Lcom/oppo/widget/OppoTouchSearchView;

    #getter for: Lcom/oppo/widget/OppoTouchSearchView;->mTextViewList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/oppo/widget/OppoTouchSearchView;->access$600(Lcom/oppo/widget/OppoTouchSearchView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView$1;->this$0:Lcom/oppo/widget/OppoTouchSearchView;

    #getter for: Lcom/oppo/widget/OppoTouchSearchView;->mPopupBg:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/oppo/widget/OppoTouchSearchView;->access$700(Lcom/oppo/widget/OppoTouchSearchView;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 389
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView$1;->this$0:Lcom/oppo/widget/OppoTouchSearchView;

    #getter for: Lcom/oppo/widget/OppoTouchSearchView;->curNum:I
    invoke-static {v4}, Lcom/oppo/widget/OppoTouchSearchView;->access$400(Lcom/oppo/widget/OppoTouchSearchView;)I

    move-result v4

    if-eq v4, v6, :cond_0

    .line 390
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView$1;->this$0:Lcom/oppo/widget/OppoTouchSearchView;

    #getter for: Lcom/oppo/widget/OppoTouchSearchView;->mTextViewList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/oppo/widget/OppoTouchSearchView;->access$600(Lcom/oppo/widget/OppoTouchSearchView;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView$1;->this$0:Lcom/oppo/widget/OppoTouchSearchView;

    #getter for: Lcom/oppo/widget/OppoTouchSearchView;->curNum:I
    invoke-static {v5}, Lcom/oppo/widget/OppoTouchSearchView;->access$400(Lcom/oppo/widget/OppoTouchSearchView;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 392
    :cond_0
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView$1;->this$0:Lcom/oppo/widget/OppoTouchSearchView;

    #getter for: Lcom/oppo/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;
    invoke-static {v4}, Lcom/oppo/widget/OppoTouchSearchView;->access$800(Lcom/oppo/widget/OppoTouchSearchView;)Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView$1;->this$0:Lcom/oppo/widget/OppoTouchSearchView;

    #getter for: Lcom/oppo/widget/OppoTouchSearchView;->surname:Ljava/lang/CharSequence;
    invoke-static {v5}, Lcom/oppo/widget/OppoTouchSearchView;->access$500(Lcom/oppo/widget/OppoTouchSearchView;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;->onNameKey(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView$1;->this$0:Lcom/oppo/widget/OppoTouchSearchView;

    #setter for: Lcom/oppo/widget/OppoTouchSearchView;->curNum:I
    invoke-static {v4, v3}, Lcom/oppo/widget/OppoTouchSearchView;->access$402(Lcom/oppo/widget/OppoTouchSearchView;I)I

    .line 395
    :cond_1
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView$1;->this$0:Lcom/oppo/widget/OppoTouchSearchView;

    invoke-virtual {v4}, Lcom/oppo/widget/OppoTouchSearchView;->startPostDelayed()V

    .line 397
    .end local v3           #wilNum:I
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 398
    .local v0, action:I
    and-int/lit16 v4, v0, 0xff

    packed-switch v4, :pswitch_data_0

    .line 406
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 400
    :pswitch_0
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView$1;->this$0:Lcom/oppo/widget/OppoTouchSearchView;

    #getter for: Lcom/oppo/widget/OppoTouchSearchView;->curNum:I
    invoke-static {v4}, Lcom/oppo/widget/OppoTouchSearchView;->access$400(Lcom/oppo/widget/OppoTouchSearchView;)I

    move-result v4

    if-eq v4, v6, :cond_3

    .line 401
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView$1;->this$0:Lcom/oppo/widget/OppoTouchSearchView;

    #getter for: Lcom/oppo/widget/OppoTouchSearchView;->mTextViewList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/oppo/widget/OppoTouchSearchView;->access$600(Lcom/oppo/widget/OppoTouchSearchView;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView$1;->this$0:Lcom/oppo/widget/OppoTouchSearchView;

    #getter for: Lcom/oppo/widget/OppoTouchSearchView;->curNum:I
    invoke-static {v5}, Lcom/oppo/widget/OppoTouchSearchView;->access$400(Lcom/oppo/widget/OppoTouchSearchView;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 403
    :cond_3
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView$1;->this$0:Lcom/oppo/widget/OppoTouchSearchView;

    #setter for: Lcom/oppo/widget/OppoTouchSearchView;->curNum:I
    invoke-static {v4, v6}, Lcom/oppo/widget/OppoTouchSearchView;->access$402(Lcom/oppo/widget/OppoTouchSearchView;I)I

    goto :goto_0

    .line 398
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
