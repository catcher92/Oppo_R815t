.class Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$2;
.super Landroid/content/BroadcastReceiver;
.source "OppoScreenOffGestureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)V
    .locals 0
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$2;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 403
    invoke-static {}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mScreenOffBroadcastReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$2;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    #getter for: Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAnimHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->access$700(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$2;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    #getter for: Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAnimHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->access$700(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x7d4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 405
    return-void
.end method
