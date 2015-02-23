.class Lcom/android/server/usb/OppoUsbManager$3;
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
    .line 180
    iput-object p1, p0, Lcom/android/server/usb/OppoUsbManager$3;->this$0:Lcom/android/server/usb/OppoUsbManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 183
    const-string v1, "plugged"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 184
    .local v0, plugType:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/android/server/usb/OppoUsbManager$3;->this$0:Lcom/android/server/usb/OppoUsbManager;

    const/4 v2, 0x1

    #setter for: Lcom/android/server/usb/OppoUsbManager;->mUsbConnected:Z
    invoke-static {v1, v2}, Lcom/android/server/usb/OppoUsbManager;->access$802(Lcom/android/server/usb/OppoUsbManager;Z)Z

    .line 189
    :goto_0
    iget-object v1, p0, Lcom/android/server/usb/OppoUsbManager$3;->this$0:Lcom/android/server/usb/OppoUsbManager;

    #getter for: Lcom/android/server/usb/OppoUsbManager;->mUsbConnected:Z
    invoke-static {v1}, Lcom/android/server/usb/OppoUsbManager;->access$800(Lcom/android/server/usb/OppoUsbManager;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/usb/OppoUsbManager$3;->this$0:Lcom/android/server/usb/OppoUsbManager;

    #getter for: Lcom/android/server/usb/OppoUsbManager;->LastPlugUsbType:Z
    invoke-static {v2}, Lcom/android/server/usb/OppoUsbManager;->access$900(Lcom/android/server/usb/OppoUsbManager;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 190
    iget-object v1, p0, Lcom/android/server/usb/OppoUsbManager$3;->this$0:Lcom/android/server/usb/OppoUsbManager;

    iget-object v2, p0, Lcom/android/server/usb/OppoUsbManager$3;->this$0:Lcom/android/server/usb/OppoUsbManager;

    #getter for: Lcom/android/server/usb/OppoUsbManager;->mUsbConnected:Z
    invoke-static {v2}, Lcom/android/server/usb/OppoUsbManager;->access$800(Lcom/android/server/usb/OppoUsbManager;)Z

    move-result v2

    #setter for: Lcom/android/server/usb/OppoUsbManager;->LastPlugUsbType:Z
    invoke-static {v1, v2}, Lcom/android/server/usb/OppoUsbManager;->access$902(Lcom/android/server/usb/OppoUsbManager;Z)Z

    .line 191
    const-string v1, "OppoUsbManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1.UsbPlugType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/OppoUsbManager$3;->this$0:Lcom/android/server/usb/OppoUsbManager;

    #getter for: Lcom/android/server/usb/OppoUsbManager;->mUsbConnected:Z
    invoke-static {v3}, Lcom/android/server/usb/OppoUsbManager;->access$800(Lcom/android/server/usb/OppoUsbManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v1, p0, Lcom/android/server/usb/OppoUsbManager$3;->this$0:Lcom/android/server/usb/OppoUsbManager;

    #calls: Lcom/android/server/usb/OppoUsbManager;->startUsbSelectionActivity()V
    invoke-static {v1}, Lcom/android/server/usb/OppoUsbManager;->access$700(Lcom/android/server/usb/OppoUsbManager;)V

    .line 194
    :cond_0
    return-void

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/android/server/usb/OppoUsbManager$3;->this$0:Lcom/android/server/usb/OppoUsbManager;

    #setter for: Lcom/android/server/usb/OppoUsbManager;->mUsbConnected:Z
    invoke-static {v1, v2}, Lcom/android/server/usb/OppoUsbManager;->access$802(Lcom/android/server/usb/OppoUsbManager;Z)Z

    goto :goto_0
.end method
