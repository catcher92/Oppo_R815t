.class Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimationHandler;
.super Landroid/os/Handler;
.source "OppoScreenOffGestureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimationHandler;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    .line 299
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 300
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 304
    invoke-static {}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "------------------ msg.what == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 307
    :pswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimDataInfo;

    iget v1, v4, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimDataInfo;->mMode:I

    .line 308
    .local v1, nMode:I
    new-instance v2, Lcom/oppo/app/OppoSmartWakeImpl;

    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimationHandler;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    #getter for: Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->access$100(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcom/oppo/app/OppoSmartWakeImpl;-><init>(Landroid/content/Context;I)V

    .line 309
    .local v2, smartWakeAnim:Lcom/oppo/app/OppoSmartWakeImpl;
    new-instance v0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimationEndListener;

    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimationHandler;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimationEndListener;-><init>(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$1;)V

    .line 310
    .local v0, animationEnd:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimationEndListener;
    invoke-virtual {v2, v0}, Lcom/oppo/app/OppoSmartWakeImpl;->setOnAnimationEndListener(Lcom/oppo/app/OppoSmartWakeImpl$onAnimationEndListener;)V

    .line 311
    invoke-virtual {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->show()V

    goto :goto_0

    .line 315
    .end local v0           #animationEnd:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimationEndListener;
    .end local v1           #nMode:I
    .end local v2           #smartWakeAnim:Lcom/oppo/app/OppoSmartWakeImpl;
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oppo/app/OppoSmartWakeImpl;

    .line 316
    .local v3, smartWakeImpl:Lcom/oppo/app/OppoSmartWakeImpl;
    invoke-virtual {v3}, Lcom/oppo/app/OppoSmartWakeImpl;->destroy()V

    .line 317
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimationHandler;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    #getter for: Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mSmartWakeBlackView:Lcom/android/internal/policy/impl/OppoSmartWakeView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->access$300(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)Lcom/android/internal/policy/impl/OppoSmartWakeView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 318
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimationHandler;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    #getter for: Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mSmartWakeBlackView:Lcom/android/internal/policy/impl/OppoSmartWakeView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->access$300(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)Lcom/android/internal/policy/impl/OppoSmartWakeView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/OppoSmartWakeView;->hide()V

    goto :goto_0

    .line 323
    .end local v3           #smartWakeImpl:Lcom/oppo/app/OppoSmartWakeImpl;
    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimationHandler;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    #getter for: Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAnimWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->access$400(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0

    .line 327
    :pswitch_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimationHandler;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    #getter for: Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mSmartWakeBlackView:Lcom/android/internal/policy/impl/OppoSmartWakeView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->access$300(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)Lcom/android/internal/policy/impl/OppoSmartWakeView;

    move-result-object v4

    if-nez v4, :cond_1

    .line 328
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimationHandler;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    new-instance v5, Lcom/android/internal/policy/impl/OppoSmartWakeView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimationHandler;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    #getter for: Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->access$100(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/internal/policy/impl/OppoSmartWakeView;-><init>(Landroid/content/Context;I)V

    #setter for: Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mSmartWakeBlackView:Lcom/android/internal/policy/impl/OppoSmartWakeView;
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->access$302(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;Lcom/android/internal/policy/impl/OppoSmartWakeView;)Lcom/android/internal/policy/impl/OppoSmartWakeView;

    .line 330
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimationHandler;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    #getter for: Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mSmartWakeBlackView:Lcom/android/internal/policy/impl/OppoSmartWakeView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->access$300(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)Lcom/android/internal/policy/impl/OppoSmartWakeView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/OppoSmartWakeView;->show()V

    goto :goto_0

    .line 334
    :pswitch_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimationHandler;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    #getter for: Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mSmartWakeBlackView:Lcom/android/internal/policy/impl/OppoSmartWakeView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->access$300(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)Lcom/android/internal/policy/impl/OppoSmartWakeView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 335
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimationHandler;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    #getter for: Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mSmartWakeBlackView:Lcom/android/internal/policy/impl/OppoSmartWakeView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->access$300(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)Lcom/android/internal/policy/impl/OppoSmartWakeView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/OppoSmartWakeView;->hide()V

    goto :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
