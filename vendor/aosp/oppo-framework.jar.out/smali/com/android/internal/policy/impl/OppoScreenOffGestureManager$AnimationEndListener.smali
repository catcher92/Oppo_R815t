.class Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimationEndListener;
.super Ljava/lang/Object;
.source "OppoScreenOffGestureManager.java"

# interfaces
.implements Lcom/oppo/app/OppoSmartWakeImpl$onAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationEndListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimationEndListener;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimationEndListener;-><init>(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/oppo/app/OppoSmartWakeImpl;)V
    .locals 4
    .parameter "smartWakeImpl"

    .prologue
    const/16 v3, 0x7d1

    .line 357
    invoke-static {}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------------------ mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oppo/app/OppoSmartWakeImpl;->getMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {p1}, Lcom/oppo/app/OppoSmartWakeImpl;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/oppo/app/OppoSmartWakeImpl;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 360
    invoke-static {}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsPhoneShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimationEndListener;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    #getter for: Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mIsPhoneShow:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->access$500(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimationEndListener;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    #getter for: Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mIsPhoneShow:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->access$500(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimationEndListener;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    #getter for: Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->access$600(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimationEndListener;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mIsPhoneShow:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->access$502(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;Z)Z

    .line 366
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimationEndListener;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    #getter for: Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAnimHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->access$700(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimationEndListener;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    #getter for: Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAnimHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->access$700(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 372
    :goto_0
    return-void

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimationEndListener;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    #getter for: Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAnimHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->access$700(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimationEndListener;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    #getter for: Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAnimHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->access$700(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
