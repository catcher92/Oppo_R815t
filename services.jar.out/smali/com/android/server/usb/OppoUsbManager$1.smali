.class Lcom/android/server/usb/OppoUsbManager$1;
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
    .line 144
    iput-object p1, p0, Lcom/android/server/usb/OppoUsbManager$1;->this$0:Lcom/android/server/usb/OppoUsbManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 146
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, action:Ljava/lang/String;
    const-string v1, "OppoUsbManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive intent.action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    const-string v1, "OppoUsbManager"

    const-string v2, "BOOT_COMPLETED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, p0, Lcom/android/server/usb/OppoUsbManager$1;->this$0:Lcom/android/server/usb/OppoUsbManager;

    #getter for: Lcom/android/server/usb/OppoUsbManager;->mBootHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/usb/OppoUsbManager;->access$000(Lcom/android/server/usb/OppoUsbManager;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    const-string v1, "OppoUsbManager"

    const-string v2, "ACTION_SHUTDOWN_IPO"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v1, p0, Lcom/android/server/usb/OppoUsbManager$1;->this$0:Lcom/android/server/usb/OppoUsbManager;

    const/4 v2, 0x1

    #setter for: Lcom/android/server/usb/OppoUsbManager;->IsShutdownIpo:Z
    invoke-static {v1, v2}, Lcom/android/server/usb/OppoUsbManager;->access$102(Lcom/android/server/usb/OppoUsbManager;Z)Z

    .line 154
    iget-object v1, p0, Lcom/android/server/usb/OppoUsbManager$1;->this$0:Lcom/android/server/usb/OppoUsbManager;

    #setter for: Lcom/android/server/usb/OppoUsbManager;->bootComplete:Z
    invoke-static {v1, v4}, Lcom/android/server/usb/OppoUsbManager;->access$202(Lcom/android/server/usb/OppoUsbManager;Z)Z

    goto :goto_0

    .line 155
    :cond_2
    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    const-string v1, "OppoUsbManager"

    const-string v2, "android.intent.action.ACTION_BOOT_IPO"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v1, p0, Lcom/android/server/usb/OppoUsbManager$1;->this$0:Lcom/android/server/usb/OppoUsbManager;

    #getter for: Lcom/android/server/usb/OppoUsbManager;->mBootHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/usb/OppoUsbManager;->access$000(Lcom/android/server/usb/OppoUsbManager;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
