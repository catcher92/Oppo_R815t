.class Lcom/oppo/widget/Oppo3DSeatView$1;
.super Landroid/os/Handler;
.source "Oppo3DSeatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/Oppo3DSeatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/Oppo3DSeatView;


# direct methods
.method constructor <init>(Lcom/oppo/widget/Oppo3DSeatView;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/16 v6, 0x68

    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, tempMsg:Landroid/os/Message;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 136
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 85
    :pswitch_0
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    iget-object v2, v2, Lcom/oppo/widget/Oppo3DSeatView;->mBookEffect:Lcom/oppo/model/ms4d/OppoSeatEffect;

    iget v3, p1, Landroid/os/Message;->arg1:I

    int-to-float v3, v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/oppo/model/ms4d/OppoSeatEffect;->fliping(FF)V

    .line 86
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    #calls: Lcom/oppo/widget/Oppo3DSeatView;->invalidateView()V
    invoke-static {v2}, Lcom/oppo/widget/Oppo3DSeatView;->access$000(Lcom/oppo/widget/Oppo3DSeatView;)V

    goto :goto_0

    .line 90
    :pswitch_1
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    iget-object v3, v3, Lcom/oppo/widget/Oppo3DSeatView;->mBookEffect:Lcom/oppo/model/ms4d/OppoSeatEffect;

    iget-object v4, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4, v5}, Lcom/oppo/model/ms4d/OppoSeatEffect;->startBackAnimation(Landroid/content/Context;I)Z

    move-result v3

    #setter for: Lcom/oppo/widget/Oppo3DSeatView;->mIsTurnPage:Z
    invoke-static {v2, v3}, Lcom/oppo/widget/Oppo3DSeatView;->access$102(Lcom/oppo/widget/Oppo3DSeatView;Z)Z

    .line 91
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    #getter for: Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/oppo/widget/Oppo3DSeatView;->access$200(Lcom/oppo/widget/Oppo3DSeatView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    #getter for: Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/oppo/widget/Oppo3DSeatView;->access$200(Lcom/oppo/widget/Oppo3DSeatView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 96
    :pswitch_2
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    iget-object v3, v3, Lcom/oppo/widget/Oppo3DSeatView;->mBookEffect:Lcom/oppo/model/ms4d/OppoSeatEffect;

    iget-object v4, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4, v5}, Lcom/oppo/model/ms4d/OppoSeatEffect;->startAnimation(Landroid/content/Context;I)Z

    move-result v3

    #setter for: Lcom/oppo/widget/Oppo3DSeatView;->mIsTurnPage:Z
    invoke-static {v2, v3}, Lcom/oppo/widget/Oppo3DSeatView;->access$102(Lcom/oppo/widget/Oppo3DSeatView;Z)Z

    .line 97
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    #getter for: Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/oppo/widget/Oppo3DSeatView;->access$200(Lcom/oppo/widget/Oppo3DSeatView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    #getter for: Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/oppo/widget/Oppo3DSeatView;->access$200(Lcom/oppo/widget/Oppo3DSeatView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 102
    :pswitch_3
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    iget-object v2, v2, Lcom/oppo/widget/Oppo3DSeatView;->mBookEffect:Lcom/oppo/model/ms4d/OppoSeatEffect;

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Lcom/oppo/model/ms4d/OppoSeatEffect;->startNextAnimation(Landroid/content/Context;I)V

    .line 103
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    #getter for: Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/oppo/widget/Oppo3DSeatView;->access$200(Lcom/oppo/widget/Oppo3DSeatView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 104
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    #getter for: Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/oppo/widget/Oppo3DSeatView;->access$200(Lcom/oppo/widget/Oppo3DSeatView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 108
    :pswitch_4
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    iget-object v2, v2, Lcom/oppo/widget/Oppo3DSeatView;->mBookEffect:Lcom/oppo/model/ms4d/OppoSeatEffect;

    invoke-virtual {v2}, Lcom/oppo/model/ms4d/OppoSeatEffect;->isAnimation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    iget-object v2, v2, Lcom/oppo/widget/Oppo3DSeatView;->mBookEffect:Lcom/oppo/model/ms4d/OppoSeatEffect;

    invoke-virtual {v2}, Lcom/oppo/model/ms4d/OppoSeatEffect;->doAnimation()Z

    .line 110
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    #calls: Lcom/oppo/widget/Oppo3DSeatView;->invalidateView()V
    invoke-static {v2}, Lcom/oppo/widget/Oppo3DSeatView;->access$000(Lcom/oppo/widget/Oppo3DSeatView;)V

    .line 112
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    #getter for: Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/oppo/widget/Oppo3DSeatView;->access$200(Lcom/oppo/widget/Oppo3DSeatView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 113
    .local v0, msg1:Landroid/os/Message;
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    #getter for: Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/oppo/widget/Oppo3DSeatView;->access$200(Lcom/oppo/widget/Oppo3DSeatView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 115
    .end local v0           #msg1:Landroid/os/Message;
    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    #getter for: Lcom/oppo/widget/Oppo3DSeatView;->mOppoBookViewCallBack:Lcom/oppo/widget/Oppo3DSeatView$OppoBookViewCallBack;
    invoke-static {v2}, Lcom/oppo/widget/Oppo3DSeatView;->access$300(Lcom/oppo/widget/Oppo3DSeatView;)Lcom/oppo/widget/Oppo3DSeatView$OppoBookViewCallBack;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    #getter for: Lcom/oppo/widget/Oppo3DSeatView;->abortFlag:Z
    invoke-static {v2}, Lcom/oppo/widget/Oppo3DSeatView;->access$400(Lcom/oppo/widget/Oppo3DSeatView;)Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    #getter for: Lcom/oppo/widget/Oppo3DSeatView;->mIsAttachedToWindow:Z
    invoke-static {v2}, Lcom/oppo/widget/Oppo3DSeatView;->access$500(Lcom/oppo/widget/Oppo3DSeatView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    #getter for: Lcom/oppo/widget/Oppo3DSeatView;->mIsSurfaceDestroyed:Z
    invoke-static {v2}, Lcom/oppo/widget/Oppo3DSeatView;->access$600(Lcom/oppo/widget/Oppo3DSeatView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    #getter for: Lcom/oppo/widget/Oppo3DSeatView;->mOppoBookViewCallBack:Lcom/oppo/widget/Oppo3DSeatView$OppoBookViewCallBack;
    invoke-static {v2}, Lcom/oppo/widget/Oppo3DSeatView;->access$300(Lcom/oppo/widget/Oppo3DSeatView;)Lcom/oppo/widget/Oppo3DSeatView$OppoBookViewCallBack;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    #getter for: Lcom/oppo/widget/Oppo3DSeatView;->mIsTurnPage:Z
    invoke-static {v3}, Lcom/oppo/widget/Oppo3DSeatView;->access$100(Lcom/oppo/widget/Oppo3DSeatView;)Z

    move-result v3

    iget-object v4, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    #getter for: Lcom/oppo/widget/Oppo3DSeatView;->abortFlag:Z
    invoke-static {v4}, Lcom/oppo/widget/Oppo3DSeatView;->access$400(Lcom/oppo/widget/Oppo3DSeatView;)Z

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/oppo/widget/Oppo3DSeatView$OppoBookViewCallBack;->endFilp(ZZ)V

    .line 118
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    const/4 v3, 0x0

    #setter for: Lcom/oppo/widget/Oppo3DSeatView;->mIsTurnPage:Z
    invoke-static {v2, v3}, Lcom/oppo/widget/Oppo3DSeatView;->access$102(Lcom/oppo/widget/Oppo3DSeatView;Z)Z

    goto/16 :goto_0

    .line 124
    :pswitch_5
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    iget-object v2, v2, Lcom/oppo/widget/Oppo3DSeatView;->mBookEffect:Lcom/oppo/model/ms4d/OppoSeatEffect;

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Lcom/oppo/model/ms4d/OppoSeatEffect;->startLastAnimation(Landroid/content/Context;I)V

    .line 125
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    #getter for: Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/oppo/widget/Oppo3DSeatView;->access$200(Lcom/oppo/widget/Oppo3DSeatView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 126
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    #getter for: Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/oppo/widget/Oppo3DSeatView;->access$200(Lcom/oppo/widget/Oppo3DSeatView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 130
    :pswitch_6
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    iget-object v3, v3, Lcom/oppo/widget/Oppo3DSeatView;->mBookEffect:Lcom/oppo/model/ms4d/OppoSeatEffect;

    iget-object v4, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oppo/model/ms4d/OppoSeatEffect;->startUpAnimation(Landroid/content/Context;)Z

    move-result v3

    #setter for: Lcom/oppo/widget/Oppo3DSeatView;->mIsTurnPage:Z
    invoke-static {v2, v3}, Lcom/oppo/widget/Oppo3DSeatView;->access$102(Lcom/oppo/widget/Oppo3DSeatView;Z)Z

    .line 131
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    #getter for: Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/oppo/widget/Oppo3DSeatView;->access$200(Lcom/oppo/widget/Oppo3DSeatView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 132
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DSeatView$1;->this$0:Lcom/oppo/widget/Oppo3DSeatView;

    #getter for: Lcom/oppo/widget/Oppo3DSeatView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/oppo/widget/Oppo3DSeatView;->access$200(Lcom/oppo/widget/Oppo3DSeatView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method
