.class Lcom/android/server/usb/OppoUsbManager$2;
.super Landroid/os/Handler;
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
    .line 163
    iput-object p1, p0, Lcom/android/server/usb/OppoUsbManager$2;->this$0:Lcom/android/server/usb/OppoUsbManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 166
    const-string v1, "OppoUsbManager"

    const-string v2, "bootcomplete:hand after 3s---bootIPO:hand after 2s"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v1, p0, Lcom/android/server/usb/OppoUsbManager$2;->this$0:Lcom/android/server/usb/OppoUsbManager;

    #getter for: Lcom/android/server/usb/OppoUsbManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/usb/OppoUsbManager;->access$300(Lcom/android/server/usb/OppoUsbManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 168
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/usb/OppoUsbManager$2;->this$0:Lcom/android/server/usb/OppoUsbManager;

    #setter for: Lcom/android/server/usb/OppoUsbManager;->IsShutdownIpo:Z
    invoke-static {v1, v3}, Lcom/android/server/usb/OppoUsbManager;->access$102(Lcom/android/server/usb/OppoUsbManager;Z)Z

    .line 169
    iget-object v1, p0, Lcom/android/server/usb/OppoUsbManager$2;->this$0:Lcom/android/server/usb/OppoUsbManager;

    #setter for: Lcom/android/server/usb/OppoUsbManager;->bootComplete:Z
    invoke-static {v1, v4}, Lcom/android/server/usb/OppoUsbManager;->access$202(Lcom/android/server/usb/OppoUsbManager;Z)Z

    .line 170
    iget-object v1, p0, Lcom/android/server/usb/OppoUsbManager$2;->this$0:Lcom/android/server/usb/OppoUsbManager;

    #setter for: Lcom/android/server/usb/OppoUsbManager;->usbFlag:I
    invoke-static {v1, v4}, Lcom/android/server/usb/OppoUsbManager;->access$402(Lcom/android/server/usb/OppoUsbManager;I)I

    .line 171
    iget-object v1, p0, Lcom/android/server/usb/OppoUsbManager$2;->this$0:Lcom/android/server/usb/OppoUsbManager;

    const/4 v2, -0x1

    #setter for: Lcom/android/server/usb/OppoUsbManager;->mUsbSelected:I
    invoke-static {v1, v2}, Lcom/android/server/usb/OppoUsbManager;->access$502(Lcom/android/server/usb/OppoUsbManager;I)I

    .line 172
    const-string v1, "usb_no_ask_again"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/server/usb/OppoUsbManager$2;->this$0:Lcom/android/server/usb/OppoUsbManager;

    #calls: Lcom/android/server/usb/OppoUsbManager;->handleUsbSelectedStart(I)V
    invoke-static {v1, v3}, Lcom/android/server/usb/OppoUsbManager;->access$600(Lcom/android/server/usb/OppoUsbManager;I)V

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/android/server/usb/OppoUsbManager$2;->this$0:Lcom/android/server/usb/OppoUsbManager;

    #calls: Lcom/android/server/usb/OppoUsbManager;->startUsbSelectionActivity()V
    invoke-static {v1}, Lcom/android/server/usb/OppoUsbManager;->access$700(Lcom/android/server/usb/OppoUsbManager;)V

    .line 176
    return-void
.end method
