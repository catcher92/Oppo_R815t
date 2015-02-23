.class Lcom/android/server/usb/OppoUsbManager$4;
.super Landroid/content/BroadcastReceiver;
.source "OppoUsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/OppoUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/OppoUsbManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/OppoUsbManager;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/server/usb/OppoUsbManager$4;->this$0:Lcom/android/server/usb/OppoUsbManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 202
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, action:Ljava/lang/String;
    const-string v3, "OppoUsbManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUsbSelectionReceiver action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v3, "android.intent.action.ACTION_USB_SELECED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    const-string v3, "UsbSelectedType"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 206
    .local v2, type:I
    iget-object v3, p0, Lcom/android/server/usb/OppoUsbManager$4;->this$0:Lcom/android/server/usb/OppoUsbManager;

    #calls: Lcom/android/server/usb/OppoUsbManager;->handleUsbSelectedStart(I)V
    invoke-static {v3, v2}, Lcom/android/server/usb/OppoUsbManager;->access$600(Lcom/android/server/usb/OppoUsbManager;I)V

    .line 218
    .end local v2           #type:I
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    const-string v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/OppoUsbManager$4;->this$0:Lcom/android/server/usb/OppoUsbManager;

    #getter for: Lcom/android/server/usb/OppoUsbManager;->mProcessing:Z
    invoke-static {v3}, Lcom/android/server/usb/OppoUsbManager;->access$1000(Lcom/android/server/usb/OppoUsbManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    iget-object v3, p0, Lcom/android/server/usb/OppoUsbManager$4;->this$0:Lcom/android/server/usb/OppoUsbManager;

    #getter for: Lcom/android/server/usb/OppoUsbManager;->mStateQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v3}, Lcom/android/server/usb/OppoUsbManager;->access$1100(Lcom/android/server/usb/OppoUsbManager;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 212
    iget-object v3, p0, Lcom/android/server/usb/OppoUsbManager$4;->this$0:Lcom/android/server/usb/OppoUsbManager;

    #getter for: Lcom/android/server/usb/OppoUsbManager;->mStateQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v3}, Lcom/android/server/usb/OppoUsbManager;->access$1100(Lcom/android/server/usb/OppoUsbManager;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, ex:Ljava/lang/InterruptedException;
    const-string v3, "OppoUsbManager"

    const-string v4, "Failed to put response onto queue"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
