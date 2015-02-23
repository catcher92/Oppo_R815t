.class Lcom/android/server/usb/OppoUsbManager$5;
.super Ljava/util/TimerTask;
.source "OppoUsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/OppoUsbManager;->startInterruptTimer()V
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
    .line 389
    iput-object p1, p0, Lcom/android/server/usb/OppoUsbManager$5;->this$0:Lcom/android/server/usb/OppoUsbManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 391
    iget-object v0, p0, Lcom/android/server/usb/OppoUsbManager$5;->this$0:Lcom/android/server/usb/OppoUsbManager;

    #getter for: Lcom/android/server/usb/OppoUsbManager;->mUsbSelectionThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/server/usb/OppoUsbManager;->access$1300(Lcom/android/server/usb/OppoUsbManager;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    const-string v0, "OppoUsbManager"

    const-string v1, "13.1 interrupt task"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/android/server/usb/OppoUsbManager$5;->this$0:Lcom/android/server/usb/OppoUsbManager;

    #setter for: Lcom/android/server/usb/OppoUsbManager;->mProcessing:Z
    invoke-static {v0, v2}, Lcom/android/server/usb/OppoUsbManager;->access$1002(Lcom/android/server/usb/OppoUsbManager;Z)Z

    .line 395
    iget-object v0, p0, Lcom/android/server/usb/OppoUsbManager$5;->this$0:Lcom/android/server/usb/OppoUsbManager;

    #setter for: Lcom/android/server/usb/OppoUsbManager;->mUmsProcessing:Z
    invoke-static {v0, v2}, Lcom/android/server/usb/OppoUsbManager;->access$1402(Lcom/android/server/usb/OppoUsbManager;Z)Z

    .line 396
    iget-object v0, p0, Lcom/android/server/usb/OppoUsbManager$5;->this$0:Lcom/android/server/usb/OppoUsbManager;

    #getter for: Lcom/android/server/usb/OppoUsbManager;->mUsbSelectionThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/server/usb/OppoUsbManager;->access$1300(Lcom/android/server/usb/OppoUsbManager;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 398
    :cond_0
    return-void
.end method
