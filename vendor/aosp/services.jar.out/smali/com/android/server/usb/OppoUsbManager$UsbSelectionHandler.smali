.class Lcom/android/server/usb/OppoUsbManager$UsbSelectionHandler;
.super Landroid/os/Handler;
.source "OppoUsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/OppoUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbSelectionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/OppoUsbManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/OppoUsbManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "loop"

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/server/usb/OppoUsbManager$UsbSelectionHandler;->this$0:Lcom/android/server/usb/OppoUsbManager;

    .line 333
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 334
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 338
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 346
    :goto_0
    return-void

    .line 340
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/usb/OppoUsbManager$UsbSelectionHandler;->this$0:Lcom/android/server/usb/OppoUsbManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/server/usb/OppoUsbManager;->handleUsbSelected(I)V
    invoke-static {v0, v1}, Lcom/android/server/usb/OppoUsbManager;->access$1200(Lcom/android/server/usb/OppoUsbManager;I)V

    goto :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
